.class public Lcom/huawei/ims/ImsCallModification;
.super Ljava/lang/Object;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsCallModification$CallModify;,
        Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;,
        Lcom/huawei/ims/ImsCallModification$PauseState;
    }
.end annotation


# static fields
.field static final EVENT_AVP_UPGRADE_DONE:I = 0x5

.field static final EVENT_MODIFY_CALL_CONFIRM_DONE:I = 0x8

.field static final EVENT_MODIFY_CALL_INITIATE_DONE:I = 0x6

.field static final EVENT_MODIFY_CALL_UPGRADE_CANCEL_DONE:I = 0xa

.field static final EVENT_VIDEO_PAUSE_DONE:I = 0x7

.field static final EVENT_VIDEO_PAUSE_RETRY:I = 0x9

.field private static final LOG_TAG:Ljava/lang/String; = "VideoCall_ImsCallModification"

.field private static final MAX_MULTITASK_RETRIES:I = 0x1

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field public static final TYPE_PROCESS_MODIFY_CALL_CANCEL:I = 0x1

.field public static final TYPE_PROCESS_MODIFY_CALL_INITIALED:I


# instance fields
.field private callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

.field private mAvpRetryAllowed:Z

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field mHandler:Landroid/os/Handler;

.field public mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

.field public mIndex:I

.field private mIsLocallyPaused:Z

.field private mMultiTaskRetryCount:I

.field private mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

.field private mPrevVideoCallType:I


# direct methods
.method public constructor <init>(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsRIL;)V
    .locals 2
    .param p1, "imsCallSessionImpl"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "senderRxr"    # Lcom/huawei/ims/ImsRIL;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/ImsCallModification;->mIndex:I

    .line 41
    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/ims/ImsCallModification;->mPrevVideoCallType:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/ImsCallModification;->mAvpRetryAllowed:Z

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsCallModification;->mMultiTaskRetryCount:I

    .line 70
    sget-object v1, Lcom/huawei/ims/ImsCallModification$PauseState;->NONE:Lcom/huawei/ims/ImsCallModification$PauseState;

    iput-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    .line 73
    iput-boolean v0, p0, Lcom/huawei/ims/ImsCallModification;->mIsLocallyPaused:Z

    .line 81
    const-string v0, "ImsCallModification instance created "

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 83
    iput-object p2, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 84
    iput-object p1, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 85
    new-instance v0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;-><init>(Lcom/huawei/ims/ImsCallModification;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallModification;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/ImsCallModification;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallModification;

    .line 36
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->processPendingVTMultitask()V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/ims/ImsCallModification;)Lcom/huawei/ims/ImsCallModification$CallModify;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallModification;

    .line 36
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    return-object v0
.end method

