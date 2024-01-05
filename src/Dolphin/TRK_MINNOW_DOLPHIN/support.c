#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "Dolphin/print.h"
/**
 * @note Address: 0x800BDAE8
 * @note Size: 0x220
 */
DSError TRKSuppAccessFile(u32 file_handle, u8* data, size_t* count, DSIOResult* io_result, BOOL need_reply, BOOL read)
{
	CommandReply reply;
	int error;
	int replyBufferId;
	int bufferId;
	BOOL exit;
	int i;
	u32 length;
	u32 replyLength;
	u8 replyIOResult;
	MessageBuffer* replyBuffer;
	MessageBuffer* buffer;

	if (!data || !*count) {
		return DS_ParameterError;
	}

	*io_result = DS_IONoError;
	exit = FALSE;
	error = DS_NoError;
	length = 0;
	
	for (i = 0; !exit && i < *count && !error && !*io_result; i += length) {
		memset(&reply, 0, sizeof(CommandReply));

		length = MIN(0x800, *count - i);

		reply.commandID.b = read ? DSMSG_ReadFile : DSMSG_WriteFile;

		if (read) {
			reply._00 = 0x40;
		} else {
			reply._00 = 0x40 + length;
		}

		reply.replyError.r = file_handle;
		*(u16*)&reply._0C  = length;

		TRKGetFreeBuffer(&bufferId, &buffer);
		error = TRKAppendBuffer_ui8(buffer, (u8*)&reply, sizeof(reply));

		if (!read && !error) {
			error = TRKAppendBuffer_ui8(buffer, data + i, length);
		}

		if (!error) {
			if (need_reply) {
				error = TRKRequestSend(buffer, &replyBufferId, read ? 5 : 5, 3, !(read && (file_handle == 0)));
				if (error == DS_NoError) {
					replyBuffer = (MessageBuffer*)TRKGetBuffer(replyBufferId);
				}
				
				replyIOResult = *(u32*)(replyBuffer->data + 0x10);
				replyLength   = *(u16*)(replyBuffer->data + 0x14);

				if (read && !error && replyLength <= length) {
					TRKSetBufferPosition(replyBuffer, sizeof(reply));
					error = TRKReadBuffer_ui8(replyBuffer, data + i, replyLength);
					if (error == DS_MessageBufferReadError) {
						error = DS_NoError;
					}
				}

				if (replyLength != length) {
					length = replyLength;
					exit   = TRUE;
				}

				*io_result = replyIOResult;
				TRKReleaseBuffer(replyBufferId);
			} else {
				error = TRKMessageSend(buffer);
			}
		}

		TRKReleaseBuffer(bufferId);
	}

	*count = i;
	return error;

	/*
	.loc_0x0:
	  stwu      r1, -0x90(r1)
	  mflr      r0
	  stw       r0, 0x94(r1)
	  stmw      r19, 0x5C(r1)
	  mr.       r24, r4
	  mr        r23, r3
	  mr        r25, r5
	  mr        r26, r6
	  mr        r27, r7
	  mr        r28, r8
	  beq-      .loc_0x38
	  lwz       r0, 0x0(r25)
	  cmplwi    r0, 0
	  bne-      .loc_0x40

	.loc_0x38:
	  li        r3, 0x2
	  b         .loc_0x20C

	.loc_0x40:
	  li        r0, 0
	  li        r29, 0
	  stw       r0, 0x0(r26)
	  li        r30, 0
	  li        r21, 0
	  b         .loc_0x1DC

	.loc_0x58:
	  addi      r3, r1, 0x14
	  li        r4, 0
	  li        r5, 0x40
	  bl        -0xB8A98
	  lwz       r0, 0x0(r25)
	  li        r3, 0x800
	  sub       r0, r0, r30
	  cmplwi    r0, 0x800
	  bgt-      .loc_0x80
	  mr        r3, r0

	.loc_0x80:
	  cmpwi     r28, 0
	  mr        r31, r3
	  li        r0, 0xD0
	  beq-      .loc_0x94
	  li        r0, 0xD1

	.loc_0x94:
	  cmpwi     r28, 0
	  stb       r0, 0x18(r1)
	  li        r0, 0x40
	  bne-      .loc_0xA8
	  addi      r0, r31, 0x40

	.loc_0xA8:
	  stw       r0, 0x14(r1)
	  addi      r3, r1, 0xC
	  addi      r4, r1, 0x8
	  stw       r23, 0x1C(r1)
	  sth       r31, 0x20(r1)
	  bl        -0x1C18
	  lwz       r3, 0x8(r1)
	  addi      r4, r1, 0x14
	  li        r5, 0x40
	  bl        -0x1FBC
	  cmpwi     r28, 0
	  mr        r21, r3
	  bne-      .loc_0xF8
	  cmpwi     r21, 0
	  bne-      .loc_0xF8
	  lwz       r3, 0x8(r1)
	  mr        r5, r31
	  add       r4, r24, r30
	  bl        -0x1FE0
	  mr        r21, r3

	.loc_0xF8:
	  cmpwi     r21, 0
	  bne-      .loc_0x1D0
	  cmpwi     r27, 0
	  beq-      .loc_0x1C4
	  cmpwi     r28, 0
	  li        r0, 0
	  beq-      .loc_0x120
	  cmplwi    r23, 0
	  bne-      .loc_0x120
	  li        r0, 0x1

	.loc_0x120:
	  cmpwi     r28, 0
	  lwz       r3, 0x8(r1)
	  addi      r4, r1, 0x10
	  li        r5, 0x5
	  cntlzw    r0, r0
	  li        r6, 0x3
	  rlwinm    r7,r0,27,5,31
	  bl        -0x31C
	  mr.       r21, r3
	  bne-      .loc_0x154
	  lwz       r3, 0x10(r1)
	  bl        -0x1CD4
	  mr        r22, r3

	.loc_0x154:
	  lwz       r0, 0x20(r22)
	  cmpwi     r28, 0
	  lhz       r19, 0x24(r22)
	  rlwinm    r20,r0,0,24,31
	  beq-      .loc_0x1A4
	  cmpwi     r21, 0
	  bne-      .loc_0x1A4
	  cmplw     r19, r31
	  bgt-      .loc_0x1A4
	  mr        r3, r22
	  li        r4, 0x40
	  bl        -0x1DDC
	  mr        r3, r22
	  mr        r5, r19
	  add       r4, r24, r30
	  bl        -0x22FC
	  mr        r21, r3
	  cmpwi     r21, 0x302
	  bne-      .loc_0x1A4
	  li        r21, 0

	.loc_0x1A4:
	  cmplw     r19, r31
	  beq-      .loc_0x1B4
	  mr        r31, r19
	  li        r29, 0x1

	.loc_0x1B4:
	  stw       r20, 0x0(r26)
	  lwz       r3, 0x10(r1)
	  bl        -0x1DA8
	  b         .loc_0x1D0

	.loc_0x1C4:
	  lwz       r3, 0x8(r1)
	  bl        -0x2468
	  mr        r21, r3

	.loc_0x1D0:
	  lwz       r3, 0xC(r1)
	  bl        -0x1DC0
	  add       r30, r30, r31

	.loc_0x1DC:
	  cmpwi     r29, 0
	  bne-      .loc_0x204
	  lwz       r0, 0x0(r25)
	  cmplw     r30, r0
	  bge-      .loc_0x204
	  cmpwi     r21, 0
	  bne-      .loc_0x204
	  lwz       r0, 0x0(r26)
	  cmpwi     r0, 0
	  beq+      .loc_0x58

	.loc_0x204:
	  stw       r30, 0x0(r25)
	  mr        r3, r21

	.loc_0x20C:
	  lmw       r19, 0x5C(r1)
	  lwz       r0, 0x94(r1)
	  mtlr      r0
	  addi      r1, r1, 0x90
	  blr
	*/
}

