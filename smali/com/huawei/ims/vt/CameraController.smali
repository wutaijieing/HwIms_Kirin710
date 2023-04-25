.class public Lcom/huawei/ims/vt/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/huawei/ims/vt/ImsMedia$CameraListener;
.implements Lcom/huawei/ims/ICallListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;
    }
.end annotation


# static fields
.field public static final CAAS_EVENT_PARAM_READY:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

.field private static final CALL_TYPE_MO:I = 0x1

.field private static final CALL_TYPE_MT:I = 0x2

.field private static final EVENT_RETRY_TO_OPEN_CARMERA:I = 0x1

.field private static final INVALID_RETURN_VALUE:I = 0x1

.field private static final INVALID_SESSION_ID:I = -0x1

.field private static final MAX_CAMERA_RADIO:I = 0x1

.field private static final OPEN_CAMERA_DELAY:I = 0x64

.field private static final OPEN_CAMERA_FAIL_RETRY:I = -0x2

.field private static final PREVIEW_HEIGHT:I = 0x5a0

.field private static final PREVIEW_WIDTH:I = 0x438

.field private static final STATE_DEFAULT:I = -0x1

.field private static final STATE_HOLDING:I = 0x0

.field private static final STATE_RESUME:I = 0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraController"

.field private static mCallSessionState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCameraIdForSessoion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mImsSDKResIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;

.field private static mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/huawei/ims/vt/CameraController;


# instance fields
.field private mBgVideoCallShouldResume:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCAMERASesId:I

.field private mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

.field private mConferencedSession:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

.field private mFristToMergeCall:Z

.field private mHandler:Landroid/os/Handler;

.field private mHavePauseAndStop:Z

.field mHoldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            "Ljava/util/Set<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIMSSDKResId:I

.field private mIsHandupCurrentCallSession:Z

.field private mLocalBroadcastManager:Lcom/huawei/vtproxy/LocalBroadcastManager;

.field private mMedia:Lcom/huawei/ims/vt/ImsMedia;

.field private mPreSetSurface:Landroid/view/Surface;

.field private mSDKCameraOpen:Z