.method static synthetic access$302(Lcom/huawei/ims/ImsCallModification;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallModification;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/huawei/ims/ImsCallModification;->mIsLocallyPaused:Z

    return p1
.end method

.method static synthetic access$400(Lcom/huawei/ims/ImsCallModification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallModification;

    .line 36
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->shouldRetryVideoPause()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallModification;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/ims/ImsCallModification;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallModification;

    .line 36
    iget v0, p0, Lcom/huawei/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/huawei/ims/ImsCallModification;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallModification;
    .param p1, "x1"    # I

    .line 36
    iput p1, p0, Lcom/huawei/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return p1
.end method

.method static synthetic access$608(Lcom/huawei/ims/ImsCallModification;)I
    .locals 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallModification;

    .line 36
    iget v0, p0, Lcom/huawei/ims/ImsCallModification;->mMultiTaskRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/huawei/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/huawei/ims/ImsCallModification;)Lcom/huawei/ims/ImsCallModification$PauseState;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallModification;

    .line 36
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/huawei/ims/ImsCallModification;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallModification;
    .param p1, "x1"    # I

    .line 36
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification;->createAndSendMultiTaskRequest(I)V

    return-void
.end method

.method private clearPendingVTMultiTask()V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPendingVTMultiTask imsconn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/huawei/ims/ImsCallModification$PauseState;->NONE:Lcom/huawei/ims/ImsCallModification$PauseState;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    .line 258
    return-void
.end method

.method private createAndSendMultiTaskRequest(I)V
    .locals 2
    .param p1, "rilCallType"    # I

    .line 108
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 110
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/huawei/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    .line 111
    return-void
.end method

.method public static hasError(Lcom/huawei/ims/ImsCallModification$CallModify;)Z
    .locals 1
    .param p0, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 148
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallModification$CallModify;->findError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOldAndNewPauseRequestSame()Z
    .locals 3

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-eqz v1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOldAndNewPauseRequestSame Unexpectedly callModifyRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 247
    return v0

    .line 249
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/ims/ImsCallModification;->mIsLocallyPaused:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    sget-object v2, Lcom/huawei/ims/ImsCallModification$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallModification$PauseState;

    if-eq v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/huawei/ims/ImsCallModification;->mIsLocallyPaused:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    sget-object v2, Lcom/huawei/ims/ImsCallModification$PauseState;->RESUME:Lcom/huawei/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOldAndNewPauseRequestSame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 252
    return v0
.end method

.method private isVTMultitaskRequest(I)Z
    .locals 1
    .param p1, "callType"    # I

    .line 89
    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isValidCallModifyConfirmRequest(I)Z
    .locals 3
    .param p1, "callType"    # I

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "allowed":Z
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-nez v1, :cond_0

    .line 446
    const-string v1, "callModifyRequest is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 447
    const/4 v1, 0x0

    return v1

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    iget-object v2, v2, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v2, v2, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-static {v1, v2, p1}, Lcom/huawei/ims/ImsCallUtils;->isVTUpgradeCallType(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    const/4 v0, 0x1

    goto :goto_0

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    if-ne p1, v1, :cond_2

    .line 454
    const/4 v0, 0x1

    .line 456
    :cond_2
    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 667
    const-string v0, "VideoCall_ImsCallModification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 671
    const-string v0, "VideoCall_ImsCallModification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void
.end method

.method private modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V
    .locals 6
    .param p1, "newMsg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 401
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/huawei/ims/ImsCallUtils;->isValidRilModifyCallType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallInitiate not a Valid RilCallType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 403
    return-void

    .line 406
    :cond_0
    new-instance v0, Lcom/huawei/ims/CallDetails;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v1

    .line 407
    invoke-static {p3}, Lcom/huawei/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Lcom/huawei/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 408
    .local v0, "destCallDetails":Lcom/huawei/ims/CallDetails;
    iget v1, p0, Lcom/huawei/ims/ImsCallModification;->mIndex:I

    .line 410
    .local v1, "rilCallIndex":I
    new-instance v2, Lcom/huawei/ims/CallDetails;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v3

    iget-object v4, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 411
    invoke-virtual {v4}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 412
    .local v2, "currCallDetails":Lcom/huawei/ims/CallDetails;
    new-instance v3, Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-direct {v3, v2, v0, v1}, Lcom/huawei/ims/ImsCallModification$CallModify;-><init>(Lcom/huawei/ims/CallDetails;Lcom/huawei/ims/CallDetails;I)V

    .line 415
    .local v3, "callModify":Lcom/huawei/ims/ImsCallModification$CallModify;
    iput-object v3, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 416
    iget-object v4, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v4, p1, v3}, Lcom/huawei/ims/ImsRIL;->modifyCallInitiate(Landroid/os/Message;Lcom/huawei/ims/ImsCallModification$CallModify;)V

    .line 417
    return-void
.end method

.method private modifyCallUpgradeCancel(Landroid/os/Message;ILjava/util/Map;)V
    .locals 2
    .param p1, "newMsg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 432
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallUpgradeCancel,newCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 433
    invoke-static {p2}, Lcom/huawei/ims/ImsCallUtils;->isValidRilModifyCallType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallUpgradeCancel not a Valid RilCallType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 435
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v1, p0, Lcom/huawei/ims/ImsCallModification;->mIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->modifyCallUpgradeCancel(Landroid/os/Message;I)V

    .line 440
    :cond_1
    return-void
.end method

.method private pendingPauseStatetoRilCallType()I
    .locals 3

    .line 114
    const/16 v0, 0xa

    .line 115
    .local v0, "rilCallType":I
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    sget-object v2, Lcom/huawei/ims/ImsCallModification$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_0

    .line 116
    const/4 v0, 0x4

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    sget-object v2, Lcom/huawei/ims/ImsCallModification$PauseState;->RESUME:Lcom/huawei/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_1

    .line 119
    iget v0, p0, Lcom/huawei/ims/ImsCallModification;->mPrevVideoCallType:I

    .line 121
    :cond_1
    :goto_0
    return v0
.end method

.method private processPendingVTMultitask()V
    .locals 2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processPendingVTMultitask mPendingVTMultitask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 266
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->isOldAndNewPauseRequestSame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "Old and new Pause Request is Same so clearing Pending VT multitask"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->clearPendingVTMultiTask()V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    sget-object v1, Lcom/huawei/ims/ImsCallModification$PauseState;->NONE:Lcom/huawei/ims/ImsCallModification$PauseState;

    if-eq v0, v1, :cond_2

    .line 270
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-nez v0, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->pendingPauseStatetoRilCallType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->createAndSendMultiTaskRequest(I)V

    .line 272
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->clearPendingVTMultiTask()V

    goto :goto_0

    .line 274
    :cond_1
    const-string v0, "processPendingVTMultitask callModifyRequest not null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 278
    :cond_2
    :goto_0
    return-void
.end method

.method private reValidateCallModify(I)Z
    .locals 10
    .param p1, "newCallType"    # I

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reValidateCallModify newCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 218
    .local v0, "currCallType":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v3, p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 224
    .local v3, "voiceCallModify":Z
    :goto_0
    const/4 v4, 0x3

    if-ne v4, p1, :cond_1

    if-ne v4, v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    .line 227
    .local v4, "videoCallModify":Z
    :goto_1
    iget-object v5, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v5

    .line 229
    .local v5, "currentCallState":Lcom/huawei/ims/DriverCallIms$State;
    sget-object v6, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v6, v5, :cond_3

    sget-object v6, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v6, v5, :cond_2

    goto :goto_2

    :cond_2
    move v6, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v2

    .line 232
    .local v6, "isVideoRingtoneState":Z
    :goto_3
    iget-object v7, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v7}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 233
    .local v7, "index":I
    if-ltz v7, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move v8, v1

    .line 234
    .local v8, "isIndexValid":Z
    :goto_4
    if-eqz v8, :cond_6

    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    if-eqz v6, :cond_6

    move v1, v2

    nop

    .line 236
    .local v1, "isValid":Z
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reValidateCallModify currCallType= "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " index="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " voiceCallModify="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " videoCallModify="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isVideoRingtoneState="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 240
    return v1