/**
 * @note Address: 0x800BD908
 * @note Size: 0x1E0
 */
DSError TRKRequestSend(MessageBuffer* msgBuf, int* bufferId, u32 p1, u32 p2, int p3)
{
	int error = DS_NoError;
	MessageBuffer* buffer;
	u32 counter;
	int count;
	u8 msgCmd;
	int msgReplyError;
	BOOL badReply = TRUE;
    
	*bufferId = -1;

	for (count = p2 + 1; count != 0 && *bufferId == -1 && error == DS_NoError; count--) {
		MWTRACE(1, "Calling MessageSend\n");
		error = TRKMessageSend(msgBuf);
		if (error == DS_NoError) {

			if (p3) {
				counter = 0;
			}

			while (TRUE) {
				do {
					*bufferId = TRKTestForPacket();
					if (*bufferId != -1)
						break;
				} while (!p3 || ++counter < 79999980);

				if (*bufferId == -1)
					break;

				badReply = 0;

				buffer = TRKGetBuffer(*bufferId);
				TRKSetBufferPosition(buffer, 0);
				OutputData(&buffer->data[0], buffer->length);
				msgCmd = buffer->data[4];
				MWTRACE(1, "msg_command : 0x%02x hdr->cmdID 0x%02x\n", msgCmd, msgCmd);

				if (msgCmd >= DSMSG_ReplyACK)
					break;

				TRKProcessInput(*bufferId);
				*bufferId = -1;
			}

			if (*bufferId != -1) {
				if (buffer->length < 0x40) {
					// OSReport("MetroTRK - bad reply size %ld\n", buffer->length);
					badReply = TRUE;
				}
				if (error == DS_NoError && !badReply) {
					msgReplyError = buffer->data[8];
					MWTRACE(1, "msg_error : 0x%02x\n", msgReplyError);
				}
				if (error == DS_NoError && !badReply) {
					if ((int)msgCmd != DSMSG_ReplyACK || msgReplyError != DSREPLY_NoError) {
						MWTRACE(8, "RequestSend : Bad ack or non ack received msg_command : 0x%02x msg_error 0x%02x\n", msgCmd,
						        msgReplyError);
						badReply = TRUE;
					}
				}
				if (error != DS_NoError || badReply) {
					TRKReleaseBuffer(*bufferId);
					*bufferId = -1;
				}
			}
		}
	}

	if (*bufferId == -1) {
		error = DS_Error800;
	}

	return error;
}


