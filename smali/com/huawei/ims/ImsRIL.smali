.class public final Lcom/huawei/ims/ImsRIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "ImsRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsRIL$ImsRilHandler;,
        Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_BLOCKING_MESSAGE_RESPONSE_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field private static final EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE:I = 0x1a

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0xbb8

.field private static final LENGTH_OF_REQUEST_GETLTEINFO:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "RILJ_IMS"

.field static final MAX_COMMAND_BYTES:I = 0x2000

.field static final MAX_RETRY_COUNT:I = 0x8

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "RILJ_ACK_WL"

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5

.field static final SOCKET_NAME_IMSRIL:[Ljava/lang/String;

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field public static final VIDEO_RING_TONES:Ljava/lang/String; = "ims_video_ring"

.field static mRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected imsRILDefaultWorkSource:Landroid/os/WorkSource;

.field final imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field protected mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field protected final mCallModifyRegistrants:Landroid/os/RegistrantList;

.field protected mCallStateRegistrants:Landroid/os/RegistrantList;

.field private final mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field private mContext:Landroid/content/Context;

.field protected mHandoverStatusRegistrants:Landroid/os/RegistrantList;

.field public mHoldingToneRegistrants:Landroid/os/RegistrantList;

.field protected mImsCSRedialRegistrations:Landroid/os/RegistrantList;

.field protected mImsDMCNRegistrants:Landroid/os/RegistrantList;

.field protected mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mImsRegModeRegistrants:Landroid/os/RegistrantList;

.field protected mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

.field protected mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

.field protected mModifyCallRegistrants:Landroid/os/RegistrantList;

.field protected final mModifyCallResultRegistrants:Landroid/os/RegistrantList;

.field protected mMtStatusReportRegistrants:Landroid/os/RegistrantList;

.field final mPhoneId:Ljava/lang/Integer;

.field mRadioIndication:Lcom/huawei/ims/ImsRadioIndication;

.field volatile mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

.field final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mRadioProxyDeathRecipient:Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/huawei/ims/ImsRadioResponse;

.field mRequestMessagesPending:I

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/ImsRILRequest;",
            ">;"
        }
    .end annotation
.end field

.field public mRingRegistrant:Landroid/os/Registrant;

.field protected mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field protected mSpeechInfoRegistrants:Landroid/os/RegistrantList;

.field protected mSrvStatusRegistrations:Landroid/os/RegistrantList;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mVoWiFiRegErrReportRegistrations:Landroid/os/RegistrantList;

.field protected mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 312
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/huawei/ims/ImsRIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    .line 338
    const-string v0, "rildi"

    const-string v1, "rildi2"

    const-string v2, "rildi3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/ImsRIL;->SOCKET_NAME_IMSRIL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # Ljava/lang/Integer;

    .line 609
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    .line 310
    iput v0, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    .line 311
    new-instance v1, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    .line 319
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    .line 322
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 341
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    .line 342
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 347
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    .line 352
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    .line 355
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVoWiFiRegErrReportRegistrations:Landroid/os/RegistrantList;

    .line 382
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    .line 383
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    .line 424
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    .line 436
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    .line 444
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    .line 452
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 460
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 469
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 480
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    .line 493
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    .line 494
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2488
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    .line 2500
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    .line 3008
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mCallModifyRegistrants:Landroid/os/RegistrantList;

    .line 3010
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    .line 3259
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    .line 611
    iput-object p1, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    .line 614
    iput-object p2, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    .line 617
    new-instance v2, Lcom/huawei/ims/ImsRadioResponse;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRadioResponse;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioResponse:Lcom/huawei/ims/ImsRadioResponse;

    .line 618
    new-instance v2, Lcom/huawei/ims/ImsRadioIndication;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRadioIndication;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioIndication:Lcom/huawei/ims/ImsRadioIndication;

    .line 619
    new-instance v2, Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    .line 620
    new-instance v2, Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyDeathRecipient:Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

    .line 621
    new-instance v2, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 622
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 623
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    .line 624
    iput v0, p0, Lcom/huawei/ims/ImsRIL;->mPhoneType:I

    .line 626
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 627
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "RILJ_IMS"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 628
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 629
    const-string v2, "RILJ_ACK_WL"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 630
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 631
    const-string v2, "ro.ril.wake_lock_timeout"

    const v3, 0xea60

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockTimeout:I

    .line 633
    const-string v2, "ro.ril.wake_lock_timeout"

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLockTimeout:I

    .line 635
    iput v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesPending:I

    .line 636
    iput v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    .line 637
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 638
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/ImsRIL;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsRIL;
    .param p1, "x1"    # I

    .line 267
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->clearWakeLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/huawei/ims/ImsRIL;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsRIL;

    .line 267
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->resetProxyAndRequestList()V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/ims/ImsRIL;Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsRIL;
    .param p1, "x1"    # Landroid/os/Message;

    .line 267
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v0

    return-object v0
.end method