.end method

.method private shouldRetryVideoPause()Z
    .locals 2

    .line 261
    iget v0, p0, Lcom/huawei/ims/ImsCallModification;->mMultiTaskRetryCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private triggerOrQueueVTMultitask(I)V
    .locals 2
    .param p1, "callType"    # I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerOrQueueVTMultitask callType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " conn= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    .local v0, "isPauseRequested":Z
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/huawei/ims/ImsCallModification$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallModification$PauseState;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/huawei/ims/ImsCallModification$PauseState;->RESUME:Lcom/huawei/ims/ImsCallModification$PauseState;

    :goto_1
    iput-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    .line 98
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-nez v1, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->processPendingVTMultitask()V

    .line 101
    :cond_2
    return-void
.end method

.method private updatePreviousVTCallType()V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 335
    .local v0, "callType":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 338
    :cond_0
    iput v0, p0, Lcom/huawei/ims/ImsCallModification;->mPrevVideoCallType:I

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating mPrevVideoCallType to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/ImsCallModification;->mPrevVideoCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 341
    :cond_1
    return-void
.end method

.method private validateCanModifyConnectionType(Landroid/os/Message;I)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateCanModifyConnectionType newCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 128
    .local v0, "currCallType":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 130
    .local v3, "modifyToCurrCallType":Z
    :goto_0
    iget-object v4, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 131
    .local v4, "index":I
    if-ltz v4, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    .line 132
    .local v5, "isIndexValid":Z
    :goto_1
    if-eqz v5, :cond_2

    if-nez v3, :cond_2

    move v1, v2

    nop

    .line 134
    .local v1, "isValid":Z
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "validateCanModifyConnectionType currCallType= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " index="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " modifyToCurrCallType="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 136
    if-nez p1, :cond_3

    return v1

    .line 138
    :cond_3
    if-nez v1, :cond_5

    .line 139
    const/4 v2, 0x0

    if-eqz v3, :cond_4

    .line 140
    move-object v6, v2

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Can\'t modify call."

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 141
    .local v6, "exception":Ljava/lang/Exception;
    :goto_2
    invoke-static {p1, v2, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 144
    .end local v6    # "exception":Ljava/lang/Exception;
    :cond_5
    return v1
.end method


# virtual methods
.method public acceptConnectionTypeChange(ILjava/util/Map;)V
    .locals 3
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 466
    .local p2, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "VideoCall_ImsCallModification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Confirming call type change request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification;->isValidCallModifyConfirmRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptConnectionTypeChange: MODIFY_CALL_CONFIRM called with invalid calltype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallModification;->rejectConnectionTypeChange()V

    .line 472
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iput p1, v0, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 477
    if-eqz p2, :cond_1

    .line 478
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    invoke-virtual {v0, p2}, Lcom/huawei/ims/CallDetails;->setExtrasFromMap(Ljava/util/Map;)V

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/huawei/ims/ImsRIL;->modifyCallConfirm(Landroid/os/Message;Lcom/huawei/ims/ImsCallModification$CallModify;)V

    .line 483
    iput-object v2, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 486
    :cond_2
    return-void
.end method

.method public changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 347
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeConnectionType  newCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/ImsCallModification;->mIndex:I

    .line 351
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsCallModification;->isVTMultitaskRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsCallModification;->triggerOrQueueVTMultitask(I)V

    goto :goto_1

    .line 357
    :cond_0
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 358
    const/16 v1, 0xa

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    .line 359
    .local v1, "eventType":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 362
    .local v2, "newMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-nez v3, :cond_4

    .line 364
    invoke-direct {p0, v2, p2}, Lcom/huawei/ims/ImsCallModification;->validateCanModifyConnectionType(Landroid/os/Message;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 365
    const-string v0, "CallType is invalid!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 366
    return-void

    .line 369
    :cond_2
    if-ne p2, v0, :cond_3

    .line 370
    invoke-direct {p0, v2, p2, p3}, Lcom/huawei/ims/ImsCallModification;->modifyCallUpgradeCancel(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_1

    .line 372
    :cond_3
    invoke-direct {p0, v2, p2, p3}, Lcom/huawei/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_1

    .line 376
    :cond_4
    const-string v0, "VideoCall_ImsCallModification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videocall changeConnectionType: not invoking modifyCallInitiate as there is pending callModifyRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v0, "Pending callModifyRequest so not sending modify request down"

    .line 382
    .local v0, "errorStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 383
    .local v3, "ex":Ljava/lang/RuntimeException;
    if-eqz p1, :cond_5

    .line 384
    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 385
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 390
    .end local v0    # "errorStr":Ljava/lang/String;
    .end local v1    # "eventType":I
    .end local v2    # "newMsg":Landroid/os/Message;
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :cond_5
    :goto_1
    return-void
.end method

.method public clearPendingModify()V
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPendingModify imsconn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 284
    return-void
.end method

.method public isAvpRetryAllowed()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallModification;->mAvpRetryAllowed:Z

    return v0
.end method

.method public isLocallyPaused()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallModification;->mIsLocallyPaused:Z

    return v0
.end method

.method public onReceivedModifyCall(Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 4
    .param p1, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 153
    const-string v0, "VideoCall_ImsCallModification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedCallModify("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    .line 158
    .local v0, "ret":Z
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallModification$CallModify;->findError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 160
    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsCallModification$CallModify;->isSameModify(Lcom/huawei/ims/ImsCallModification$CallModify;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 161
    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallModification$CallModify;->findError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    iget v2, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    iput v2, v1, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    .line 164
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 166
    :cond_0
    const-string v1, "VideoCall_ImsCallModification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedModifyCall: Call Modify request not found.Dropping the Modify Call Request Failed. Cached Request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Received Request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 172
    :cond_1
    iget-object v1, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/huawei/ims/ImsCallModification;->validateCanModifyConnectionType(Landroid/os/Message;I)Z

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRIL;->isSupportVideoRingTones()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    if-nez v0, :cond_3

    iget-object v1, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallModification;->reValidateCallModify(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 175
    const-string v1, "VideoCall_ImsCallModification"

    const-string v3, "CallModify received by video ring tone."

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_4

    .line 178
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 179
    const-string v1, "VideoCall_ImsCallModification"

    const-string v2, "mock call state change, notify CallStateRegistrants!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_4
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-nez v1, :cond_5

    .line 183
    iput-object p1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    goto :goto_2

    .line 185
    :cond_5
    const-string v1, "VideoCall_ImsCallModification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videocall onReceivedModifyCall: not notifying user about incoming modify call request as there is pending callModifyRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x0

    .line 191
    :goto_2
    if-nez v0, :cond_6

    .line 193
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallModification;->rejectConnectionTypeChange()V

    .line 202
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 203
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyUnsolCallModify(Lcom/huawei/ims/ImsCallModification$CallModify;)V

    .line 206
    :cond_7
    invoke-static {p1}, Lcom/huawei/ims/ImsCallModification;->hasError(Lcom/huawei/ims/ImsCallModification$CallModify;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 207
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 209
    :cond_8
    return-void
.end method

.method public rejectConnectionTypeChange()V
    .locals 4

    .line 494
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-nez v0, :cond_0

    .line 495
    const-string v0, "VideoCall_ImsCallModification"

    const-string v1, "rejectConnectionTypeChange callModifyRequest is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void

    .line 499
    :cond_0
    new-instance v0, Lcom/huawei/ims/ImsCallModification$CallModify;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallDetails()Lcom/huawei/ims/CallDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    iget v2, v2, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/ImsCallModification$CallModify;-><init>(Lcom/huawei/ims/CallDetails;I)V

    .line 501
    .local v0, "callModify":Lcom/huawei/ims/ImsCallModification$CallModify;
    const-string v1, "VideoCall_ImsCallModification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting Change request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " keep as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/huawei/ims/ImsRIL;->modifyCallConfirm(Landroid/os/Message;Lcom/huawei/ims/ImsCallModification$CallModify;)V

    .line 504
    iput-object v2, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 505
    return-void
.end method

.method public requestLTEInfo(IILandroid/os/Message;)V
    .locals 1
    .param p1, "enableReport"    # I
    .param p2, "threshold"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 393
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/ims/ImsRIL;->requestGetLTEInfo(IILandroid/os/Message;)V

    .line 396
    :cond_0
    return-void
.end method

.method public update(Lcom/huawei/ims/DriverCallIms;)V
    .locals 2
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .line 292
    if-nez p1, :cond_0

    .line 293
    const-string v0, "update, dc is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 294
    return-void

    .line 301
    :cond_0
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v0, v0, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 303
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallModification;->mAvpRetryAllowed:Z

    .line 305
    :cond_1
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v0, v0, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    const-string v0, "videocall: update: Not a videocall CASE"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->clearPendingVTMultiTask()V

    .line 308
    iput v1, p0, Lcom/huawei/ims/ImsCallModification;->mMultiTaskRetryCount:I

    .line 309
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v0, v0, Lcom/huawei/ims/CallDetails;->call_type:I

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    if-ne v0, v1, :cond_3

    .line 315
    const-string v0, "videocall update: current call type is same as callModifyRequest"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 320
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->updatePreviousVTCallType()V

    .line 325
    return-void
.end method
