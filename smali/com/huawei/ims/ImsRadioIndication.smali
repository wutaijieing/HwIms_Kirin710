.class public Lcom/huawei/ims/ImsRadioIndication;
.super Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;
.source "ImsRadioIndication.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsRadioIndication"

.field private static final SRVSTATUS_LEN:I = 0x4


# instance fields
.field private START_LOCAL_HOLD_TONE:I

.field mRil:Lcom/huawei/ims/ImsRIL;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsRIL;)V
    .locals 1
    .param p1, "ril"    # Lcom/huawei/ims/ImsRIL;

    .line 46
    invoke-direct {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/ImsRadioIndication;->START_LOCAL_HOLD_TONE:I

    .line 47
    iput-object p1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    .line 48
    return-void
.end method


# virtual methods
.method public UnsolMsg(IILvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;)V
    .locals 3
    .param p1, "indicationType"    # I
    .param p2, "msgId"    # I
    .param p3, "payload"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;

    .line 271
    const-string v0, "ImsRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnsolMsg:indicationType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/16 v0, 0x7ef

    if-eq p2, v0, :cond_6

    const/16 v0, 0x7f1

    if-eq p2, v0, :cond_5

    const/16 v0, 0x7f7

    if-eq p2, v0, :cond_4

    const/16 v0, 0x80a

    if-eq p2, v0, :cond_3

    const/16 v0, 0x818

    if-eq p2, v0, :cond_2

    const/16 v0, 0x81a

    if-eq p2, v0, :cond_1

    const/16 v0, 0x823

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 294
    :pswitch_0
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsLteRrcInfo(ILjava/util/ArrayList;)V

    .line 295
    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsLtePdcpInfo(ILjava/util/ArrayList;)V

    .line 291
    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsRegisterModeNotify(ILjava/util/ArrayList;)V

    .line 310
    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsHoldToneInd(ILjava/util/ArrayList;)V

    .line 299
    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioIndication;->imsDMCNNotify(I)V

    .line 304
    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioIndication;->imsCsRedialNotify(I)V

    .line 287
    goto :goto_0

    .line 282
    :cond_4
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsVoiceBandInfo(ILjava/util/ArrayList;)V

    .line 283
    goto :goto_0

    .line 278
    :cond_5
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsCallRingBackTone(ILjava/util/ArrayList;)V

    .line 279
    goto :goto_0

    .line 274
    :cond_6
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioIndication;->imsCallStateChanged(I)V

    .line 275
    nop

    .line 316
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x811
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public imsCallModifyEndCauseInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "imsModifyEndCause"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;

    .line 176
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 177
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbd6

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 178
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2, v0}, Lcom/huawei/ims/ImsRIL;->convertHalImsEndCause(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;Lcom/huawei/ims/ImsRIL;)[I

    move-result-object v0

    .line 179
    .local v0, "response":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 182
    :cond_0
    return-void
.end method

.method public imsCallModifyInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "imsCallModify"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;

    .line 165
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 166
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbd5

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 167
    new-instance v3, Lcom/huawei/ims/CallDetails;

    iget-object v0, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget v0, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    iget-object v1, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget v1, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    const/4 v8, 0x0

    invoke-direct {v3, v0, v1, v8}, Lcom/huawei/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 168
    .local v3, "currCallDetails":Lcom/huawei/ims/CallDetails;
    new-instance v4, Lcom/huawei/ims/CallDetails;

    iget-object v0, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget v0, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    iget-object v1, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget v1, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    invoke-direct {v4, v0, v1, v8}, Lcom/huawei/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 169
    .local v4, "destCallDetails":Lcom/huawei/ims/CallDetails;
    new-instance v0, Lcom/huawei/ims/ImsCallModification$CallModify;

    iget v5, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->callIndex:I

    iget v7, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->modifyReason:I

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/huawei/ims/ImsCallModification$CallModify;-><init>(Lcom/huawei/ims/CallDetails;Lcom/huawei/ims/CallDetails;III)V

    .line 170
    .local v0, "callModify":Lcom/huawei/ims/ImsCallModification$CallModify;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v8, v0, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 173
    :cond_0
    return-void
.end method

.method public imsCallMtStatusInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsMtStatusReport;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "imsCallMtStatus"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMtStatusReport;

    .line 185
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 186
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbdc

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 187
    new-instance v0, Lcom/huawei/ims/MtStatusReport;

    invoke-direct {v0, p2}, Lcom/huawei/ims/MtStatusReport;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMtStatusReport;)V

    .line 188
    .local v0, "mtStatusReport":Lcom/huawei/ims/MtStatusReport;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 191
    :cond_0
    return-void