.method private acquireWakeLock(Lcom/huawei/ims/ImsRILRequest;I)V
    .locals 7
    .param p1, "rr"    # Lcom/huawei/ims/ImsRILRequest;
    .param p2, "wakeLockType"    # I

    .line 3289
    monitor-enter p1

    .line 3290
    :try_start_0
    iget v0, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to aquire wakelock for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3292
    monitor-exit p1

    return-void

    .line 3295
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 3331
    new-instance v0, Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 3321
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3322
    :try_start_1
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3323
    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    .line 3325
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3326
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 3327
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    iget v3, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3328
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 3329
    goto :goto_1

    .line 3328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 3297
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3298
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3299
    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    .line 3300
    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    .line 3302
    iget-object v1, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 3303
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3304
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_1

    .line 3305
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_0

    .line 3307
    :cond_1
    iget-object v2, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3309
    :goto_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3312
    :cond_2
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v3, p1, Lcom/huawei/ims/ImsRILRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    iget v5, p1, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    iget v6, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 3315
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3316
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 3317
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3318
    .end local v1    # "clientId":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3319
    nop

    .line 3334
    :goto_1
    :try_start_4
    iput p2, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    .line 3335
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3336
    return-void

    .line 3318
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    .line 3331
    :goto_2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Acquiring Invalid Wakelock type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3332
    monitor-exit p1

    return-void

    .line 3335
    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addRequest(Lcom/huawei/ims/ImsRILRequest;)V
    .locals 2
    .param p1, "rr"    # Lcom/huawei/ims/ImsRILRequest;

    .line 959
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRIL;->acquireWakeLock(Lcom/huawei/ims/ImsRILRequest;I)V

    .line 960
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 961
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    monitor-exit v0

    .line 963
    return-void

    .line 962
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 2035
    .local p0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2036
    .local v0, "ret":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 2037
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 2036
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2039
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private clearRequestList(IZ)V
    .locals 5
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 3404
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3405
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3406
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3407
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsRILRequest;

    .line 3408
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/huawei/ims/ImsRILRequest;->onError(ILjava/lang/Object;)V

    .line 3409
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->decrementWakeLock(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3410
    invoke-virtual {v3}, Lcom/huawei/ims/ImsRILRequest;->release()V

    .line 3406
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3412
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3413
    .end local v1    # "count":I
    monitor-exit v0

    .line 3414
    return-void

    .line 3413
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearWakeLock(I)Z
    .locals 5
    .param p1, "wakeLockType"    # I

    .line 3377
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 3378
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 3379
    :try_start_0
    iget v3, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return v1

    .line 3380
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTE: mWakeLockCount is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "at time of clearing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3382
    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    .line 3383
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3384
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 3385
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3386
    monitor-exit v2

    return v0

    .line 3387
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3389
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 3390
    :try_start_1
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    return v1

    .line 3391
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3392
    monitor-exit v2

    return v0

    .line 3393
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method static convertHalImsEndCause(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;Lcom/huawei/ims/ImsRIL;)[I
    .locals 6
    .param p0, "imsEndCause"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;
    .param p1, "ril"    # Lcom/huawei/ims/ImsRIL;

    .line 2043
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2044
    .local v0, "imsEndCauseResponse":[I
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;->callIndex:I

    .line 2045
    .local v1, "imsCallIndex":I
    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;->err:I

    .line 2047
    .local v2, "imsErr":I
    const-string v3, "RILJ_IMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RILImsModifyEndCause received: callIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " callErr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    const/4 v3, 0x0

    aput v1, v0, v3

    .line 2052
    const/4 v3, 0x1

    aput v2, v0, v3

    .line 2053
    return-object v0
.end method

.method private convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 3191
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private createRilUiccAuth(I[B[B)Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    .locals 5
    .param p1, "type"    # I
    .param p2, "rand"    # [B
    .param p3, "auth"    # [B

    .line 1449
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;-><init>()V

    .line 1450
    .local v0, "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1451
    .local v1, "rands":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1452
    .local v2, "auths":Ljava/lang/String;
    iput p1, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;->authType:I

    .line 1453
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;->randLen:I

    .line 1454
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;->authLen:I

    .line 1455
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;

    iput-object v1, v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;->rand:Ljava/lang/String;

    .line 1456
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;

    iput-object v2, v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;->auth:Ljava/lang/String;

    .line 1457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "randlens = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authlens = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rands = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auths = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg.authType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;->authType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1462
    return-object v0
.end method

.method private createRilUpdateFile(I[B)Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;
    .locals 4
    .param p1, "file_id"    # I
    .param p2, "data"    # [B

    .line 1503
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;-><init>()V

    .line 1504
    .local v0, "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    .line 1505
    .local v1, "datas":Ljava/lang/String;
    array-length v2, p2

    .line 1506
    .local v2, "dataLen":I
    const/4 v3, 0x0

    iput v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;->appType:I

    .line 1507
    iput p1, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;->fileId:I

    .line 1508
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;->fileParams:Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMFILEPARAMS;

    iput v2, v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMFILEPARAMS;->len:I

    .line 1509
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;->fileParams:Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMFILEPARAMS;

    iput-object v1, v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMFILEPARAMS;->data:Ljava/lang/String;

    .line 1510
    return-object v0
.end method

.method private decrementWakeLock(Lcom/huawei/ims/ImsRILRequest;)V
    .locals 8
    .param p1, "rr"    # Lcom/huawei/ims/ImsRILRequest;

    .line 3339
    monitor-enter p1

    .line 3340
    :try_start_0
    iget v0, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    packed-switch v0, :pswitch_data_0

    .line 3370
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3366
    :pswitch_0
    goto/16 :goto_3

    .line 3342
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3343
    :try_start_1
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v2, p1, Lcom/huawei/ims/ImsRILRequest;->mClientId:Ljava/lang/String;

    iget v3, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    iget v4, p1, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    .line 3345
    iget v5, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    iget v5, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    sub-int/2addr v5, v7

    goto :goto_0

    .line 3343
    :cond_0
    move v5, v6

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 3346
    iget-object v1, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 3347
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_2

    .line 3349
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 3350
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 3351
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3353
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3356
    :cond_2
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    if-le v2, v7, :cond_3

    .line 3357
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    sub-int/2addr v2, v7

    iput v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    goto :goto_1

    .line 3359
    :cond_3
    iput v6, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    .line 3360
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3362
    .end local v1    # "clientId":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    .line 3363
    goto :goto_3

    .line 3362
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 3368
    :pswitch_2
    goto :goto_3

    .line 3370
    :goto_2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decrementing Invalid Wakelock type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logw(Ljava/lang/String;)V

    .line 3372
    :goto_3
    const/4 v0, -0x1

    iput v0, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    .line 3373
    monitor-exit p1

    .line 3374
    return-void

    .line 3373
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findAndRemoveRequestFromList(I)Lcom/huawei/ims/ImsRILRequest;
    .locals 5
    .param p1, "serial"    # I

    .line 3417
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3418
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 3419
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsRILRequest;

    .line 3420
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    iget v4, v3, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    if-ne v4, p1, :cond_1

    .line 3421
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3422
    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    if-lez v4, :cond_0

    .line 3423
    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    .line 3424
    :cond_0
    monitor-exit v0

    return-object v3

    .line 3418
    .end local v3    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3427
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    monitor-exit v0

    .line 3428
    const/4 v0, 0x0

    return-object v0

    .line 3427
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 562
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    return-object v0

    .line 568
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    .line 571
    .local v1, "huaweiRadio1_0":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    :try_start_0
    sget-object v2, Lcom/huawei/ims/ImsRIL;->SOCKET_NAME_IMSRIL:[Ljava/lang/String;

    .line 572
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    aget-object v2, v2, v3

    .line 571
    invoke-static {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getService(Ljava/lang/String;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v2

    move-object v1, v2

    .line 573
    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    goto :goto_1

    .line 574
    :catch_0
    move-exception v2

    .line 575
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioProxy: huaweiradioProxy got V1_0 exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 578
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    if-eqz v2, :cond_2

    .line 579
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyDeathRecipient:Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 580
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 579
    invoke-interface {v2, v3, v4, v5}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 581
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioResponse:Lcom/huawei/ims/ImsRadioResponse;

    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRadioIndication:Lcom/huawei/ims/ImsRadioIndication;

    invoke-interface {v2, v3, v4}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setResponseFunctionsHuawei(Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 588
    .end local v1    # "huaweiRadio1_0":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    :cond_2
    goto :goto_2

    .line 585
    :catch_1
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResponseFunctions occurs exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 589
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    if-nez v1, :cond_4

    .line 590
    if-eqz p1, :cond_3

    .line 591
    const/4 v1, 0x1

    .line 592
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 591
    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 593
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 595
    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 596
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    .line 595
    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 599
    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    return-object v0
.end method

.method private getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 3272
    if-eqz p1, :cond_0

    .line 3273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3276
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V
    .locals 2
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "rr"    # Lcom/huawei/ims/ImsRILRequest;

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 558
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->resetProxyAndRequestList()V

    .line 559
    return-void
.end method

.method private releaseWakeLockIfDone()V
    .locals 3

    .line 653
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 654
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesPending:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    if-nez v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->removeMessages(I)V

    .line 658
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 660
    :cond_0
    monitor-exit v0

    .line 661
    return-void

    .line 660
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # I

    .line 717
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    sparse-switch p0, :sswitch_data_0

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown request> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 792
    :sswitch_0
    const-string v0, "RIL_REQUEST_HW_IMS_REJ_CALL"

    return-object v0

    .line 756
    :sswitch_1
    const-string v0, "RIL_REQUEST_HW_SET_VT_LTE_QUALITY_RPT_CFG"

    return-object v0

    .line 740
    :sswitch_2
    const-string v0, "HW_IMS_ADD_CONFERENCE_MEMBER"

    return-object v0

    .line 737
    :sswitch_3
    const-string v0, "HW_IMS_IMPU"

    return-object v0

    .line 729
    :sswitch_4
    const-string v0, "HW_IMS_ANSWER"

    return-object v0

    .line 764
    :sswitch_5
    const-string v0, "RIL_REQUEST_HW_RESTRAT_RILD"

    return-object v0

    .line 718
    :sswitch_6
    const-string v0, "IMS_REGISTRATION_STATE"

    return-object v0

    .line 788
    :sswitch_7
    const-string v0, "HW_IMS_REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 734
    :sswitch_8
    const-string v0, "HW_IMS_SET_MUTE"

    return-object v0

    .line 730
    :sswitch_9
    const-string v0, "HW_IMS_DTMF"

    return-object v0

    .line 799
    :pswitch_0
    const-string v0, "RIL_REQUEST_HW_VOWIFI_SET_REG_ERR_RPT"

    return-object v0

    .line 796
    :pswitch_1
    const-string v0, "HW_GET_IMS_SMS_CONFIG"

    return-object v0

    .line 795
    :pswitch_2
    const-string v0, "HW_SET_IMS_SMS_CONFIG"

    return-object v0

    .line 790
    :pswitch_3
    const-string v0, "RIL_REQUEST_HW_VOLTE_IMPI"

    return-object v0

    .line 789
    :pswitch_4
    const-string v0, "RIL_REQUEST_HW_VOLTE_DOMAIN"

    return-object v0

    .line 760
    :pswitch_5
    const-string v0, "RIL_REQUEST_CANCEL_IMS_VIDEO_CALL"

    return-object v0

    .line 726
    :pswitch_6
    const-string v0, "HW_IMS_LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 786
    :pswitch_7
    const-string v0, "RIL_REQUEST_HW_SET_IMSVT_CAPABILITY"

    return-object v0

    .line 783
    :pswitch_8
    const-string v0, "RIL_REQUEST_HW_IMS_BATTERY_STATUS"

    return-object v0

    .line 780
    :pswitch_9
    const-string v0, "HW_SET_WIFI_EMERGENCY_AID"

    return-object v0

    .line 777
    :pswitch_a
    const-string v0, "HW_IMS_GET_DM_USER"

    return-object v0

    .line 776
    :pswitch_b
    const-string v0, "HW_IMS_GET_DM_SMS"

    return-object v0

    .line 775
    :pswitch_c
    const-string v0, "HW_IMS_GET_DM_DYN"

    return-object v0

    .line 774
    :pswitch_d
    const-string v0, "HW_IMS_GET_DM_TIMER"

    return-object v0

    .line 773
    :pswitch_e
    const-string v0, "HW_IMS_GET_DM_PCSCF"

    return-object v0

    .line 772
    :pswitch_f
    const-string v0, "HW_IMS_SET_DM_SMS"

    return-object v0

    .line 771
    :pswitch_10
    const-string v0, "HW_IMS_SET_DM_TIMER"

    return-object v0

    .line 770
    :pswitch_11
    const-string v0, "HW_IMS_SET_DM_DYN"

    return-object v0

    .line 769
    :pswitch_12
    const-string v0, "HW_IMS_SET_DM_PCSCF"

    return-object v0

    .line 762
    :pswitch_13
    const-string v0, "HW_IMS_MODIFY_CALL_CONFIRM"

    return-object v0

    .line 758
    :pswitch_14
    const-string v0, "HW_IMS_MODIFY_CALL_INITIATE"

    return-object v0

    .line 753
    :pswitch_15
    const-string v0, "RIL_REQUEST_HW_UICC_KS_NAF"

    return-object v0

    .line 752
    :pswitch_16
    const-string v0, "RIL_REQUEST_HW_GET_UICC_FILE"

    return-object v0

    .line 751
    :pswitch_17
    const-string v0, "RIL_REQUEST_HW_UICC_FILE_UPDATE"

    return-object v0

    .line 750
    :pswitch_18
    const-string v0, "RIL_REQUEST_HW_UICC_GBA_BOOTSTRAP"

    return-object v0

    .line 749
    :pswitch_19
    const-string v0, "RIL_REQUEST_HW_UICC_AUTH"

    return-object v0

    .line 746
    :pswitch_1a
    const-string v0, "HW_IMS_SET_CALL_WAITING"

    return-object v0

    .line 743
    :pswitch_1b
    const-string v0, "HW_IMS_SET_CLIR"

    return-object v0

    .line 720
    :pswitch_1c
    const-string v0, "HW_IMS_GET_CURRENT_CALLS"

    return-object v0

    .line 719
    :pswitch_1d
    const-string v0, "HW_IMS_DIAL"

    return-object v0

    .line 732
    :pswitch_1e
    const-string v0, "HW_IMS_DTMF_STOP"

    return-object v0

    .line 731
    :pswitch_1f
    const-string v0, "HW_IMS_DTMF_START"

    return-object v0

    .line 728
    :pswitch_20
    const-string v0, "HW_IMS_UDUB"

    return-object v0

    .line 735
    :pswitch_21
    const-string v0, "HW_IMS_CONFERENCE"

    return-object v0

    .line 733
    :pswitch_22
    const-string v0, "HW_IMS_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 724
    :pswitch_23
    const-string v0, "HW_IMS_HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 723
    :pswitch_24
    const-string v0, "HW_IMS_HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 722
    :pswitch_25
    const-string v0, "HW_IMS_HANGUP"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7fb
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x81e
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x821
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x831
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x85a
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x865
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_9
        0x35 -> :sswitch_8
        0x48 -> :sswitch_7
        0x70 -> :sswitch_6
        0x7d5 -> :sswitch_5
        0x806 -> :sswitch_4
        0x815 -> :sswitch_3
        0x81c -> :sswitch_2
        0x854 -> :sswitch_1
        0x87a -> :sswitch_0
    .end sparse-switch
.end method

.method private resetProxyAndRequestList()V
    .locals 2

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    .line 552
    invoke-static {}, Lcom/huawei/ims/ImsRILRequest;->resetSerial()V

    .line 553
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/ImsRIL;->clearRequestList(IZ)V

    .line 554
    return-void
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # I

    .line 807
    sparse-switch p0, :sswitch_data_0

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown response> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 844
    :sswitch_0
    const-string v0, "RIL_UNSOL_HW_VOWIFI_REG_ERR_REPORT"

    return-object v0

    .line 841
    :sswitch_1
    const-string v0, "RIL_UNSOL_HW_IMS_REG_TYPE_IND"

    return-object v0

    .line 838
    :sswitch_2
    const-string v0, "RIL_UNSOL_HW_IMS_HOLD_TONE_IND"

    return-object v0

    .line 834
    :sswitch_3
    const-string v0, "RIL_UNSOL_HW_IMS_DMCN"

    return-object v0

    .line 815
    :sswitch_4
    const-string v0, "RIL_UNSOL_HW_LTE_RRC_INFO"

    return-object v0

    .line 814
    :sswitch_5
    const-string v0, "RIL_UNSOL_HW_LTE_PDCP_INFO"

    return-object v0

    .line 830
    :sswitch_6
    const-string v0, "RIL_UNSOL_HW_IMS_CS_REDIAL_NOTIFY"

    return-object v0

    .line 827
    :sswitch_7
    const-string v0, "UNSOL_HW_IMS_MT_STATUS_REPORT"

    return-object v0

    .line 825
    :sswitch_8
    const-string v0, "UNSOL_HW_IMS_RESPONSE_MODIFY_END_CAUSE"

    return-object v0

    .line 824
    :sswitch_9
    const-string v0, "UNSOL_HW_IMS_RESPONSE_MODIFY_IND"

    return-object v0

    .line 812
    :sswitch_a
    const-string v0, "UNSOL_HW_IMS_VOICE_BAND_INFO"

    return-object v0

    .line 821
    :sswitch_b
    const-string v0, "UNSOL_HW_IMS_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 818
    :sswitch_c
    const-string v0, "UNSOL_HW_IMS_SRV_STATUS_UPDATE"

    return-object v0

    .line 823
    :sswitch_d
    const-string v0, "UNSOL_HW_IMS_RESPONSE_HANDOVER"

    return-object v0

    .line 811
    :sswitch_e
    const-string v0, "UNSOL_HW_IMS_RINGBACK_TONE"

    return-object v0

    .line 810
    :sswitch_f
    const-string v0, "UNSOL_HW_IMS_CALL_RING"

    return-object v0

    .line 809
    :sswitch_10
    const-string v0, "UNSOL_HW_IMS_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 808
    :sswitch_11
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40d -> :sswitch_11
        0xbc3 -> :sswitch_10
        0xbc4 -> :sswitch_f
        0xbc5 -> :sswitch_e
        0xbc6 -> :sswitch_d
        0xbc7 -> :sswitch_c
        0xbca -> :sswitch_b
        0xbcb -> :sswitch_a
        0xbd5 -> :sswitch_9
        0xbd6 -> :sswitch_8
        0xbdc -> :sswitch_7
        0xbde -> :sswitch_6
        0xbe5 -> :sswitch_5
        0xbe6 -> :sswitch_4
        0xbec -> :sswitch_3
        0xbee -> :sswitch_2
        0xbef -> :sswitch_1
        0xbf0 -> :sswitch_0
    .end sparse-switch
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "req"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 666
    if-nez p2, :cond_0

    .line 667
    const-string v0, ""

    return-object v0

    .line 672
    :cond_0
    instance-of v0, p2, [I

    if-eqz v0, :cond_2

    .line 673
    move-object v0, p2

    check-cast v0, [I

    .line 674
    .local v0, "intArray":[I
    array-length v1, v0

    .line 675
    .local v1, "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-lez v1, :cond_1

    .line 677
    const/4 v3, 0x0

    .line 678
    .local v3, "i":I
    add-int/lit8 v4, v3, 0x1

    .local v4, "i":I
    aget v3, v0, v3

    .end local v3    # "i":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 679
    :goto_0
    if-ge v4, v1, :cond_1

    .line 680
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i":I
    aget v4, v0, v4

    .end local v4    # "i":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 679
    move v4, v3

    goto :goto_0

    .line 683
    .end local v3    # "i":I
    :cond_1
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "s":Ljava/lang/String;
    goto :goto_3

    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 686
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    .line 687
    .local v0, "strings":[Ljava/lang/String;
    array-length v1, v0

    .line 688
    .restart local v1    # "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 689
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    if-lez v1, :cond_3

    .line 690
    const/4 v3, 0x0

    .line 691
    .restart local v3    # "i":I
    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "i":I
    aget-object v3, v0, v3

    .end local v3    # "i":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    :goto_1
    if-ge v4, v1, :cond_3

    .line 693
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i":I
    aget-object v4, v0, v4

    .end local v4    # "i":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    move v4, v3

    goto :goto_1

    .line 696
    .end local v3    # "i":I
    :cond_3
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "s":Ljava/lang/String;
    goto :goto_3

    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/16 v0, 0x7fc

    if-ne p1, v0, :cond_6

    .line 699
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    .line 700
    .local v0, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 701
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 702
    .local v2, "callListSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 703
    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 705
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    .end local v2    # "callListSize":I
    .local v0, "s":Ljava/lang/String;
    goto :goto_3

    .line 707
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 709
    .restart local v0    # "s":Ljava/lang/String;
    :goto_3
    return-object v0
.end method

.method private sendAck()V
    .locals 5

    .line 1992
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    const/16 v2, 0x320

    invoke-static {v2, v1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1995
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1996
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1998
    :try_start_0
    invoke-interface {v1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2002
    :goto_0
    goto :goto_1

    .line 1999
    :catch_0
    move-exception v2

    .line 2000
    .local v2, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->resetProxyAndRequestList()V

    .line 2001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAck occues exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 2004
    :cond_0
    const-string v2, "Error trying to send ack, radioProxy = null"

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2006
    :goto_1
    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->release()V

    .line 2007
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1698
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1699
    return-void
.end method

.method public acceptCall(Landroid/os/Message;I)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptCall callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 969
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    const-string v1, "HwIms"

    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->getCHRReportPhoneId()I

    move-result v2

    const-string v3, "AP_FLOW_SUC"

    const/4 v4, 0x2

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x806

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 975
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 976
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 977
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 978
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 980
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->acceptImsCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    goto :goto_0

    .line 981
    :catch_0
    move-exception v2

    .line 982
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acceptCall"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 985
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acceptCall(Landroid/os/Message;II)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I
    .param p3, "presentation"    # I

    .line 990
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 991
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1812
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1813
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1807
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1808
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1802
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1803
    return-void
.end method

.method public addToConference(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1282
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1283
    const/16 v1, 0x81c

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1288
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1289
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1290
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1291
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1294
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->addImsConfMember(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    goto :goto_0

    .line 1295
    :catch_0
    move-exception v2

    .line 1296
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "addToConference"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1299
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2118
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2119
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 1649
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1650
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1636
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1637
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1640
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1641
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2310
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2311
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2304
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2305
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1264
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x10

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1267
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1269
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1270
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1271
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1273
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->conference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    goto :goto_0

    .line 1274
    :catch_0
    move-exception v2

    .line 1275
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "conference"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1278
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1789
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1790
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1753
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1754
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1749
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1750
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1661
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1662
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .line 1666
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1667
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/huawei/ims/CallDetails;Landroid/os/Message;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lcom/huawei/ims/CallDetails;
    .param p4, "result"    # Landroid/os/Message;

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dial address= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " clirMode= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callDetails= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 932
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    const-string v2, "HwIms"

    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->getCHRReportPhoneId()I

    move-result v3

    const-string v4, "AP_FLOW_SUC"

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x7fb

    invoke-static {v1, p4, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 938
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;-><init>()V

    .line 939
    .local v1, "dialInfo":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;
    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    iput-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;->address:Ljava/lang/String;

    .line 940
    iput p2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;->clir:I

    .line 941
    if-eqz p3, :cond_1

    .line 942
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget v3, p3, Lcom/huawei/ims/CallDetails;->call_type:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    .line 943
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget v3, p3, Lcom/huawei/ims/CallDetails;->call_domain:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    .line 945
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v3}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 946
    invoke-direct {p0, p4}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v2

    .line 947
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v2, :cond_2

    .line 948
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 951
    :try_start_0
    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v2, v3, v1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->imsDial(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    goto :goto_1

    .line 952
    :catch_0
    move-exception v3

    .line 953
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "dial"

    invoke-direct {p0, v4, v3, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 956
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 899
    const-string v0, "ImsRIL:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 902
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mWakeLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLockTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 907
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRequestMessagesPending="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesPending:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRequestMessagesWaiting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 910
    .local v0, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mRequestList count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 912
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsRILRequest;

    .line 913
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v5}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    .end local v3    # "rr":Lcom/huawei/ims/ImsRILRequest;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 915
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTestingEmergencyCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    return-void

    .line 915
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 903
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .line 2266
    const-string v0, "exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 2268
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v0, :cond_1

    .line 2269
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2270
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_1

    .line 2271
    iget-object v1, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 2272
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 2273
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2275
    :cond_0
    return-void

    .line 2279
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2280
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1303
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1304
    const/16 v1, 0x48

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1306
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1307
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1308
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1309
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1311
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->explicitCallTransfer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    goto :goto_0

    .line 1312
    :catch_0
    move-exception v2

    .line 1313
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "explicitCallTransfer"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1316
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getAllowedCarriers(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2908
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2909
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2091
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2092
    return-void
.end method

.method public getBalongSim(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2924
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2925
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2110
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2111
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2222
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2223
    return-void
.end method

.method public getCHRReportPhoneId()I
    .locals 3

    .line 1095
    const/4 v0, 0x0

    .line 1096
    .local v0, "phoneid":I
    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_0

    .line 1097
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1099
    :cond_0
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    .line 1101
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCHRReportPhoneId phoneid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1102
    return v0
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 1826
    const-string v0, "getCLIR"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1827
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1828
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2250
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2251
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2201
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2202
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1037
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x7fc

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1039
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1042
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1043
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1044
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1046
    :try_start_0
    const-string v2, "getCurrentCalls,call getCurrentImsCallsV1_2"

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1048
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getCurrentImsCallsV1_2(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    goto :goto_0

    .line 1050
    :catch_0
    move-exception v2

    .line 1051
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCurrentCalls"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1056
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDMDYN(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3125
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x860

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3127
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3128
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3129
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3130
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3132
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getDmDynamicPram(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3135
    goto :goto_0

    .line 3133
    :catch_0
    move-exception v2

    .line 3134
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDMDYN"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3137
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDMPCSCF(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3095
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85e

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3097
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3098
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3099
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3100
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3102
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getDmPcscf(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3105
    goto :goto_0

    .line 3103
    :catch_0
    move-exception v2

    .line 3104
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDMPCSCF"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3107
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDMSMS(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3140
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x861

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3142
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3143
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3144
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3145
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3147
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getSmsPsi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3150
    goto :goto_0

    .line 3148
    :catch_0
    move-exception v2

    .line 3149
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDMSMS"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3152
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDMTIMER(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3110
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85f

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3112
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3113
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3114
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3115
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3117
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getDmTimer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3120
    goto :goto_0

    .line 3118
    :catch_0
    move-exception v2

    .line 3119
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDMTIMER"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3122
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDMUSER(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3155
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x862

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3157
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3158
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3159
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3160
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3162
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getDmUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3165
    goto :goto_0

    .line 3163
    :catch_0
    move-exception v2

    .line 3164
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDMUSER"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3167
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1657
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1658
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1718
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1719
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2218
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2219
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2205
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2206
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2963
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1678
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1679
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1682
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1683
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1670
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1671
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1674
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1675
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1616
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1617
    return-void
.end method

.method public getIccSlotsStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 3004
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 3005
    return-void
.end method

.method public getImsImpu(ILandroid/os/Message;)V
    .locals 4
    .param p1, "source"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1076
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1077
    const/16 v1, 0x815

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1079
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1081
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1082
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1083
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1085
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getImsImpu(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    goto :goto_0

    .line 1086
    :catch_0
    move-exception v2

    .line 1087
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsImpu"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1090
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1059
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x70

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1061
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1062
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1063
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1064
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1066
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getImsRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    goto :goto_0

    .line 1067
    :catch_0
    move-exception v2

    .line 1068
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsRegistrationState"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1071
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsSmsConfig(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3222
    const-string v0, "getImsSmsConfig ENTER"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3223
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 3224
    const/16 v1, 0x86c

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3225
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3226
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3227
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3228
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3230
    :try_start_0
    const-string v2, "Calling getImsSmsConfig -VENDOR 1.2"

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3231
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getImsSmsConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3234
    goto :goto_0

    .line 3232
    :catch_0
    move-exception v2

    .line 3233
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsSmsConfig no support in vendor.huawei.hardware.radio.V1_1.IRadio "

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3236
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1017
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x867

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1021
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1023
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1024
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1025
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1028
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getLastImsCallFailCause(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    goto :goto_0

    .line 1030
    :catch_0
    move-exception v2

    .line 1031
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getLastCallFailCause"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1034
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1702
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1703
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2360
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2361
    return-void
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .line 2884
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2885
    const/4 v0, 0x0

    return v0
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 3239
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1706
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1707
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2176
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2177
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2087
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2088
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1722
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1723
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2365
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2366
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2172
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2173
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1690
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1691
    return-void
.end method

.method public getQosStatus(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1785
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1786
    return-void
.end method

.method public getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .line 2371
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2372
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1710
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1711
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2184
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2185
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2315
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2316
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1714
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1715
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 2164
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2165
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangupConnection: ImsIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0xc

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1000
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1003
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1004
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1005
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1007
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->hangup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    goto :goto_0

    .line 1008
    :catch_0
    move-exception v2

    .line 1009
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupConnection"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1012
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1228
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0xe

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1231
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1233
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1234
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1235
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1237
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->hangupForegroundResumeBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    goto :goto_0

    .line 1238
    :catch_0
    move-exception v2

    .line 1239
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupForegroundResumeBackground"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1242
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1246
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0xd

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1249
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1251
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1252
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1253
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1255
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->hangupWaitingOrBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    goto :goto_0

    .line 1256
    :catch_0
    move-exception v2

    .line 1257
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupWaitingOrBackground"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1260
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2874
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2953
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .line 2868
    return-void
.end method

.method public iccGetATR(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2878
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2879
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .line 1817
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1818
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .line 1822
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1823
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2871
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "p2"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2950
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .line 2961
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .line 2958
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 2126
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2127
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2130
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2131
    return-void
.end method

.method public isSupportCnap()Z
    .locals 4

    .line 3433
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 3434
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3435
    .local v0, "manager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3436
    return v1

    .line 3439
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v2

    .line 3440
    .local v2, "subId":I
    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 3441
    .local v3, "bundle":Landroid/os/PersistableBundle;
    if-nez v3, :cond_1

    .line 3442
    return v1

    .line 3445
    :cond_1
    const-string v1, "suppport_cnap_bool"

    invoke-virtual {v3, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isSupportVideoRingTones()Z
    .locals 5

    .line 3450
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 3451
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3452
    .local v0, "manager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3453
    return v1

    .line 3456
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v2

    .line 3457
    .local v2, "subId":I
    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 3459
    .local v3, "bundle":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_1

    const-string v4, "ims_video_ring"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3460
    const-string v1, "ims_video_ring"

    invoke-virtual {v3, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 3462
    :cond_1
    return v1
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RILJ_IMS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return-void
.end method

.method public logUnimplemented()V
    .locals 2

    .line 872
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 873
    .local v0, "e":Ljava/lang/Exception;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 875
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Unimplemented method. Stack trace: "

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 877
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RILJ_IMS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RILJ_IMS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-void
.end method

.method public logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RILJ_IMS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallConfirm callModify = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x832

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1168
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1170
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;-><init>()V

    .line 1171
    .local v1, "imsCallModify":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;
    iget v2, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    iput v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->callIndex:I

    .line 1172
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->curr_call_details:Lcom/huawei/ims/CallDetails;

    iget v3, v3, Lcom/huawei/ims/CallDetails;->call_type:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    .line 1173
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->curr_call_details:Lcom/huawei/ims/CallDetails;

    iget v3, v3, Lcom/huawei/ims/CallDetails;->call_domain:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    .line 1174
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v3, v3, Lcom/huawei/ims/CallDetails;->call_type:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    .line 1175
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v3, v3, Lcom/huawei/ims/CallDetails;->call_domain:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    .line 1176
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v2

    .line 1177
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v2, :cond_0

    .line 1178
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1181
    :try_start_0
    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v2, v3, v1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->modifyImsCallConfirm(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    goto :goto_0

    .line 1182
    :catch_0
    move-exception v3

    .line 1183
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "modifyCallConfirm"

    invoke-direct {p0, v4, v3, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1186
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallInitiate callModify = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x831

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1116
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1118
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;-><init>()V

    .line 1119
    .local v1, "imsCallModify":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;
    iget v2, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    iput v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->callIndex:I

    .line 1120
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->curr_call_details:Lcom/huawei/ims/CallDetails;

    iget v3, v3, Lcom/huawei/ims/CallDetails;->call_type:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    .line 1121
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->curr_call_details:Lcom/huawei/ims/CallDetails;

    iget v3, v3, Lcom/huawei/ims/CallDetails;->call_domain:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    .line 1122
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v3, v3, Lcom/huawei/ims/CallDetails;->call_type:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    .line 1123
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v3, v3, Lcom/huawei/ims/CallDetails;->call_domain:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    .line 1124
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v2

    .line 1125
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v2, :cond_0

    .line 1126
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1129
    :try_start_0
    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v2, v3, v1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->modifyImsCallInitiate(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    goto :goto_0

    .line 1130
    :catch_0
    move-exception v3

    .line 1131
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "modifyCallInitiate"

    invoke-direct {p0, v4, v3, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1134
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public modifyCallUpgradeCancel(Landroid/os/Message;I)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallUpgradeCancel callId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1148
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x868

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1150
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1152
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1153
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1154
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1156
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->cancelImsVideoCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    goto :goto_0

    .line 1157
    :catch_0
    move-exception v2

    .line 1158
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "modifyCallUpgradeCancel"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1161
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public modifyQos(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p3, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1773
    .local p2, "qosFlows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1774
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2972
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 0
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2966
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 0
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 2969
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2975
    return-void
.end method

.method processIndication(I)V
    .locals 1
    .param p1, "indicationType"    # I

    .line 1979
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1980
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->sendAck()V

    .line 1981
    const-string v0, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1985
    :cond_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 4
    .param p1, "serial"    # I

    .line 2011
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2013
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2014
    .local v1, "size":I
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 2015
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsRILRequest;

    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    goto :goto_0

    .line 2017
    .end local v2    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRequestAck: Unexpected serial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2018
    const/4 v2, 0x0

    .end local v1    # "size":I
    .restart local v2    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :goto_0
    move-object v1, v2

    .line 2021
    .end local v2    # "rr":Lcom/huawei/ims/ImsRILRequest;
    .local v1, "rr":Lcom/huawei/ims/ImsRILRequest;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2022
    if-nez v1, :cond_1

    .line 2023
    const-string v0, "processRequestAck: Unexpected solicited ack response! "

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2025
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rr.serialString() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Ack < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2027
    :goto_1
    return-void

    .line 2021
    .end local v1    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;
    .locals 6
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 1918
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->serial:I

    .line 1919
    .local v0, "serial":I
    iget v1, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->type:I

    .line 1921
    .local v1, "type":I
    const/4 v2, 0x0

    .line 1924
    .local v2, "ret":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->findAndRemoveRequestFromList(I)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v3

    .line 1925
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-nez v3, :cond_0

    .line 1926
    const/4 v4, 0x0

    return-object v4

    .line 1931
    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 1932
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response received for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    .line 1933
    invoke-static {v5}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Sending ack to ril.cpp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1932
    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1941
    :cond_1
    iget v4, v3, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    .line 1947
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->releaseWakeLockIfDone()V

    .line 1948
    return-object v3
.end method

.method processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 3
    .param p1, "rr"    # Lcom/huawei/ims/ImsRILRequest;
    .param p2, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 1959
    iget v0, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v0, :cond_1

    .line 1960
    const/16 v0, 0x815

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    if-ne v0, v1, :cond_0

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v1}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    .line 1962
    invoke-direct {p0, v1, p3}, Lcom/huawei/ims/ImsRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1961
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1964
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v1}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    .line 1965
    invoke-direct {p0, v1, p3}, Lcom/huawei/ims/ImsRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1964
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1968
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v1}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1970
    iget v0, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/huawei/ims/ImsRILRequest;->onError(ILjava/lang/Object;)V

    .line 1972
    :goto_0
    iget v0, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->type:I

    if-nez v0, :cond_2

    .line 1973
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->decrementWakeLock(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1975
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->release()V

    .line 1976
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2147
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2148
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 2105
    const-string v0, "queryClip"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 2106
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2107
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2101
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2102
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallWaiting serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1852
    return-void
.end method

.method public queryCardType(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2934
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2935
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2226
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2227
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 2327
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2328
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .line 2333
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2334
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2238
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2239
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2769
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2770
    return-void
.end method

.method public registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2408
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2409
    return-void
.end method

.method public registerForCallModifyResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3024
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3025
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3026
    return-void
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 454
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 455
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 456
    return-void
.end method

.method public registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2719
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2720
    return-void
.end method

.method public registerForCarrierInfoForImsiEncryption(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2464
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2465
    return-void
.end method

.method public registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2794
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2795
    return-void
.end method

.method public registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2825
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2826
    return-void
.end method

.method public registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2815
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2816
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2709
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2710
    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2837
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v0, :cond_0

    .line 2838
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 2840
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2843
    :goto_0
    return-void
.end method

.method public registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 365
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 366
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 367
    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2615
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2616
    return-void
.end method

.method public registerForImsCSRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 405
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 406
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 407
    return-void
.end method

.method public registerForImsDMCN(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 415
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 416
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 417
    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 462
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 463
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 464
    return-void
.end method

.method public registerForImsRegMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 482
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 483
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 484
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2503
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2504
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2505
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2491
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2492
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2494
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2759
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2760
    return-void
.end method

.method public registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2454
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2455
    return-void
.end method

.method public registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3015
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3016
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3017
    return-void
.end method

.method public registerForMtStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 446
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 447
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 448
    return-void
.end method

.method public registerForNetworkScanResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2474
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2475
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2418
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2419
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2739
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2740
    return-void
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2428
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2429
    return-void
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2398
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2399
    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3262
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3263
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3264
    return-void
.end method

.method public registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2377
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2378
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2749
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2750
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2804
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2805
    return-void
.end method

.method public registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2858
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2859
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 471
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 472
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 473
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2729
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2730
    return-void
.end method

.method public registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 374
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 375
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 376
    return-void
.end method

.method public registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2515
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2516
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2779
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2780
    return-void
.end method

.method public registerForUnsolLTE_PDCPInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 386
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 387
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 388
    return-void
.end method

.method public registerForUnsolLTE_RRCInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 395
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 396
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 397
    return-void
.end method

.method public registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 438
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 439
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 440
    return-void
.end method

.method public registerForVoWiFiRegErrReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3483
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3484
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVoWiFiRegErrReportRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3485
    return-void
.end method

.method public registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2387
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2388
    return-void
.end method

.method public registerForVtFlowInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 426
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 427
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 428
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1319
    nop

    .line 1320
    const/16 v0, 0x11

    invoke-static {v0, p1}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1323
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1324
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1325
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1326
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1329
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->rejectCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    goto :goto_0

    .line 1330
    :catch_0
    move-exception v2

    .line 1331
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "rejectCall"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1334
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public rejectImsCallForCause(IILandroid/os/Message;)V
    .locals 4
    .param p1, "callIndex"    # I
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectImsCallForCause , cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1338
    nop

    .line 1339
    const/16 v0, 0x87a

    invoke-static {v0, p3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1342
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1343
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1344
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1345
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1348
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->rejectCallWithReason(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    goto :goto_0

    .line 1349
    :catch_0
    move-exception v2

    .line 1350
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "rejectImsCallForCause"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1353
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public releaseQos(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1769
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1770
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2192
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2193
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2196
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2197
    return-void
.end method

.method public requestGetLTEInfo(IILandroid/os/Message;)V
    .locals 4
    .param p1, "enableReport"    # I
    .param p2, "threshold"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1550
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1551
    const/16 v1, 0x854

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1553
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "open="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1556
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1557
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1559
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1563
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setVtLlteQualityRptCfg(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    goto :goto_0

    .line 1564
    :catch_0
    move-exception v2

    .line 1565
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestGetLTEInfo"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1568
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestGetUiccFile(ILandroid/os/Message;)V
    .locals 4
    .param p1, "file_id"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1514
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x824

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1516
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fileid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1518
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1519
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1520
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1523
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getUiccFile(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1526
    goto :goto_0

    .line 1524
    :catch_0
    move-exception v2

    .line 1525
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestGetUiccFile"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1528
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2947
    return-void
.end method

.method public requestReadHomeDomainName(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1878
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1879
    const/16 v1, 0x869

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1880
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1881
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1882
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1883
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1886
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getVolteDomain(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1889
    goto :goto_0

    .line 1887
    :catch_0
    move-exception v2

    .line 1888
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestReadHomeDomainName"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1891
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestReadIsimIMPI(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1896
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1897
    const/16 v1, 0x86a

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1898
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1899
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1900
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1901
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1904
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getVolteImpi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    goto :goto_0

    .line 1905
    :catch_0
    move-exception v2

    .line 1906
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestReadIsimIMPI"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1909
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestSetImsVtCapability(IILandroid/os/Message;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "enabled"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1572
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1573
    const/16 v1, 0x866

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1575
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "open="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1578
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1579
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1581
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1584
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setImsvtCapability(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    goto :goto_0

    .line 1585
    :catch_0
    move-exception v2

    .line 1586
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestSetImsVtCapability"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1589
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestUiccAuth([B[BLandroid/os/Message;)V
    .locals 5
    .param p1, "rand"    # [B
    .param p2, "auth"    # [B
    .param p3, "result"    # Landroid/os/Message;

    .line 1428
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x821

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1431
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1431
    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1435
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1436
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1437
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1439
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1, p2}, Lcom/huawei/ims/ImsRIL;->createRilUiccAuth(I[B[B)Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;

    move-result-object v2

    .line 1441
    .local v2, "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    :try_start_0
    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->uiccAuth(ILvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    goto :goto_0

    .line 1442
    :catch_0
    move-exception v3

    .line 1443
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "requestUiccAuth"

    invoke-direct {p0, v4, v3, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1446
    .end local v2    # "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestUiccFileUpdate(I[BLandroid/os/Message;)V
    .locals 5
    .param p1, "file_id"    # I
    .param p2, "data"    # [B
    .param p3, "result"    # Landroid/os/Message;

    .line 1485
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x823

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1487
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fileid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1487
    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1489
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1490
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1491
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1493
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRIL;->createRilUpdateFile(I[B)Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;

    move-result-object v2

    .line 1495
    .local v2, "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;
    :try_start_0
    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->updateUiccFile(ILvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    goto :goto_0

    .line 1496
    :catch_0
    move-exception v3

    .line 1497
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "requestUiccFileUpdate"

    invoke-direct {p0, v4, v3, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1500
    .end local v2    # "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestUiccGbaBootstrap([B[BLandroid/os/Message;)V
    .locals 5
    .param p1, "rand"    # [B
    .param p2, "auth"    # [B
    .param p3, "result"    # Landroid/os/Message;

    .line 1467
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x822

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1469
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1469
    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1471
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1472
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1473
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1475
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, p2}, Lcom/huawei/ims/ImsRIL;->createRilUiccAuth(I[B[B)Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;

    move-result-object v2

    .line 1477
    .local v2, "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    :try_start_0
    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->uiccGbaBootStrap(ILvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    goto :goto_0

    .line 1478
    :catch_0
    move-exception v3

    .line 1479
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "requestUiccGbaBootstrap"

    invoke-direct {p0, v4, v3, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1482
    .end local v2    # "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestUiccKsNaf(ILandroid/os/Message;)V
    .locals 4
    .param p1, "file_id"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1531
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x825

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1533
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fileid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1535
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1536
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1537
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1545
    :cond_0
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2122
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2123
    return-void
.end method

.method public restartRild(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1593
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1594
    const/16 v1, 0x7d5

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1596
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1598
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1599
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1600
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1603
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->restartRILD(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1604
    :catch_0
    move-exception v2

    .line 1605
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "restartRild"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1606
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1608
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/huawei/ims/ImsRILRequest;->onError(ILjava/lang/Object;)V

    .line 1609
    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->release()V

    .line 1611
    :goto_1
    return-void
.end method

.method public resumeQos(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1781
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1782
    return-void
.end method

.method public riseCdmaCutoffFreq(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2896
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2897
    return-void
.end method

.method public sendBatteryStatus(ILandroid/os/Message;)V
    .locals 4
    .param p1, "batterySattus"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3243
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x865

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3245
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3246
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3247
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3248
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3250
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->informBatteryStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3253
    goto :goto_0

    .line 3251
    :catch_0
    move-exception v2

    .line 3252
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendBatteryStatus"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3255
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 1727
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1728
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2246
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2247
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 1735
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1736
    return-void
.end method

.method public sendDeviceState(IZLandroid/os/Message;)V
    .locals 0
    .param p1, "stateType"    # I
    .param p2, "state"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 2059
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2060
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1357
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1358
    const/16 v1, 0x18

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1360
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1361
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1362
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1363
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1366
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->sendDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    goto :goto_0

    .line 1367
    :catch_0
    move-exception v2

    .line 1368
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendDtmf"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1371
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2155
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2156
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2159
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2160
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 1745
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1746
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 1740
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1741
    return-void
.end method

.method public sendImsRegistrationState(ILandroid/os/Message;)V
    .locals 0
    .param p1, "imsRegState"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1108
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1109
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1731
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1732
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 2939
    return-void
.end method

.method public sendSMSSetLong(ILandroid/os/Message;)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2943
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2151
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2152
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2114
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2115
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 0
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1694
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1695
    return-void
.end method

.method public setAllowedCarriers(Ljava/util/List;Landroid/os/Message;)V
    .locals 0
    .param p2, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 2913
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2914
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2143
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2144
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCLIR clirmode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1833
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x81e

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1836
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1837
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1838
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1839
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1841
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setClir(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1844
    goto :goto_0

    .line 1842
    :catch_0
    move-exception v2

    .line 1843
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setClir"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1847
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 2096
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2097
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallWaiting enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1859
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x81f

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1862
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1863
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1864
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1865
    if-eqz v1, :cond_0

    .line 1866
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1868
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setImsCallWaiting(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    goto :goto_0

    .line 1869
    :catch_0
    move-exception v2

    .line 1870
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCallWaiting"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1873
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 2449
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2450
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 2262
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2263
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 0
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .line 2254
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2255
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 2258
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2259
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2230
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2231
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaSubscription"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2234
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2235
    return-void
.end method

.method public setDMDYN(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3050
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85b

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3052
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3053
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3054
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3055
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3057
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setDmDynamicPram(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3060
    goto :goto_0

    .line 3058
    :catch_0
    move-exception v2

    .line 3059
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setDMDYN"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3062
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDMPCSCF(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3035
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85a

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3037
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3038
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3039
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3040
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3042
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setDmPcscf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3045
    goto :goto_0

    .line 3043
    :catch_0
    move-exception v2

    .line 3044
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setDMPCSCF"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3047
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDMSMS(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3080
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85d    # 3.0E-42f

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3082
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3083
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3084
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3085
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3087
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setDmSmsPsi(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3090
    goto :goto_0

    .line 3088
    :catch_0
    move-exception v2

    .line 3089
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setDMSMS"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3092
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDMTIMER(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3065
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85c

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3067
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3068
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3069
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3070
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3072
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setDmTimer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3075
    goto :goto_0

    .line 3073
    :catch_0
    move-exception v2

    .line 3074
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setDMTIMER"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3077
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "dps"    # [Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 2064
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2065
    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2789
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2790
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2339
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2340
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .line 2345
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2346
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 2213
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2214
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 2209
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2210
    return-void
.end method

.method public setISMCOEX(Ljava/lang/String;)V
    .locals 0
    .param p1, "strings"    # Ljava/lang/String;

    .line 2135
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2136
    return-void
.end method

.method public setImsSmsConfig(ILandroid/os/Message;)V
    .locals 4
    .param p1, "enabled"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3202
    const-string v0, "setImsSmsConfig ENTER "

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3203
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x86b

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3205
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3206
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3207
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3208
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3210
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setImsSmsConfiYou g -VENDOR 1.2 with enabled= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3211
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setImsSmsConfig(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3214
    goto :goto_0

    .line 3212
    :catch_0
    move-exception v2

    .line 3213
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsSmsConfig no support in vendor.huawei.hardware.radio.V1_1.IRadio"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3216
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 2902
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2903
    return-void
.end method

.method public setLTEReleaseVersion(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "state"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2928
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2929
    return-void
.end method

.method public setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V
    .locals 0
    .param p1, "hysteresisMs"    # I
    .param p2, "hysteresisDlKbps"    # I
    .param p3, "hysteresisUlKbps"    # I
    .param p4, "thresholdsDlKbps"    # [I
    .param p5, "thresholdsUlKbps"    # [I
    .param p6, "ran"    # I
    .param p7, "result"    # Landroid/os/Message;

    .line 2980
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 2180
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2181
    return-void
.end method

.method public setLogicalToPhysicalSlotMapping([ILandroid/os/Message;)V
    .locals 0
    .param p1, "physicalSlots"    # [I
    .param p2, "result"    # Landroid/os/Message;

    .line 2999
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 3000
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enableMute"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1409
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1410
    const/16 v1, 0x35

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1412
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1414
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1415
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1416
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1418
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setMute(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    goto :goto_0

    .line 1419
    :catch_0
    move-exception v2

    .line 1420
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setMute"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1423
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2078
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2079
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2083
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2084
    return-void
.end method

.method public setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2699
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2700
    return-void
.end method

.method public setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2689
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2690
    return-void
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2679
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2680
    return-void
.end method

.method public setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2669
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2670
    return-void
.end method

.method public setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2625
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2626
    return-void
.end method

.method public setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2605
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2606
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2575
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2576
    return-void
.end method

.method public setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2535
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2536
    return-void
.end method

.method public setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2545
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2546
    return-void
.end method

.method public setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2525
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2526
    return-void
.end method

.method public setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2645
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2646
    return-void
.end method

.method public setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2595
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2596
    return-void
.end method

.method public setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2555
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2556
    return-void
.end method

.method public setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2565
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2566
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2656
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    .line 2658
    return-void
.end method

.method public setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2585
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2586
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 895
    iput p1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneType:I

    .line 896
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2168
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2169
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1686
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1687
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1793
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1794
    return-void
.end method

.method public setSignalStrengthReportingCriteria(II[IILandroid/os/Message;)V
    .locals 0
    .param p1, "hysteresisMs"    # I
    .param p2, "hysteresisDb"    # I
    .param p3, "thresholdsDbm"    # [I
    .param p4, "ran"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 2984
    return-void
.end method

.method public setSimCardPower(ILandroid/os/Message;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2069
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2070
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2188
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2189
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1797
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1798
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2242
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2243
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2321
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2322
    return-void
.end method

.method public setUnsolResponseFilter(ILandroid/os/Message;)V
    .locals 0
    .param p1, "filter"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2074
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2075
    return-void
.end method

.method public setVoWiFiRegErrReportEnable(ILandroid/os/Message;)V
    .locals 4
    .param p1, "enabled"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3468
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v0

    .line 3469
    .local v0, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v0, :cond_0

    .line 3470
    const/16 v1, 0x86d

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-static {v1, p2, v2}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v1

    .line 3472
    .local v1, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v3}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3473
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3475
    :try_start_0
    iget v2, v1, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setImsRegErrReport(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3478
    goto :goto_0

    .line 3476
    :catch_0
    move-exception v2

    .line 3477
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsRegErrReport"

    invoke-direct {p0, v3, v2, v1}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3480
    .end local v1    # "rr":Lcom/huawei/ims/ImsRILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setWifiEmergencyAid(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 3171
    const-string v0, "[Wifi-Call] setWifiEmergencyAid"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3172
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x863

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3174
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3175
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3176
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_1

    .line 3177
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3179
    :try_start_0
    const-string v2, ""

    .line 3180
    .local v2, "data":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 3181
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "att_address_id_value"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 3183
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Wifi-Call] setWifiEmergencyAid data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3184
    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setWifiEmergencyAid(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3187
    .end local v2    # "data":Ljava/lang/String;
    goto :goto_0

    .line 3185
    :catch_0
    move-exception v2

    .line 3186
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWifiEmergencyAid"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3189
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V
    .locals 0
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "result"    # Landroid/os/Message;

    .line 2352
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2353
    return-void
.end method

.method public setupQosReq(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .param p1, "callId"    # I
    .param p3, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1765
    .local p2, "qosFlows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1766
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1374
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1375
    const/16 v1, 0x31

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1377
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1378
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1379
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1380
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1383
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->startDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    goto :goto_0

    .line 1384
    :catch_0
    move-exception v2

    .line 1385
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "startDtmf"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1388
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .locals 0
    .param p1, "contextId"    # I
    .param p2, "packetData"    # Landroid/net/KeepalivePacketData;
    .param p3, "intervalMillis"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 2994
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2995
    return-void
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 0
    .param p1, "nsr"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "response"    # Landroid/os/Message;

    .line 2438
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2439
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1391
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1392
    const/16 v1, 0x32

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1395
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1396
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1397
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1398
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1401
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->stopDtmf(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    goto :goto_0

    .line 1402
    :catch_0
    move-exception v2

    .line 1403
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "stopDtmf"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1406
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public stopNattKeepalive(ILandroid/os/Message;)V
    .locals 0
    .param p1, "sessionHandle"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2988
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2989
    return-void
.end method

.method public stopNetworkScan(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2443
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2444
    return-void
.end method

.method public supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1653
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1654
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1620
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1621
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1628
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1629
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2294
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2295
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2284
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2285
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1624
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1625
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1632
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1633
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2299
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2300
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2289
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2290
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1644
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1645
    return-void
.end method

.method public suspendQos(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1777
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1778
    return-void
.end method

.method public switchBalongSim(IILandroid/os/Message;)V
    .locals 0
    .param p1, "modem1ToSlot"    # I
    .param p2, "modem2ToSlot"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2919
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2920
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1190
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0xf

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1193
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1195
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1196
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1197
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1199
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->switchWaitingOrHoldingAndActive(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    goto :goto_0

    .line 1200
    :catch_0
    move-exception v2

    .line 1201
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1204
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveForIms(ILandroid/os/Message;)V
    .locals 4
    .param p1, "calltype"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1210
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0xf

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1212
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1213
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1214
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1215
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1217
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->switchImsWaitingOrHoldingAndActiveWithType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    goto :goto_0

    .line 1218
    :catch_0
    move-exception v2

    .line 1219
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "switchWaitingOrHoldingAndActiveForIms "

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1223
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 0

    .line 2890
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2891
    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2636
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2637
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 2638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    .line 2640
    :cond_0
    return-void
.end method

.method public unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2704
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2705
    return-void
.end method

.method public unSetOnCatEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2694
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2695
    return-void
.end method

.method public unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2684
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2685
    return-void
.end method

.method public unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2674
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2675
    return-void
.end method

.method public unSetOnIccSmsFull(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2610
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2611
    return-void
.end method

.method public unSetOnNITZTime(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2580
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2581
    return-void
.end method

.method public unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2540
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2541
    return-void
.end method

.method public unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2550
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2551
    return-void
.end method

.method public unSetOnNewGsmSms(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2530
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2531
    return-void
.end method

.method public unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2650
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2651
    return-void
.end method

.method public unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2600
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2601
    return-void
.end method

.method public unSetOnSmsOnSim(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2560
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2561
    return-void
.end method

.method public unSetOnSmsStatus(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2570
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2571
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2663
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 2665
    return-void
.end method

.method public unSetOnUSSD(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2590
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2591
    return-void
.end method

.method public unregisterForAvailable(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2413
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2414
    return-void
.end method

.method public unregisterForCallModifyResult(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3029
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3030
    return-void
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 458
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 459
    return-void
.end method

.method public unregisterForCallWaitingInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2724
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2725
    return-void
.end method

.method public unregisterForCarrierInfoForImsiEncryption(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2469
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2470
    return-void
.end method

.method public unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2799
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2800
    return-void
.end method

.method public unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2830
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2831
    return-void
.end method

.method public unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2820
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2821
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2714
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2715
    return-void
.end method

.method public unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2848
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v0, :cond_0

    .line 2849
    invoke-super {p0, p1}, Lcom/android/internal/telephony/BaseCommands;->unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V

    goto :goto_0

    .line 2851
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2854
    :goto_0
    return-void
.end method

.method public unregisterForHandoverStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 370
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 371
    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2620
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2621
    return-void
.end method

.method public unregisterForImsCSRedial(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 410
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 411
    return-void
.end method

.method public unregisterForImsDMCN(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 419
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 420
    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 466
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 467
    return-void
.end method

.method public unregisterForImsRegMode(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 486
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 487
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2509
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2510
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2498
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2499
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2764
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2765
    return-void
.end method

.method public unregisterForModemReset(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2459
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2460
    return-void
.end method

.method public unregisterForModifyCall(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3020
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3021
    return-void
.end method

.method public unregisterForMtStatusReport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 450
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 451
    return-void
.end method

.method public unregisterForNetworkScanResult(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2479
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2480
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2423
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2424
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2744
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2745
    return-void
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2433
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2434
    return-void
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2403
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2404
    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3267
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3268
    return-void
.end method

.method public unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2382
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2383
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2754
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2755
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2809
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2810
    return-void
.end method

.method public unregisterForRilConnected(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2863
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2864
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 475
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 476
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2734
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2735
    return-void
.end method

.method public unregisterForSrvStatusUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 379
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 380
    return-void
.end method

.method public unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2520
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2521
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2784
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2785
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2774
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2775
    return-void
.end method

.method public unregisterForUnsolLTE_PDCPInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 391
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 392
    return-void
.end method

.method public unregisterForUnsolLTE_RRCInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 400
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 401
    return-void
.end method

.method public unregisterForUnsolSpeechInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 442
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 443
    return-void
.end method

.method public unregisterForVoWiFiRegErrReport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3488
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVoWiFiRegErrReportRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3489
    return-void
.end method

.method public unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2392
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2393
    return-void
.end method

.method public unregisterForVtFlowInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 430
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 431
    return-void
.end method

.method public unsetOnIccRefresh(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2630
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2631
    return-void
.end method

.method public unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/ims/ImsRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/ims/ImsRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 885
    return-void
.end method

.method public unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/ims/ImsRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1761
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1762
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1757
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1758
    return-void
.end method