.field private mTryOpenCameraCallSession:Lcom/huawei/ims/ImsCallSessionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/vt/CameraController;->mImsSDKResIdSet:Ljava/util/Set;

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraController;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mSDKCameraOpen:Z

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 85
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mFristToMergeCall:Z

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mConferencedSession:Ljava/util/ArrayList;

    .line 88
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mIsHandupCurrentCallSession:Z

    .line 90
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mBgVideoCallShouldResume:Z

    .line 95
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mHavePauseAndStop:Z

    .line 110
    new-instance v0, Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;-><init>(Lcom/huawei/ims/vt/CameraController;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mHandler:Landroid/os/Handler;

    .line 121
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/huawei/ims/vt/CameraController;->mIMSSDKResId:I

    .line 122
    iput v0, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    .line 546
    new-instance v0, Lcom/huawei/ims/vt/CameraController$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraController$1;-><init>(Lcom/huawei/ims/vt/CameraController;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMedia;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "media"    # Lcom/huawei/ims/vt/ImsMedia;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mSDKCameraOpen:Z

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 85
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mFristToMergeCall:Z

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mConferencedSession:Ljava/util/ArrayList;

    .line 88
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mIsHandupCurrentCallSession:Z

    .line 90
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mBgVideoCallShouldResume:Z

    .line 95
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mHavePauseAndStop:Z

    .line 110
    new-instance v0, Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;-><init>(Lcom/huawei/ims/vt/CameraController;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mHandler:Landroid/os/Handler;

    .line 121
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/huawei/ims/vt/CameraController;->mIMSSDKResId:I

    .line 122
    iput v0, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    .line 546
    new-instance v0, Lcom/huawei/ims/vt/CameraController$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraController$1;-><init>(Lcom/huawei/ims/vt/CameraController;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 483
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraController;->mContext:Landroid/content/Context;

    .line 484
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraController;->mMedia:Lcom/huawei/ims/vt/ImsMedia;

    .line 485
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mMedia:Lcom/huawei/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/huawei/ims/vt/ImsMedia;->setCameraListener(Lcom/huawei/ims/vt/ImsMedia$CameraListener;)V

    .line 486
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/vtproxy/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/huawei/vtproxy/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mLocalBroadcastManager:Lcom/huawei/vtproxy/LocalBroadcastManager;

    .line 487
    invoke-direct {p0}, Lcom/huawei/ims/vt/CameraController;->registerVTBroadcast()V

    .line 488
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/vt/CameraController;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/vt/CameraController;

    .line 37
    iget v0, p0, Lcom/huawei/ims/vt/CameraController;->mIMSSDKResId:I

    return v0
.end method

.method static synthetic access$002(Lcom/huawei/ims/vt/CameraController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/vt/CameraController;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Lcom/huawei/ims/vt/CameraController;->mIMSSDKResId:I

    return p1
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 37
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mImsSDKResIdSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/ims/vt/CameraController;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/vt/CameraController;

    .line 37
    iget v0, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    return v0
.end method

.method static synthetic access$300(Lcom/huawei/ims/vt/CameraController;)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/vt/CameraController;

    .line 37
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/ims/vt/CameraController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/vt/CameraController;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraController;->resumeImsRTPStream(I)V

    return-void
.end method

.method public static getInstance()Lcom/huawei/ims/vt/CameraController;
    .locals 2

    .line 477
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_0
    sget-object v1, Lcom/huawei/ims/vt/CameraController;->sInstance:Lcom/huawei/ims/vt/CameraController;

    monitor-exit v0

    return-object v1

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static init(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMedia;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "media"    # Lcom/huawei/ims/vt/ImsMedia;

    .line 130
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-object v1, Lcom/huawei/ims/vt/CameraController;->sInstance:Lcom/huawei/ims/vt/CameraController;

    if-nez v1, :cond_0

    .line 132
    new-instance v1, Lcom/huawei/ims/vt/CameraController;

    invoke-direct {v1, p0, p1}, Lcom/huawei/ims/vt/CameraController;-><init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMedia;)V

    sput-object v1, Lcom/huawei/ims/vt/CameraController;->sInstance:Lcom/huawei/ims/vt/CameraController;

    .line 134
    :cond_0
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private noticeCameraFailed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 3
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "hasFailed"    # Z

    .line 300
    if-nez p1, :cond_0

    .line 301
    const-string v0, "CameraController"

    const-string v1, "sendCameraStatus: session is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 305
    :cond_0
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCameraStatus: Notifying Session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 307
    .local v0, "provider":Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v0, p2}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->sendCameraStatus(Z)V

    .line 311
    :cond_1
    return-void
.end method

.method private pauseImsRTPStream(I)V
    .locals 5
    .param p1, "currentCallType"    # I

    .line 810
    invoke-static {p1}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v0

    .line 811
    .local v0, "direction":I
    invoke-static {v0}, Lcom/huawei/ims/vt/RTPController;->pauseRTPStream(I)I

    move-result v1

    .line 812
    .local v1, "result":I
    const-string v2, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallSessionHold result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return-void
.end method

.method private pauseVideoAndStopPreview(Lcom/huawei/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "cp"    # Landroid/telephony/ims/ImsCallProfile;

    .line 784
    const-string v0, "CameraController"

    const-string v1, "pauseVideoAndStopPreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    if-nez p2, :cond_0

    .line 786
    const-string v0, "CameraController"

    const-string v1, "pauseVideoAndStopPreview cp null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return-void

    .line 789
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/vt/CameraController;->setPreviewSurface(Landroid/view/Surface;)V

    .line 790
    iget v0, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v0

    .line 791
    .local v0, "currentVideoState":I
    new-instance v1, Landroid/telecom/VideoProfile;

    or-int/lit8 v2, v0, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 792
    .local v1, "requestProfile":Landroid/telecom/VideoProfile;
    new-instance v2, Landroid/telecom/VideoProfile;

    invoke-direct {v2, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 793
    .local v2, "fromProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v3

    .line 794
    .local v3, "provider":Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
    if-nez v3, :cond_1

    .line 795
    const-string v4, "CameraController"

    const-string v5, "pauseVideoAndStopPreview,provider is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-void

    .line 798
    :cond_1
    invoke-virtual {v3, v2, v1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 799
    iget-object v4, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 800
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/huawei/ims/vt/CameraController;->mHavePauseAndStop:Z

    .line 802
    :cond_2
    return-void
.end method

.method private recoverToSetCurrentSessionId(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 832
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 833
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 834
    .local v0, "enableSetCurrentSessionId":Z
    :goto_0
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 835
    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 836
    .local v1, "currentSessionId":I
    invoke-static {v1}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 838
    .end local v1    # "currentSessionId":I
    :cond_1
    return-void
.end method

.method private registerVTBroadcast()V
    .locals 3

    .line 589
    const-string v0, "CameraController"

    const-string v1, "registerVTBroadcast"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 591
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mLocalBroadcastManager:Lcom/huawei/vtproxy/LocalBroadcastManager;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/vtproxy/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 593
    return-void
.end method

.method private removeInvalidCallSession()V
    .locals 4

    .line 876
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 877
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 879
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 880
    .local v2, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->getCall()Lcom/huawei/ims/DriverCallIms;

    move-result-object v3

    if-nez v3, :cond_0

    .line 881
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 883
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    .end local v2    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_0
    goto :goto_0

    .line 884
    :cond_1
    return-void
.end method

.method private replaceConferenceSession(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 280
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceConferenceSession session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 291
    :cond_0
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 296
    return-void
.end method

.method private resumeImsRTPStream(I)V
    .locals 5
    .param p1, "currentCallType"    # I

    .line 821
    invoke-static {p1}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v0

    .line 822
    .local v0, "direction":I
    invoke-static {v0}, Lcom/huawei/ims/vt/RTPController;->resumeRTPStream(I)I

    move-result v1

    .line 823
    .local v1, "result":I
    const-string v2, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallSessionResumed result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-void
.end method


# virtual methods
.method public cleanPreStatus()V
    .locals 1

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mPreSetSurface:Landroid/view/Surface;

    .line 115
    return-void
.end method

.method public close(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 8
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "isHangUpCall"    # Z

    .line 328
    const-string v0, "CameraController"

    const-string v1, "close camera"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mConferencedSession:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mConferencedSession:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mConferencedSession:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraController;->replaceConferenceSession(Lcom/huawei/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mConferencedSession:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 340
    const-string v0, "CameraController"

    const-string v1, "There are other sessions in conference, so we don\'t release conf session in IMS SDK"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 345
    :cond_1
    :goto_0
    if-eqz p1, :cond_10

    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 352
    :cond_2
    const/4 v0, 0x1

    .line 353
    .local v0, "shouldCameraRelease":Z
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 354
    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 355
    .local v1, "sessionId":I
    invoke-static {v1}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    move-result v4

    .line 356
    .local v4, "result":I
    const-string v5, "CameraController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close sure set now CurrentSessionID  result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    if-ne v4, v3, :cond_3

    .line 358
    const/4 v0, 0x0

    .line 361
    .end local v1    # "sessionId":I
    .end local v4    # "result":I
    :cond_3
    iget-boolean v1, p0, Lcom/huawei/ims/vt/CameraController;->mSDKCameraOpen:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_5

    if-eqz v0, :cond_5

    .line 362
    const-string v1, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSDKCameraOpen is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/huawei/ims/vt/CameraController;->mSDKCameraOpen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isMT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->isMT()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->isMT()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 365
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraRelease(I)I

    goto :goto_1

    .line 367
    :cond_4
    invoke-static {v3}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraRelease(I)I

    .line 369
    :goto_1
    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 370
    .restart local v1    # "sessionId":I
    sget-object v4, Lcom/huawei/ims/vt/CameraController;->mImsSDKResIdSet:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 371
    sget-object v4, Lcom/huawei/ims/vt/CameraController;->mImsSDKResIdSet:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 375
    .end local v1    # "sessionId":I
    :cond_5
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mTryOpenCameraCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mTryOpenCameraCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 376
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    iput-object v4, p0, Lcom/huawei/ims/vt/CameraController;->mTryOpenCameraCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 381
    :cond_6
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 382
    const-string v1, "CameraController"

    const-string v5, "close camera mConferenceCallSession = null"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iput-object v4, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 386
    :cond_7
    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 387
    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_8
    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 390
    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_9
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 393
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 394
    .local v1, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 395
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .end local v1    # "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    :cond_a
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->getHoldCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v1

    .line 398
    .local v1, "holdCallSessionImp":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v1, :cond_b

    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v2, :cond_b

    .line 399
    iput-boolean v3, p0, Lcom/huawei/ims/vt/CameraController;->mIsHandupCurrentCallSession:Z

    .line 405
    :cond_b
    if-eqz p2, :cond_c

    .line 406
    const-string v2, "CameraController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isHangUpCall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-direct {p0}, Lcom/huawei/ims/vt/CameraController;->removeInvalidCallSession()V

    goto :goto_2

    .line 411
    :cond_c
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :goto_2
    if-eqz v0, :cond_d

    .line 415
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraController;->recoverToSetCurrentSessionId(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 419
    :cond_d
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveVideoCall()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_e

    .line 420
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    iput-boolean v5, p0, Lcom/huawei/ims/vt/CameraController;->mSDKCameraOpen:Z

    .line 422
    iput-boolean v5, p0, Lcom/huawei/ims/vt/CameraController;->mIsHandupCurrentCallSession:Z

    .line 423
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 424
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 425
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 427
    iput-boolean v5, p0, Lcom/huawei/ims/vt/CameraController;->mFristToMergeCall:Z

    .line 431
    :cond_e
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 432
    iput-object v4, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 433
    iput-boolean v5, p0, Lcom/huawei/ims/vt/CameraController;->mHavePauseAndStop:Z

    .line 434
    iput-boolean v5, p0, Lcom/huawei/ims/vt/CameraController;->mBgVideoCallShouldResume:Z

    .line 439
    :cond_f
    const-string v2, "CameraController"

    const-string v3, "close camera end"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 346
    .end local v0    # "shouldCameraRelease":Z
    .end local v1    # "holdCallSessionImp":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_10
    :goto_3
    const-string v0, "CameraController"

    const-string v1, "close don\'t contains Key return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 5

    .line 315
    const-string v0, "CameraController"

    const-string v1, "getCameraCapabilities"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v0, Landroid/telecom/VideoProfile$CameraCapabilities;

    const/16 v1, 0x438

    const/16 v2, 0x5a0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    return-object v0
.end method

.method public getCureentCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    return-object v0
.end method

.method public getHoldCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 4

    .line 901
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 902
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 903
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 904
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 905
    const-string v2, "CameraController"

    const-string v3, "getHoldCallSessionImp"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    return-object v2

    .line 908
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 909
    :cond_1
    const-string v1, "CameraController"

    const-string v2, "getHoldCallSessionImp return null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v1, 0x0

    return-object v1
.end method

.method public getOtherCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 4

    .line 888
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 889
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 890
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 891
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 892
    const-string v2, "CameraController"

    const-string v3, "getOtherCallSessionImp "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    return-object v2

    .line 895
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 896
    :cond_1
    const-string v1, "CameraController"

    const-string v2, "getOtherCallSessionImp return null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v1, 0x0

    return-object v1
.end method

.method public initBgVideoCallShouldResume()V
    .locals 1

    .line 918
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mBgVideoCallShouldResume:Z

    .line 919
    return-void
.end method

.method public isBgVideoCallShouldResume()Z
    .locals 1

    .line 915
    iget-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mBgVideoCallShouldResume:Z

    return v0
.end method

.method public isCurrentHaveMoreThanOneVideoCall()Z
    .locals 6

    .line 842
    const/4 v0, 0x0

    .line 843
    .local v0, "videoCallNum":I
    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 844
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 845
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 846
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 847
    add-int/lit8 v0, v0, 0x1

    .line 848
    const-string v3, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCurrentHaveMoreThanOneVideoCall videoCallNum  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 852
    :cond_1
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 853
    const-string v3, "CameraController"

    const-string v4, "isCurrentHaveMoreThanOneVideoCall return true"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return v2

    .line 856
    :cond_2
    const-string v2, "CameraController"

    const-string v3, "isCurrentHaveMoreThanOneVideoCall return false"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v2, 0x0

    return v2
.end method

.method public isCurrentHaveVideoCall()Z
    .locals 4

    .line 861
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 862
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 863
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 864
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 865
    const-string v2, "CameraController"

    const-string v3, "isCurrentHaveVideoCall return true"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v2, 0x1

    return v2

    .line 868
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 869
    :cond_1
    const-string v1, "CameraController"

    const-string v2, "isCurrentHaveVideoCall return false"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const/4 v1, 0x0

    return v1
.end method

.method public isParamReady()Z
    .locals 2

    .line 578
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mImsSDKResIdSet:Ljava/util/Set;

    iget v1, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    const/4 v0, 0x1

    return v0

    .line 581
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCallSessionAdded(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "callSession"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 523
    if-nez p1, :cond_0

    .line 524
    const-string v0, "CameraController"

    const-string v1, "onCallSessionAdded callSession==null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-void

    .line 527
    :cond_0
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallSessionAdded currentCallType set default session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 529
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_1
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 532
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_2
    return-void
.end method

.method public onCallSessionRemoved(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "callSession"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 542
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallSessionRemoved only to know is doClose"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void
.end method

.method public onCameraConfigChanged(IISLandroid/view/Surface;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fps"    # S
    .param p4, "surface"    # Landroid/view/Surface;

    .line 495
    return-void
.end method

.method public onMediaDeinitialized()V
    .locals 0

    .line 513
    return-void
.end method

.method public onRecordingDisabled()V
    .locals 0

    .line 507
    return-void
.end method

.method public onRecordingEnabled()V
    .locals 0

    .line 501
    return-void
.end method

.method public open(Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 145
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open: camearId is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "cameraOpened":Z
    const/4 v1, 0x0

    .line 150
    .local v1, "cameraIdChanged":Z
    if-nez p1, :cond_0

    .line 151
    const-string v2, "CameraController"

    const-string v3, "open: Invalid camera id, null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mConferencedSession:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-eq p2, v2, :cond_1

    .line 156
    const-string v2, "CameraController"

    const-string v3, "another callsession in conference try to open camera"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0, p2}, Lcom/huawei/ims/vt/CameraController;->replaceConferenceSession(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 160
    :cond_1
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    const/4 v0, 0x1

    .line 162
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 163
    .local v2, "currentCameraId":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 164
    const/4 v1, 0x1

    .line 168
    .end local v2    # "currentCameraId":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_3

    .line 169
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_3
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 173
    const-string v2, "CameraController"

    const-string v3, "open alrady open the Camera"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 175
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 176
    .local v2, "sesId":I
    invoke-static {v2}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 177
    invoke-direct {p0, p2, v4}, Lcom/huawei/ims/vt/CameraController;->noticeCameraFailed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 178
    iput v2, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    .line 179
    return-void

    .line 183
    .end local v2    # "sesId":I
    :cond_4
    const/4 v2, 0x1

    if-eqz v0, :cond_8

    :try_start_0
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_5

    goto :goto_1

    .line 254
    :cond_5
    if-eqz v1, :cond_7

    .line 255
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->switchCameras()I

    move-result v3

    .line 257
    .local v3, "result":I
    const-string v5, "CameraController"

    const-string v6, "switchCameras"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-nez v3, :cond_6

    .line 260
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-direct {p0, p2, v4}, Lcom/huawei/ims/vt/CameraController;->noticeCameraFailed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    goto :goto_0

    .line 265
    :cond_6
    const-string v4, "CameraController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switch camera failed, the cameraId is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0, p2, v2}, Lcom/huawei/ims/vt/CameraController;->noticeCameraFailed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 270
    .end local v3    # "result":I
    :goto_0
    goto/16 :goto_4

    .line 271
    :cond_7
    const-string v2, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open the camera again, ignore, the cameraId is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 273
    :catch_0
    move-exception v2

    goto/16 :goto_5

    .line 185
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveVideoCall()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 190
    iget-boolean v3, p0, Lcom/huawei/ims/vt/CameraController;->mHavePauseAndStop:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mPreSetSurface:Landroid/view/Surface;

    if-nez v3, :cond_9

    .line 192
    iput-boolean v4, p0, Lcom/huawei/ims/vt/CameraController;->mHavePauseAndStop:Z

    goto :goto_2

    .line 194
    :cond_9
    const-string v3, "CameraController"

    const-string v5, "open mHavePauseAndStop is false need pauseVideoAndStopPreview"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/huawei/ims/vt/CameraController;->pauseVideoAndStopPreview(Lcom/huawei/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    .line 198
    :cond_a
    :goto_2
    if-eqz p2, :cond_c

    .line 200
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallSessionImpl;->isMT()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraOpen(II)I

    move-result v3

    iput v3, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    goto :goto_3

    .line 203
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v2}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraOpen(II)I

    move-result v3

    iput v3, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    .line 205
    :goto_3
    const-string v3, "CameraController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open camera result session id is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "call type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallSessionImpl;->isMT()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_c
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mTryOpenCameraCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 210
    iget v3, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    if-ltz v3, :cond_e

    .line 211
    sget-object v3, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iput-boolean v2, p0, Lcom/huawei/ims/vt/CameraController;->mSDKCameraOpen:Z

    .line 217
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 218
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    iget v3, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget v2, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    invoke-static {v2}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 221
    iget-boolean v2, p0, Lcom/huawei/ims/vt/CameraController;->mFristToMergeCall:Z

    if-eqz v2, :cond_d

    .line 222
    const-string v2, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open mFristToMergeCall is true , mConferenceCallSession "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 224
    iput-boolean v4, p0, Lcom/huawei/ims/vt/CameraController;->mFristToMergeCall:Z

    .line 229
    :cond_d
    invoke-direct {p0, p2, v4}, Lcom/huawei/ims/vt/CameraController;->noticeCameraFailed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    goto :goto_4

    .line 231
    :cond_e
    iget v3, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_f

    .line 232
    const-string v3, "CameraController"

    const-string v4, "open the camera failed, wrong call type"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-boolean v2, p0, Lcom/huawei/ims/vt/CameraController;->mSDKCameraOpen:Z

    .line 235
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraController;->mTryOpenCameraCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 237
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 238
    .local v3, "msg":Landroid/os/Message;
    iput v2, v3, Landroid/os/Message;->what:I

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 240
    iput-object p2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 242
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_4

    .line 243
    :cond_f
    const-string v3, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open the camera failed, the cameraId is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0, p2, v2}, Lcom/huawei/ims/vt/CameraController;->noticeCameraFailed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 248
    sget-object v2, Lcom/huawei/ims/vt/ImsVideoGlobals;->mChrReporter:Lcom/huawei/ims/SDKChrReport;

    if-eqz v2, :cond_10

    .line 249
    sget-object v2, Lcom/huawei/ims/vt/ImsVideoGlobals;->mChrReporter:Lcom/huawei/ims/SDKChrReport;

    invoke-virtual {v2}, Lcom/huawei/ims/SDKChrReport;->getCameraOpenFailedReason()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_10
    :goto_4
    goto :goto_6

    .line 273
    :goto_5
    nop

    .line 274
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CameraController"

    const-string v4, "NumberFormatException when open camera"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_6
    return-void
.end method

.method public setCallSessionHold(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 6
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "mtHold"    # Z

    .line 605
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallSessionHold session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentCallSession:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    const-string v0, "CameraController"

    const-string v1, "setCallSessionHold map don\'t contains key retrun"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void

    .line 611
    :cond_0
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 612
    const-string v0, "CameraController"

    const-string v1, "setCallSessionHold have default session return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void

    .line 616
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 618
    .local v0, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v1

    .line 619
    .local v1, "currentCallType":I
    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v2

    .line 621
    .local v2, "isVideoCallType":Z
    if-eqz v2, :cond_5

    .line 622
    sget-object v3, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 626
    sget-object v3, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 627
    .local v3, "sessionId":I
    invoke-static {v3}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 629
    .end local v3    # "sessionId":I
    :cond_2
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 630
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 631
    .local v3, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .end local v3    # "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 634
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 635
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    :goto_0
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mPreSetSurface:Landroid/view/Surface;

    if-nez v3, :cond_4

    .line 639
    iput-boolean v4, p0, Lcom/huawei/ims/vt/CameraController;->mBgVideoCallShouldResume:Z

    .line 641
    :cond_4
    invoke-direct {p0, v1}, Lcom/huawei/ims/vt/CameraController;->pauseImsRTPStream(I)V

    .line 643
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraController;->recoverToSetCurrentSessionId(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 646
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveMoreThanOneVideoCall()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez p2, :cond_5

    .line 647
    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/vt/CameraController;->pauseVideoAndStopPreview(Lcom/huawei/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    .line 650
    :cond_5
    return-void
.end method

.method public setCallSessionResumed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 10
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "mtResume"    # Z

    .line 658
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallSessionResumed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "ImsCallSessionImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    const-string v0, "CameraController"

    const-string v1, "setCallSessionResumed map don\'t contains key retrun"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 665
    .local v0, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 666
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 667
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .end local v0    # "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 672
    .local v0, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v1

    .line 673
    .local v1, "currentCallType":I
    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v2

    .line 674
    .local v2, "isVideoCallType":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 675
    sget-object v4, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    iget-boolean v4, p0, Lcom/huawei/ims/vt/CameraController;->mIsHandupCurrentCallSession:Z

    if-nez v4, :cond_a

    .line 677
    sget-object v4, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v3

    .line 678
    .local v4, "onlyHaveOneCall":Z
    :goto_0
    const/4 v6, 0x0

    .line 679
    .local v6, "shouldResume":Z
    iget-object v7, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 680
    :cond_4
    const/4 v6, 0x1

    .line 682
    :cond_5
    iget-object v7, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v6, :cond_a

    .line 684
    const/4 v7, 0x0

    .line 685
    .local v7, "mIsVideoPaused":Z
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v8

    .line 686
    .local v8, "provider":Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
    if-eqz v8, :cond_6

    .line 687
    invoke-virtual {v8}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->isVideoPaused()Z

    move-result v7

    .line 689
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveVideoCall()Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz p2, :cond_8

    :cond_7
    if-eqz p2, :cond_9

    if-nez v7, :cond_9

    .line 691
    :cond_8
    invoke-direct {p0, v1}, Lcom/huawei/ims/vt/CameraController;->resumeImsRTPStream(I)V

    goto :goto_1

    .line 693
    :cond_9
    if-eqz p2, :cond_a

    iget-object v9, p0, Lcom/huawei/ims/vt/CameraController;->mPreSetSurface:Landroid/view/Surface;

    if-nez v9, :cond_a

    .line 694
    iput-boolean v5, p0, Lcom/huawei/ims/vt/CameraController;->mBgVideoCallShouldResume:Z

    .line 700
    .end local v4    # "onlyHaveOneCall":Z
    .end local v6    # "shouldResume":Z
    .end local v7    # "mIsVideoPaused":Z
    .end local v8    # "provider":Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
    :cond_a
    :goto_1
    iput-boolean v3, p0, Lcom/huawei/ims/vt/CameraController;->mIsHandupCurrentCallSession:Z

    .line 701
    return-void
.end method

.method public setCurrentSessionMerged()V
    .locals 6

    .line 734
    const-string v0, "CameraController"

    const-string v1, "setCurrentSessionMerged"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    const-string v0, "CameraController"

    const-string v1, "voice conference merged, we don\'t need to handle!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-nez v0, :cond_2

    .line 742
    const-string v0, "CameraController"

    const-string v1, "setCurrentSessionMerged mFristToMergeCall = true "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mFristToMergeCall:Z

    .line 745
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 746
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 747
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 748
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    const-string v2, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add session to conference:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mConferencedSession:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mImsSDKResIdSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 752
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 753
    :cond_1
    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 754
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    goto/16 :goto_2

    .line 755
    :cond_2
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentSessionMerged remove callSession only mConferenceCallSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v0, -0x1

    .line 757
    .local v0, "confSessionId":I
    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 758
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 759
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 760
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 761
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 764
    :cond_3
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mConferencedSession:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 765
    const-string v3, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after merge, add new session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mConferencedSession:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    sget-object v3, Lcom/huawei/ims/vt/CameraController;->mImsSDKResIdSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 770
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_4
    goto :goto_1

    .line 771
    :cond_5
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 772
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .end local v0    # "confSessionId":I
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mHavePauseAndStop:Z

    .line 776
    return-void
.end method

.method public setCurrentSessionStarted(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 5
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 709
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentSessionStarted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "ImsCallSessionImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    const-string v0, "CameraController"

    const-string v1, "setCallSessionHold map don\'t contains key retrun"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return-void

    .line 715
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 716
    .local v0, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v1

    .line 717
    .local v1, "currentCallType":I
    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v2

    .line 718
    .local v2, "isVideoCallType":Z
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 721
    .local v3, "isCurrentSession":Z
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveVideoCall()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveMoreThanOneVideoCall()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->getOtherCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 724
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->getOtherCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/huawei/ims/vt/CameraController;->pauseVideoAndStopPreview(Lcom/huawei/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 726
    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveMoreThanOneVideoCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 728
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/huawei/ims/vt/CameraController;->close(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 731
    :cond_2
    :goto_0
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 449
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSurface, surface is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-nez p1, :cond_0

    .line 452
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->stopCameraPreview()I

    .line 454
    const-string v0, "CameraController"

    const-string v1, "stopCameraPreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mPreSetSurface:Landroid/view/Surface;

    .line 457
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mPreSetSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_1

    .line 461
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraController;->mPreSetSurface:Landroid/view/Surface;

    .line 462
    invoke-static {p1}, Lcom/huawei/vtproxy/ImsCameraClient;->setNearEndSurface(Landroid/view/Surface;)I

    .line 463
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->startCameraPreview()I

    .line 465
    const-string v0, "CameraController"

    const-string v1, "start to setNearEndSurface and startCameraPreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_1
    return-void
.end method