.end method

.method public imsCallRing(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 86
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 87
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbc4

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 88
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 91
    :cond_0
    return-void
.end method

.method public imsCallRingBackTone(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "ImsRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsCallRingBackTone ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 96
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 97
    .local v0, "tones":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbc5

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 98
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 99
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    nop

    .line 100
    .local v1, "playtone":Z
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v2, v2, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 102
    .end local v1    # "playtone":Z
    :cond_1
    return-void
.end method

.method public imsCallStateChanged(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 77
    const-string v0, "ImsRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsCallStateChanged:indicationType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbc3

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 80
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 83
    :cond_0
    return-void
.end method

.method public imsCsRedialNotify(I)V
    .locals 4
    .param p1, "type"    # I

    .line 194
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 195
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbde

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 196
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 199
    :cond_0
    return-void
.end method

.method public imsDMCNNotify(I)V
    .locals 3
    .param p1, "type"    # I

    .line 241
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 242
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbec

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 243
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 246
    :cond_0
    return-void
.end method

.method public imsHandoverInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "imsHandover"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;

    .line 105
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "handover":Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    new-instance v1, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;

    invoke-direct {v1, p2}, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;)V

    move-object v0, v1

    .line 108
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbc6

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 109
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 112
    :cond_0
    return-void
.end method

.method public imsHoldToneInd(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 229
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbee

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 230
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 231
    .local v0, "info":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 233
    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/huawei/ims/ImsRadioIndication;->START_LOCAL_HOLD_TONE:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    .line 234
    .local v1, "playtone":Z
    :cond_0
    const-string v2, "ImsRadioIndication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsHoldToneInd playtone ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v2, v2, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 237
    .end local v1    # "playtone":Z
    :cond_1
    return-void
.end method

.method public imsLtePdcpInfo(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 211
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbe5

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 212
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 213
    .local v0, "info":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 216
    :cond_0
    return-void
.end method

.method public imsLteRrcInfo(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 219
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 220
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbe6

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 221
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 222
    .local v0, "info":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 225
    :cond_0
    return-void
.end method

.method public imsNetworkStateChanged(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 202
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 204
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0x40d

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 206
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 207
    return-void
.end method

.method public imsRegErrRptInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "imsRegErrRpt"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;

    .line 260
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 261
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbf0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 262
    new-instance v0, Lcom/huawei/ims/VoWiFiRegErrReport;

    invoke-direct {v0, p2}, Lcom/huawei/ims/VoWiFiRegErrReport;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;)V

    .line 263
    .local v0, "mVoWiFiRegErrRpt":Lcom/huawei/ims/VoWiFiRegErrReport;
    const-string v1, "ImsRadioIndication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoWiFiRegErrReport ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/huawei/ims/VoWiFiRegErrReport;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mVoWiFiRegErrReportRegistrations:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mVoWiFiRegErrReportRegistrations:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 267
    :cond_0
    return-void
.end method

.method public imsRegisterModeNotify(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 250
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 251
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbef

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 252
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 253
    .local v0, "info":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 256
    :cond_0
    return-void
.end method

.method public imsSrvStatusInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "imsSrvStatus"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;

    .line 115
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 116
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbc7

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v0, "srvStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ServiceStatus;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 119
    new-instance v4, Lcom/huawei/ims/ServiceStatus;

    invoke-direct {v4}, Lcom/huawei/ims/ServiceStatus;-><init>()V

    .line 120
    .local v4, "srv":Lcom/huawei/ims/ServiceStatus;
    iget-object v5, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    aget-object v5, v5, v3

    iget v5, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->isValid:I

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    iput-boolean v5, v4, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    .line 121
    iget-object v5, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    aget-object v5, v5, v3

    iget v5, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->callType:I

    iput v5, v4, Lcom/huawei/ims/ServiceStatus;->type:I

    .line 122
    iget-object v5, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    aget-object v5, v5, v3

    iget v5, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->srvStatus:I

    iput v5, v4, Lcom/huawei/ims/ServiceStatus;->status:I

    .line 123
    iget-object v5, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;

    .line 124
    .local v5, "rILImsUserData":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;
    iget-object v7, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;->data:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, v4, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    .line 125
    new-array v7, v6, [Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    iput-object v7, v4, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    .line 127
    iget-object v7, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    aget-object v7, v7, v3

    .line 128
    .local v7, "rILImsServiceStatus":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;
    move v8, v2

    .local v8, "j":I
    :goto_2
    if-ge v8, v6, :cond_1

    .line 129
    iget-object v9, v7, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;

    aget-object v9, v9, v8

    .line 130
    .local v9, "rILImsStatusForAccTech":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;
    new-instance v10, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v10}, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    .line 131
    .local v10, "accessTechStatus":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    iget v11, v9, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;->restrictCause:I

    iput v11, v10, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 132
    iget v11, v9, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;->nwMode:I

    iput v11, v10, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 133
    iget v11, v9, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;->srvStatus:I

    iput v11, v10, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 134
    iget v11, v9, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;->regStatus:I

    iput v11, v10, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 135
    iget-object v11, v4, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    aput-object v10, v11, v8

    .line 128
    .end local v9    # "rILImsStatusForAccTech":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 137
    .end local v8    # "j":I
    .end local v10    # "accessTechStatus":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v4    # "srv":Lcom/huawei/ims/ServiceStatus;
    .end local v5    # "rILImsUserData":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;
    .end local v7    # "rILImsServiceStatus":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    .end local v3    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    if-eqz v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 143
    :cond_3
    return-void
.end method

.method public imsSuppSrvInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "imsSuppSvcNofitication"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;

    .line 146
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 147
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbca

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 148
    new-instance v0, Lcom/huawei/ims/HwImsSuppServiceNotification;

    invoke-direct {v0, p2}, Lcom/huawei/ims/HwImsSuppServiceNotification;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;)V

    .line 149
    .local v0, "notification":Lcom/huawei/ims/HwImsSuppServiceNotification;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 152
    :cond_0
    return-void
.end method

.method public imsVoiceBandInfo(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p2, "bandInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "ImsRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsVoiceBandInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",bandInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 157
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 158
    .local v0, "bands":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbcb

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 159
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 162
    :cond_0
    return-void
.end method

.method public vtFlowInfoReport(ILvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;)V
    .locals 8
    .param p1, "indicationType"    # I
    .param p2, "rilVtFlowInfoReport"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;

    .line 52
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVtFlowInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "ImsRadioIndication"

    const-string v1, "ro.config.vt_flow_info=false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 57
    const-string v0, "ImsRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currVtTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;->currVtTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "currTxFlow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;->currTxFlow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "currRxFlow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;->currRxFlow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;->currRxFlow:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iget-object v0, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;->currTxFlow:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 60
    .local v2, "currCallDataUsage":J
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->getPreCallDataUsage()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 62
    .local v0, "tempCallDataUsage":J
    const-string v4, "ImsRadioIndication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currCallDataUsage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ";tempCallDataUsage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/4 v7, 0x0

    if-lez v6, :cond_1

    .line 64
    iget-object v4, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v4, v4, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v7, v6, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 65
    :cond_1
    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 66
    iget-object v4, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v4, v4, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v7, v6, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 68
    :cond_2
    const-string v4, "ImsRadioIndication"

    const-string v5, "video call dataUsage is not change"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    invoke-static {v2, v3}, Lcom/huawei/ims/vt/VTUtils;->setPreCallDataUsage(J)V

    .line 73
    return-void
.end method
