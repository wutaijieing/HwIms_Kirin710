.class public Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVideoCallProviderImpl.java"

# interfaces
.implements Lcom/huawei/ims/ImsCallSessionImpl$Listener;


# static fields
.field private static final EVENT_SEND_SESSION_MODIFY_REQUEST_DONE:I = 0x0

.field private static final ORIENTATION_0:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImsVideoCallProviderImpl"


# instance fields
.field private isFristConference:Z

.field private mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

.field private mCameraController:Lcom/huawei/ims/vt/CameraController;

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lcom/huawei/ims/ImsCallModification;

.field private mIsVideoPaused:Z

.field private mMediaController:Lcom/huawei/ims/vt/MediaController;

.field mRequestProfile:Landroid/telecom/VideoProfile;

.field mResponseProfile:Landroid/telecom/VideoProfile;

.field private mTotalDataUsage:J

.field private mVideoDimensionCB:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsCallModification;)V
    .locals 3
    .param p1, "callSession"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "imsCallMod"    # Lcom/huawei/ims/ImsCallModification;

    .line 52
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mTotalDataUsage:J

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->isFristConference:Z

    .line 80
    new-instance v0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$2;-><init>(Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mVideoDimensionCB:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    .line 54
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsVideocallProviderImpl instance created,  imsCallMod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 57
    invoke-static {}, Lcom/huawei/ims/vt/CameraController;->getInstance()Lcom/huawei/ims/vt/CameraController;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    .line 58
    invoke-static {}, Lcom/huawei/ims/vt/MediaController;->getInstance()Lcom/huawei/ims/vt/MediaController;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mMediaController:Lcom/huawei/ims/vt/MediaController;

    .line 59
    iput-object p2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    .line 61
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mVideoDimensionCB:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setGetResCallBack(Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;)V

    .line 63
    new-instance v0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$1;-><init>(Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 29
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->handleSessionModifyRequestDone(Landroid/os/Message;)V

    return-void
.end method

.method private handleSessionModifyRequest(I)V
    .locals 3
    .param p1, "status"    # I

    .line 112
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSessionModifyRequest,status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 114
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 113
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 116
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, p1, v0, v1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 117
    return-void
.end method

.method private handleSessionModifyRequestDone(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 93
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSessionModifyRequestDone msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",msg.arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 97
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "ImsVideoCallProviderImpl"

    const-string v2, "session modify request failed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->handleSessionModifyRequest(I)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 104
    const-string v1, "ImsVideoCallProviderImpl"

    const-string v2, "session modify request cancel upgrade to video"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->handleSessionModifyRequest(I)V

    .line 108
    :cond_1
    :goto_0
    return-void
.end method

.method private isOneWayCallUpgradeToVT(II)Z
    .locals 2
    .param p1, "currentCallType"    # I
    .param p2, "newCallType"    # I

    .line 502
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVTDowngradeToOneWayCall(II)Z
    .locals 2
    .param p1, "currentCallType"    # I
    .param p2, "newCallType"    # I

    .line 497
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z
    .locals 3
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .line 193
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoPauseRequested requestProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    return v0
.end method

.method private modifyRTPStreamDirection(II)V
    .locals 5
    .param p1, "currentCallType"    # I
    .param p2, "newCallType"    # I

    .line 453
    invoke-static {p1}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v0

    .line 454
    .local v0, "oldDirection":I
    invoke-static {p2}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v1

    .line 456
    .local v1, "newDirection":I
    invoke-static {v0, v1}, Lcom/huawei/ims/vt/RTPController;->modifyRTPStreamDirection(II)I

    move-result v2

    .line 457
    .local v2, "ret":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 458
    const-string v3, "ImsVideoCallProviderImpl"

    const-string v4, "pauseOrResumeRTPStream failed!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    return-void
.end method

.method private modifyRTPStreamForTwoWayAndOneWaySwap()V
    .locals 7

    .line 427
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallDetails()Lcom/huawei/ims/CallDetails;

    move-result-object v0

    .line 429
    .local v0, "callDetails":Lcom/huawei/ims/CallDetails;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    if-nez v1, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iget v1, v0, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 434
    .local v1, "currentCallType":I
    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    .line 435
    .local v2, "newVideoState":I
    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result v3

    .line 436
    .local v3, "newCallType":I
    const-string v4, "ImsVideoCallProviderImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mResponseProfile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v6}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->isVTDowngradeToOneWayCall(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 438
    const-string v4, "ImsVideoCallProviderImpl"

    const-string v5, "modifyRTPStreamForTwoWayAndOneWaySwap TwoWay downgrade oneway"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->modifyRTPStreamDirection(II)V

    goto :goto_1

    .line 440
    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->isOneWayCallUpgradeToVT(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 441
    const-string v4, "ImsVideoCallProviderImpl"

    const-string v5, "modifyRTPStreamForTwoWayAndOneWaySwap oneway updategrade twoWay"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->modifyRTPStreamDirection(II)V

    .end local v0    # "callDetails":Lcom/huawei/ims/CallDetails;
    .end local v1    # "currentCallType":I
    .end local v2    # "newVideoState":I
    .end local v3    # "newCallType":I
    goto :goto_1

    .line 430
    .restart local v0    # "callDetails":Lcom/huawei/ims/CallDetails;
    :cond_2
    :goto_0
    const-string v1, "ImsVideoCallProviderImpl"

    const-string v2, "handleModifyCallResult callDetails or mResponseProfile is null!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void

    .line 445
    .end local v0    # "callDetails":Lcom/huawei/ims/CallDetails;
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method getCallSession()Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    return-object v0
.end method

.method public handleModifyCallResult(I)V
    .locals 3
    .param p1, "result"    # I

    .line 355
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveSessionModifyResponse, result is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-nez p1, :cond_1

    .line 357
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "receiveSessionModifyResponse modify success"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 359
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    if-nez v0, :cond_0

    .line 360
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "illegal process! mResponseProfile is null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->modifyRTPStreamForTwoWayAndOneWaySwap()V

    .line 366
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 368
    :cond_1
    const/16 v0, 0x49e7

    const/4 v1, 0x4

    if-ne v0, p1, :cond_2

    .line 369
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v2, "receiveSessionModifyResponse modify time out"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 371
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 370
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 373
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v1, v0, v2}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 375
    :cond_2
    const/16 v0, 0x49e8

    if-ne v0, p1, :cond_3

    .line 376
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v2, "receiveSessionModifyResponse modify rejected"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 378
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 377
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 381
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 384
    :cond_3
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v2, "receiveSessionModifyResponse modify failed"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 386
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 385
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 388
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 392
    :goto_0
    return-void
.end method

.method public isVideoPaused()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    return v0
.end method

.method public onCallDataUsageChanged(J)V
    .locals 4
    .param p1, "addCallDataUsage"    # J

    .line 404
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-nez v0, :cond_0

    .line 405
    return-void

    .line 407
    :cond_0
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallSession.isMultiparty()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->isFristConference:Z

    if-nez v0, :cond_1

    .line 409
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "isfirstConference"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->getTotalCallDataUsage()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mTotalDataUsage:J

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->isFristConference:Z

    goto :goto_0

    .line 415
    :cond_1
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "Normal process"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-wide v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mTotalDataUsage:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mTotalDataUsage:J

    .line 419
    :goto_0
    iget-wide v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mTotalDataUsage:J

    invoke-static {v0, v1}, Lcom/huawei/ims/vt/VTUtils;->setTotalCallDataUsage(J)V

    .line 421
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTotalDataUsage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mTotalDataUsage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-wide v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mTotalDataUsage:J

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->changeCallDataUsage(J)V

    .line 423
    return-void
.end method

.method public onCallSessionHold(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 2
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "mtHold"    # Z

    .line 465
    if-nez p1, :cond_0

    .line 466
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "onCallSessionHold::session is null , just return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/vt/CameraController;->setCallSessionHold(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 470
    return-void
.end method

.method public onCallSessionMerged()V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraController;->setCurrentSessionMerged()V

    .line 493
    return-void
.end method

.method public onCallSessionResumed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 2
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "mtResume"    # Z

    .line 474
    if-nez p1, :cond_0

    .line 475
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "onCallSessionResumed session is null , just return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/vt/CameraController;->setCallSessionResumed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 479
    return-void
.end method

.method public onCallSessionStarted(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 483
    if-nez p1, :cond_0

    .line 484
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "onCallSessionStarted session is null , just return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/CameraController;->setCurrentSessionStarted(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 488
    return-void
.end method

.method public onClosed(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 307
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "onClosed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 310
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/vt/CameraController;->close(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 312
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraController;->cleanPreStatus()V

    .line 313
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mMediaController:Lcom/huawei/ims/vt/MediaController;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/MediaController;->cleanPreStatus()V

    .line 315
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "onClosed end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method public onDisconnected(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 302
    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 0

    .line 124
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    .line 130
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isDocomo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "onRequestCameraCapabilities "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraController;->getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v0

    .line 133
    .local v0, "cc":Landroid/telecom/VideoProfile$CameraCapabilities;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 136
    .end local v0    # "cc":Landroid/telecom/VideoProfile$CameraCapabilities;
    :cond_0
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 7
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;

    .line 140
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "onSendSessionModifyRequest"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 148
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v2, "onSendSessionModifyRequest: video state is audio."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput-boolean v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    .line 152
    :cond_1
    iput-object p2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 155
    invoke-direct {p0, p2}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendSessionModifyRequest pause start, mIsVideoPaused is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-boolean v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    if-nez v0, :cond_6

    .line 159
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->pauseVideo()I

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    goto :goto_0

    .line 162
    :cond_2
    iget-boolean v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    if-eqz v0, :cond_4

    .line 163
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v2, "onSendSessionModifyRequest resume start"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->resumeVideo()I

    .line 165
    iput-boolean v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    .line 169
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraController;->isBgVideoCallShouldResume()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraController;->getCureentCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 171
    .local v0, "currentCallSession":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 173
    .local v1, "callType":I
    invoke-static {v1}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v2

    .line 174
    .local v2, "direction":I
    invoke-static {v2}, Lcom/huawei/ims/vt/RTPController;->resumeRTPStream(I)I

    move-result v3

    .line 175
    .local v3, "result":I
    const-string v4, "ImsVideoCallProviderImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendSessionModifyRequest resumeRTP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v0    # "currentCallSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v1    # "callType":I
    .end local v2    # "direction":I
    .end local v3    # "result":I
    :cond_3
    goto :goto_0

    .line 180
    :cond_4
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v2, "onSendSessionModifyRequest changeConnection start"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 182
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "onSendSessionModifyRequest source video state is the same with destination!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 186
    :cond_5
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, "newMsg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result v1

    .line 188
    .restart local v1    # "callType":I
    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/huawei/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    .line 190
    .end local v0    # "newMsg":Landroid/os/Message;
    .end local v1    # "callType":I
    :cond_6
    :goto_0
    return-void

    .line 143
    :cond_7
    :goto_1
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "fromProfile or requestProfile is null when onSendSessionModifyRequest"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 199
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallDetails()Lcom/huawei/ims/CallDetails;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendSessionModifyResponse responseProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    nop

    .line 207
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 206
    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result v0

    .line 208
    .local v0, "callType":I
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallDetails()Lcom/huawei/ims/CallDetails;

    move-result-object v1

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    if-ne v1, v0, :cond_1

    .line 209
    const-string v1, "ImsVideoCallProviderImpl"

    const-string v2, "rejectConnectionTypeChange"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallModification;->rejectConnectionTypeChange()V

    goto :goto_0

    .line 212
    :cond_1
    const-string v1, "ImsVideoCallProviderImpl"

    const-string v2, "acceptConnectionTypeChange"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/huawei/ims/ImsCallModification;->acceptConnectionTypeChange(ILjava/util/Map;)V

    .line 215
    :goto_0
    return-void

    .line 200
    .end local v0    # "callType":I
    :cond_2
    :goto_1
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "onSendSessionModifyResponse, some information is missing, rejectConnectionTypeChange"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallModification;->rejectConnectionTypeChange()V

    .line 202
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 219
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCamera, cameraId is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-eqz p1, :cond_2

    .line 222
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/vt/CameraController;->open(Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;)V

    goto :goto_1

    .line 223
    :cond_1
    :goto_0
    const-string v0, "ImsVideoCallProviderImpl"

    const-string v1, "onSetCamera, precondition=false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/vt/CameraController;->close(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 233
    :goto_1
    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .line 265
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetDeviceOrientation, rotation is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mMediaController:Lcom/huawei/ims/vt/MediaController;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/MediaController;->setDeviceOrientation(I)V

    .line 267
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 8
    .param p1, "surface"    # Landroid/view/Surface;

    .line 243
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetDisplaySurface, surface is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mMediaController:Lcom/huawei/ims/vt/MediaController;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/MediaController;->setDisplaySurface(Landroid/view/Surface;)Z

    move-result v0

    .line 245
    .local v0, "isSurfaceSet":Z
    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v1}, Lcom/huawei/ims/vt/CameraController;->getCureentCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v1

    .line 247
    .local v1, "currentCallSession":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 249
    .local v2, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v3, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v3

    .line 250
    .local v3, "currentCallType":I
    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    .line 251
    .local v4, "isVideoCallType":Z
    if-eqz v4, :cond_0

    .line 252
    const-string v5, "ImsVideoCallProviderImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSetDisplaySurface: modifyRTPStreamDirection, currentCallType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v5, 0x3

    invoke-direct {p0, v5, v3}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->modifyRTPStreamDirection(II)V

    .line 257
    const/4 v5, 0x0

    invoke-direct {p0, v5, v3}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->modifyRTPStreamDirection(II)V

    .line 261
    .end local v1    # "currentCallSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v2    # "cp":Landroid/telephony/ims/ImsCallProfile;
    .end local v3    # "currentCallType":I
    .end local v4    # "isVideoCallType":Z
    :cond_0
    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 0
    .param p1, "arg0"    # Landroid/net/Uri;

    .line 277
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 237
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetPreviewSurface, surface is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/CameraController;->setPreviewSurface(Landroid/view/Surface;)V

    .line 239
    return-void
.end method

.method public onSetZoom(F)V
    .locals 0
    .param p1, "arg0"    # F

    .line 284
    return-void
.end method

.method public onUnsolCallModify(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 6
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 323
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallTypeChanged,  callModify= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v0, v0, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v0

    .line 327
    .local v0, "newVideoState":I
    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 329
    .local v1, "vcp":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallModification$CallModify;->findError()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 331
    iget v2, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->convertImsErrorToUiError(I)I

    move-result v2

    .line 332
    .local v2, "uiError":I
    invoke-virtual {p0, v2, v1, v3}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 334
    .end local v2    # "uiError":I
    :cond_0
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallModification$CallModify;->modifyByTimeOut()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    const-string v2, "ImsVideoCallProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modifyByTimeOut , modify_reason is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget v2, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->convertImsErrorToUiError(I)I

    move-result v2

    .line 337
    .restart local v2    # "uiError":I
    invoke-virtual {p0, v2, v1, v3}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 341
    .end local v2    # "uiError":I
    :cond_1
    iput-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 343
    invoke-virtual {p0, v1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 345
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    const-string v2, "ImsVideoCallProviderImpl"

    const-string v3, "onCallTypeChanged, videostate=audio"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    .line 351
    :cond_2
    :goto_0
    return-void
.end method

.method public sendCameraStatus(Z)V
    .locals 3
    .param p1, "hasFailed"    # Z

    .line 287
    const-string v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCameraStatus, hasFailed is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 289
    :cond_0
    const/4 v0, 0x6

    .line 291
    .local v0, "status":I
    :goto_0
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isDocomo()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mMediaController:Lcom/huawei/ims/vt/MediaController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huawei/ims/vt/MediaController;->setDeviceOrientation(I)V

    .line 295
    :cond_1
    invoke-virtual {p0, v0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->handleCallSessionEvent(I)V

    .line 296
    return-void
.end method
