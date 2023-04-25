.class public Lcom/huawei/ims/ImsRadioResponse;
.super Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;
.source "ImsRadioResponse.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsRadioResponse"


# instance fields
.field mRil:Lcom/huawei/ims/ImsRIL;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/ImsRIL;)V
    .locals 0
    .param p1, "ril"    # Lcom/huawei/ims/ImsRIL;

    .line 44
    invoke-direct {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    .line 46
    return-void
.end method

.method private responseCurrentImsCalls(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;",
            ">;)V"
        }
    .end annotation

    .line 234
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 235
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_4

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_3

    .line 241
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 242
    .local v2, "num":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    .local v3, "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 244
    new-instance v5, Lcom/huawei/ims/DriverCallIms;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;

    invoke-direct {v5, v6}, Lcom/huawei/ims/DriverCallIms;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;)V

    .line 245
    .local v5, "dc":Lcom/huawei/ims/DriverCallIms;
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v6}, Lcom/huawei/ims/ImsRIL;->isSupportCnap()Z

    move-result v6

    if-nez v6, :cond_0

    .line 246
    const/4 v6, 0x2

    iput v6, v5, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    .line 247
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "isSupportCnap : false"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 249
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-boolean v6, v5, Lcom/huawei/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v6, :cond_1

    .line 251
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 252
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "InCall VoicePrivacy is enabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 254
    :cond_1
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 255
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "InCall VoicePrivacy is disabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 243
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    .end local v4    # "i":I
    .end local v5    # "dc":Lcom/huawei/ims/DriverCallIms;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 260
    move-object v1, v3

    .line 261
    iget-object v4, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v4, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 263
    .end local v2    # "num":I
    .end local v3    # "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    :cond_3
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 265
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private responseCurrentImsCallsV1_2(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 280
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_4

    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_3

    .line 286
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 287
    .local v2, "num":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    .local v3, "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 289
    new-instance v5, Lcom/huawei/ims/DriverCallIms;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;

    invoke-direct {v5, v6}, Lcom/huawei/ims/DriverCallIms;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;)V

    .line 290
    .local v5, "dc":Lcom/huawei/ims/DriverCallIms;
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v6}, Lcom/huawei/ims/ImsRIL;->isSupportCnap()Z

    move-result v6

    if-nez v6, :cond_0

    .line 291
    const/4 v6, 0x2

    iput v6, v5, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    .line 292
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "isSupportCnap : false"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 294
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-boolean v6, v5, Lcom/huawei/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v6, :cond_1

    .line 296
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 297
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "InCall VoicePrivacy is enabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 299
    :cond_1
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 300
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "InCall VoicePrivacy is disabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 288
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    .end local v4    # "i":I
    .end local v5    # "dc":Lcom/huawei/ims/DriverCallIms;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 305
    move-object v1, v3

    .line 306
    iget-object v4, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v4, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 308
    .end local v2    # "num":I
    .end local v3    # "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    :cond_3
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 310
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private responseCurrentImsCallsWithImsDomain(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;",
            ">;)V"
        }
    .end annotation

    .line 319
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 320
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_4

    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_3

    .line 326
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 327
    .local v2, "num":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    .local v3, "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 329
    new-instance v5, Lcom/huawei/ims/DriverCallIms;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;

    invoke-direct {v5, v6}, Lcom/huawei/ims/DriverCallIms;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;)V

    .line 330
    .local v5, "dc":Lcom/huawei/ims/DriverCallIms;
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v6}, Lcom/huawei/ims/ImsRIL;->isSupportCnap()Z

    move-result v6

    if-nez v6, :cond_0

    .line 331
    const/4 v6, 0x2

    iput v6, v5, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    .line 332
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "isSupportCnap : false"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 334
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-boolean v6, v5, Lcom/huawei/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v6, :cond_1

    .line 336
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 337
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "InCall VoicePrivacy is enabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 339
    :cond_1
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 340
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "InCall VoicePrivacy is disabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 328
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 344
    .end local v4    # "i":I
    .end local v5    # "dc":Lcom/huawei/ims/DriverCallIms;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 345
    move-object v1, v3

    .line 346
    iget-object v4, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v4, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 348
    .end local v2    # "num":I
    .end local v3    # "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    :cond_3
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 350
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private responseIntArrayList(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 738
    .local p2, "var":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 740
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_2

    .line 741
    const/4 v1, 0x0

    .line 742
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 743
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 744
    .local v2, "list_size":I
    new-array v3, v2, [I

    .line 745
    .local v3, "response":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 746
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    .line 745
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 748
    .end local v4    # "i":I
    :cond_0
    move-object v1, v3

    .line 749
    iget-object v4, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v4, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 751
    .end local v2    # "list_size":I
    .end local v3    # "response":[I
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 753
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private varargs responseInts(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;[I)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var"    # [I

    .line 730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 732
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseIntArrayList(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 735
    return-void
.end method

.method private responseLastCallFailCauseInfo(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;

    .line 111
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 113
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_1

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "ret":Lcom/android/internal/telephony/LastCallFailCause;
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 116
    .local v2, "response":[I
    iget v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_0

    .line 117
    new-instance v3, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v3}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    move-object v1, v3

    .line 118
    iget v3, p2, Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;->causeCode:I

    iput v3, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 119
    const/4 v3, 0x0

    iget v4, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    aput v4, v2, v3

    .line 121
    iget-object v3, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v3, v2}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 123
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3, v0, p1, v2}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 125
    .end local v1    # "ret":Lcom/android/internal/telephony/LastCallFailCause;
    .end local v2    # "response":[I
    :cond_1
    return-void
.end method

.method private responseSetImsConfig(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;)V
    .locals 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "payload"    # Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v1

    .line 429
    .local v1, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v1, :cond_1

    .line 431
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 432
    iget-object v2, v1, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v2, v0}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v3}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 437
    :cond_1
    return-void
.end method

.method private responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "s"    # Ljava/lang/String;

    .line 756
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 757
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_1

    .line 758
    const/4 v1, 0x0

    .line 759
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 760
    move-object v1, p2

    .line 761
    iget-object v2, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v2, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 763
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 765
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private responseUiccAuth(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;)V
    .locals 12
    .param p1, "info"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "uiccAuthRst"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;

    .line 652
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseUiccAuth, info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "uiccAuthRst="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 654
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_3

    .line 655
    const/4 v1, 0x0

    .line 656
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_2

    .line 657
    const-string v2, "ImsRadioResponse"

    const-string v3, "NO ERROR,start to process GbaAuth"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v2, Lcom/huawei/ims/GbaAuth$AuthResp;

    invoke-direct {v2}, Lcom/huawei/ims/GbaAuth$AuthResp;-><init>()V

    .line 659
    .local v2, "auth":Lcom/huawei/ims/GbaAuth$AuthResp;
    iget v3, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;->authStatus:I

    iput v3, v2, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    .line 660
    const-string v3, "ImsRadioResponse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseUiccAuth, mStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget v3, v2, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto/16 :goto_0

    .line 703
    :cond_0
    new-instance v3, Lcom/huawei/ims/GbaAuth$AuthSyncfail;

    invoke-direct {v3}, Lcom/huawei/ims/GbaAuth$AuthSyncfail;-><init>()V

    .line 704
    .local v3, "as":Lcom/huawei/ims/GbaAuth$AuthSyncfail;
    new-instance v4, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v4}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v4, v3, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 705
    iget-object v4, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;->authSyncfail:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

    .line 706
    .local v4, "failType":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;
    iget-object v5, v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->autsData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;

    .line 707
    .local v5, "autsDatas":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;
    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v7, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;->autsPresent:I

    iput v7, v6, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 708
    const-string v6, "ImsRadioResponse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAuts.mPresent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v8, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v7, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;->auts:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, v6, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 710
    const-string v6, "ImsRadioResponse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAuts="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v8, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iput-object v3, v2, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    .line 714
    .end local v3    # "as":Lcom/huawei/ims/GbaAuth$AuthSyncfail;
    .end local v4    # "failType":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;
    .end local v5    # "autsDatas":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;
    goto/16 :goto_0

    .line 663
    :cond_1
    new-instance v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;

    invoke-direct {v3}, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;-><init>()V

    .line 665
    .local v3, "ac":Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
    new-instance v4, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v4}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v4, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 666
    iget-object v4, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;->authChallenge:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPCHALLENGETYPE;

    .line 667
    .local v4, "authChang":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPCHALLENGETYPE;
    iget-object v5, v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPCHALLENGETYPE;->resData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESTYPE;

    .line 668
    .local v5, "resDatas":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESTYPE;
    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v7, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESTYPE;->resPresent:I

    iput v7, v6, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 669
    const-string v6, "ImsRadioResponse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRes.mPresent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v8, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v7, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESTYPE;->res:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, v6, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 673
    const-string v6, "ImsRadioResponse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "res="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v8, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 674
    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 673
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v6, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v6}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v6, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 678
    iget-object v6, v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPCHALLENGETYPE;->ikData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHIKTYPE;

    .line 679
    .local v6, "ikType":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHIKTYPE;
    iget-object v7, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v8, v6, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHIKTYPE;->ikPresent:I

    iput v8, v7, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 680
    const-string v7, "ImsRadioResponse"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mIk.mPresent="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v10, v10, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v7, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v8, v6, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHIKTYPE;->ik:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    iput-object v8, v7, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 683
    const-string v7, "ImsRadioResponse"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ik="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v10, v10, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 684
    invoke-static {v10}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 683
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v7, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v7}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v7, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 689
    iget-object v7, v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPCHALLENGETYPE;->ckData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHCKTYPE;

    .line 690
    .local v7, "ckDatas":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHCKTYPE;
    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v10, v7, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHCKTYPE;->ckPresent:I

    iput v10, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 691
    const-string v8, "ImsRadioResponse"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCk.mPresent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v11, v11, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v10, v7, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHCKTYPE;->ck:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 694
    const-string v8, "ImsRadioResponse"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ck="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v11, v11, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 695
    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 694
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iput-object v3, v2, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    .line 701
    .end local v3    # "ac":Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
    .end local v4    # "authChang":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPCHALLENGETYPE;
    .end local v5    # "resDatas":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESTYPE;
    .end local v6    # "ikType":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHIKTYPE;
    .end local v7    # "ckDatas":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHCKTYPE;
    nop

    .line 718
    :goto_0
    move-object v1, v2

    .line 719
    iget-object v3, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v3, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 721
    .end local v2    # "auth":Lcom/huawei/ims/GbaAuth$AuthResp;
    :cond_2
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 723
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method private responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 213
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 214
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_1

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 217
    iget-object v2, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v2, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 221
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ret"    # Ljava/lang/Object;

    .line 54
    if-eqz p1, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 56
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public RspMsg(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;ILvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "msgId"    # I
    .param p3, "payload"    # Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;

    .line 488
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RspMsg:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    .line 596
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->switchWaitingOrHoldingAndActiveForImsResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 597
    goto/16 :goto_0

    .line 565
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->sendBatteryStatusResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 566
    goto/16 :goto_0

    .line 517
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 518
    goto/16 :goto_0

    .line 499
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->getLteInfoRsp(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 500
    goto/16 :goto_0

    .line 495
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setImsCallWaitingResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 496
    goto/16 :goto_0

    .line 579
    :sswitch_5
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getImsImpuResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 580
    goto/16 :goto_0

    .line 503
    :sswitch_6
    goto/16 :goto_0

    .line 491
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->imsDialResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 492
    goto/16 :goto_0

    .line 619
    :pswitch_0
    const-string v0, "ImsRadioResponse"

    const-string v1, "RESPONSE GET_IMS_SMS_CONFIG"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {p0, p1, p3}, Lcom/huawei/ims/ImsRadioResponse;->responseGetImsSmsStatus(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;)V

    .line 621
    goto/16 :goto_0

    .line 614
    :pswitch_1
    const-string v0, "ImsRadioResponse"

    const-string v1, "RESPONSE SET_IMS_SMS_CONFIG"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-direct {p0, p1, p3}, Lcom/huawei/ims/ImsRadioResponse;->responseSetImsConfig(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;)V

    .line 616
    goto/16 :goto_0

    .line 602
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->modifyImsCallInitiateResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 603
    goto/16 :goto_0

    .line 607
    :pswitch_3
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 608
    goto :goto_0

    .line 610
    :pswitch_4
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 611
    goto :goto_0

    .line 560
    :pswitch_5
    const-string v0, "ImsRadioResponse"

    const-string v1, "[Wifi-Call] RESPONSE came for WIFI_EMERGENCY_AID"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    goto :goto_0

    .line 584
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setImsVtCapabilityResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 585
    goto :goto_0

    .line 590
    :pswitch_7
    iget v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nData:I

    iget-object v1, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/huawei/ims/ImsRadioResponse;->responseHwImsLastCallFailCauseInfo(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;ILjava/lang/String;)V

    .line 591
    goto :goto_0

    .line 554
    :pswitch_8
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMUSERResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 555
    goto :goto_0

    .line 550
    :pswitch_9
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMSMSResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 551
    goto :goto_0

    .line 546
    :pswitch_a
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMDYNResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 547
    goto :goto_0

    .line 542
    :pswitch_b
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMTIMERResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 543
    goto :goto_0

    .line 538
    :pswitch_c
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMPCSCFResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 539
    goto :goto_0

    .line 534
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMSMSReponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 535
    goto :goto_0

    .line 530
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMTIMERResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 531
    goto :goto_0

    .line 526
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMDYNResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 527
    goto :goto_0

    .line 522
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMPCSCFResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 523
    goto :goto_0

    .line 574
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->modifyImsCallConfirmResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 575
    goto :goto_0

    .line 570
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->modifyImsCallInitiateResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 571
    goto :goto_0

    .line 512
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->acceptImsCallResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 513
    goto :goto_0

    .line 509
    :pswitch_14
    goto :goto_0

    .line 506
    :pswitch_15
    nop

    .line 627
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x24c
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x279
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2a2
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2b5
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2c4
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2c9
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x243 -> :sswitch_7
        0x24a -> :sswitch_6
        0x25d -> :sswitch_5
        0x267 -> :sswitch_4
        0x29c -> :sswitch_3
        0x29e -> :sswitch_2
        0x2ad -> :sswitch_1
        0x2bc -> :sswitch_0
    .end sparse-switch
.end method

.method public acceptCallResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 168
    return-void
.end method

.method public acceptImsCallResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 366
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 367
    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 166
    return-void
.end method

.method public acknowledgeRequest(I)V
    .locals 1
    .param p1, "serial"    # I

    .line 68
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processRequestAck(I)V

    .line 69
    return-void
.end method

.method public addImsConfMemberResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 378
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 379
    return-void
.end method

.method public conferenceResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 97
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conferenceResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 99
    return-void
.end method

.method public deactivateDataCallResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 170
    return-void
.end method

.method public explicitCallTransferResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 208
    const-string v0, "ImsRadioResponse"

    const-string v1, "explicitCallTransferResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 210
    return-void
.end method

.method public explicitImsCallTransferResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 446
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 447
    return-void
.end method

.method public getAvailableNetworksResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    return-void
.end method

.method public getBasebandVersionResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Ljava/lang/String;

    .line 198
    return-void
.end method

.method public getCallForwardStatusResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    return-void
.end method

.method public getCallWaitingResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;ZI)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Z
    .param p3, "var3"    # I

    .line 162
    return-void
.end method

.method public getCurrentImsCallsResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;>;"
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentImsCallsResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseCurrentImsCalls(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 231
    return-void
.end method

.method public getCurrentImsCallsResponseV1_2(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;",
            ">;)V"
        }
    .end annotation

    .line 274
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;>;"
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentImsCallsResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseCurrentImsCallsV1_2(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 276
    return-void
.end method

.method public getCurrentImsCallsWithImsDomainResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;",
            ">;)V"
        }
    .end annotation

    .line 315
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;>;"
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentImsCallsWithImsDomainResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseCurrentImsCallsWithImsDomain(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 317
    return-void
.end method

.method public getDMDYNResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 471
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public getDMPCSCFResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 465
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public getDMSMSResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 474
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public getDMTIMERResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public getDMUSERResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public getFacilityLockForAppResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .line 172
    return-void
.end method

.method public getImsImpuResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 374
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public getImsRegisterStateResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "regState"    # I

    .line 354
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseInts(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;[I)V

    .line 355
    return-void
.end method

.method public getImsRegistrationStateResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;ZI)V
    .locals 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "isRegistered"    # Z
    .param p3, "ratFamily"    # I

    .line 644
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseInts(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;[I)V

    .line 645
    return-void
.end method

.method public getLastCallFailCauseResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;

    .line 105
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastCallFailCauseResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "var2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseLastCallFailCauseInfo(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V

    .line 107
    return-void
.end method

.method public getLastImsCallFailCauseResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "ret"    # I

    .line 362
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseInts(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;[I)V

    .line 363
    return-void
.end method

.method public getLteInfoRsp(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 450
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 451
    return-void
.end method

.method public getNetworkSelectionModeResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Z

    .line 178
    return-void
.end method

.method public hangupConnectionResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 77
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupConnectionResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 79
    return-void
.end method

.method public hangupForegroundResumeBackgroundResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 87
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupForegroundResumeBackgroundResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 89
    return-void
.end method

.method public hangupWaitingOrBackgroundResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 82
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupWaitingOrBackgroundResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 84
    return-void
.end method

.method public imsConferenceResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 358
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 359
    return-void
.end method

.method public imsDialResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "info"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 72
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsDialResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 74
    return-void
.end method

.method public modifyImsCallConfirmResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 401
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 402
    return-void
.end method

.method public modifyImsCallInitiateResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 391
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 392
    return-void
.end method

.method public modifyImsCallUpgradeCancelResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 396
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 397
    return-void
.end method

.method public rejectCallResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 101
    return-void
.end method

.method public reportStkServiceIsRunningResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 640
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 641
    return-void
.end method

.method public responseGetImsSmsStatus(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;)V
    .locals 6
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "payload"    # Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;

    .line 411
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 412
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 415
    .local v2, "response":[I
    iget v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_1

    .line 416
    iget-object v3, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    .line 417
    iget-object v3, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v5

    .line 419
    :cond_0
    aget v3, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 420
    iget-object v3, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v3, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 422
    :cond_1
    iget-object v3, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 424
    .end local v1    # "ret":Ljava/lang/Object;
    .end local v2    # "response":[I
    :cond_2
    return-void
.end method

.method public responseHwImsLastCallFailCauseInfo(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;ILjava/lang/String;)V
    .locals 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "failCause"    # I
    .param p3, "failString"    # Ljava/lang/String;

    .line 129
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHwImsLastCallFailCauseResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "failCause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "failString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 133
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_1

    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 136
    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .local v2, "failInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object v1, v2

    .line 138
    iget-object v3, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v3, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 140
    .end local v2    # "failInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 142
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public restartRILDResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 726
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 727
    return-void
.end method

.method public sendBatteryStatusResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 480
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 481
    return-void
.end method

.method public sendDtmfResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 146
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmfResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 148
    return-void
.end method

.method public separateConnectionResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 200
    return-void
.end method

.method public setBarringPasswordResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 176
    return-void
.end method

.method public setCallForwardResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 158
    return-void
.end method

.method public setCallWaitingResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 164
    return-void
.end method

.method public setClirResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 151
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClirResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 153
    return-void
.end method

.method public setDMDYNResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 456
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 457
    return-void
.end method

.method public setDMPCSCFResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 453
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 454
    return-void
.end method

.method public setDMSMSReponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 462
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 463
    return-void
.end method

.method public setDMTIMERResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 459
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 460
    return-void
.end method

.method public setFacilityLockForAppResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .line 174
    return-void
.end method

.method public setImsCallWaitingResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 386
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsCallWaitingResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 388
    return-void
.end method

.method public setImsClirResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 382
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 383
    return-void
.end method

.method public setImsMuteResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 370
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 371
    return-void
.end method

.method public setImsRegErrReportResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 484
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 485
    return-void
.end method

.method public setImsVtCapabilityResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 406
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 407
    return-void
.end method

.method public setMuteResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 203
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMuteResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 205
    return-void
.end method

.method public setNetworkSelectionModeAutomaticResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 180
    return-void
.end method

.method public setNetworkSelectionModeManualResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 182
    return-void
.end method

.method public setSimCardPowerResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 633
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 634
    return-void
.end method

.method public startDtmfResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 189
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmfResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 191
    return-void
.end method

.method public stopDtmfResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 194
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDtmfResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 196
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveForImsResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 441
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 442
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 92
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchWaitingOrHoldingAndActiveResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 94
    return-void
.end method

.method public uiccAuthResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;)V
    .locals 0
    .param p1, "info"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "uiccAuthRst"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseUiccAuth(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;)V

    .line 649
    return-void
.end method