/**
 * @note Address: 0x800BD7EC
 * @note Size: 0x11C
 */
DSError HandleOpenFileSupportRequest(const char* path, u8 replyError, u32* param_3, DSIOResult* ioResult)
{
	DSError error;
	int bufferId2;
	int bufferId1;
	MessageBuffer* tempBuffer;
	MessageBuffer* buffer;
	CommandReply reply;

	memset(&reply, 0, sizeof(CommandReply));
	*param_3           = 0;
	reply.commandID.b  = DSMSG_OpenFile;
	reply._00          = strlen(path) + 0x40 + 1;
	reply.replyError.b = replyError;
	*(u16*)&reply._0C  = strlen(path) + 1;
	TRKGetFreeBuffer(&bufferId1, &buffer);
	error = TRKAppendBuffer_ui8(buffer, (u8*)&reply, 0x40);

	if (error == DS_NoError) {
		error = TRKAppendBuffer_ui8(buffer, (u8*)path, strlen(path) + 1);
	}

	if (error == DS_NoError) {
		*ioResult = DS_IONoError;
		error     = TRKRequestSend(buffer, &bufferId2, 7, 3, 0);

		if (error == DS_NoError) {
			tempBuffer = TRKGetBuffer(bufferId2);
		}

		*ioResult = *(u32*)(tempBuffer->data + 0x10);
		*param_3  = *(u32*)(tempBuffer->data + 0x8);
		TRKReleaseBuffer(bufferId2);
	}
	TRKReleaseBuffer(bufferId1);
	return error;
}

/**
 * @note Address: 0x800BD704
 * @note Size: 0xE8
 */
DSError HandleCloseFileSupportRequest(int replyError, DSIOResult* ioResult)
{
	DSError error;
	int replyBufferId;
	int bufferId;
	MessageBuffer* buffer1;
	MessageBuffer* buffer2;
	CommandReply reply;

	memset(&reply, 0, sizeof(CommandReply));
	reply.commandID.b  = DSMSG_CloseFile;
	reply._00          = 0x40;
	reply.replyError.r = replyError;
	error              = TRKGetFreeBuffer(&bufferId, &buffer1);

	if (error == DS_NoError) {
		error = TRKAppendBuffer_ui8(buffer1, (u8*)&reply, sizeof(CommandReply));
	}

	if (error == DS_NoError) {
		*ioResult = DS_IONoError;
		error     = TRKRequestSend(buffer1, &replyBufferId, 3, 3, 0);

		if (error == DS_NoError) {
			buffer2 = TRKGetBuffer(replyBufferId);
		}

		if (error == DS_NoError) {
			*ioResult = *(u32*)(buffer2->data + 0x10);
		}

		TRKReleaseBuffer(replyBufferId);
	}

	TRKReleaseBuffer(bufferId);
	return error;
}

/**
 * @note Address: 0x800BD5F4
 * @note Size: 0x110
 */
DSError HandlePositionFileSupportRequest(DSReplyError replyErr, u32* param_2, u8 param_3, DSIOResult* ioResult)
{
	DSError error;
	int bufferId2;
	int bufferId1;
	MessageBuffer* buffer1;
	MessageBuffer* buffer2;
	CommandReply reply;

	memset(&reply, 0, sizeof(CommandReply));
	reply.commandID.b  = DSMSG_PositionFile;
	reply._00          = 0x40;
	reply.replyError.r = replyErr;
	reply._0C          = *param_2;
	reply._10[0]       = param_3;
	error              = TRKGetFreeBuffer(&bufferId1, &buffer1);

	if (error == DS_NoError) {
		error = TRKAppendBuffer_ui8(buffer1, (u8*)&reply, sizeof(CommandReply));
	}

	if (error == DS_NoError) {
		*ioResult = DS_IONoError;
		*param_2  = -1;
		error     = TRKRequestSend(buffer1, &bufferId2, 3, 3, 0);

		if (error == DS_NoError) {
			buffer2 = TRKGetBuffer(bufferId2);

			if (buffer2 != nullptr) {
				*ioResult = *(u32*)(buffer2->data + 0x10);
				*param_2  = *(u32*)(buffer2->data + 0x18);
			}
		}

		TRKReleaseBuffer(bufferId2);
	}

	TRKReleaseBuffer(bufferId1);
	return error;
}
