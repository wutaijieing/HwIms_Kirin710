.class public Lcom/huawei/ims/ImsCallSessionImpl;
.super Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;,
        Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    }
.end annotation


# static fields
.field private static final CALL_COMPLETED_ELSEWHERE:Ljava/lang/String; = "Call completed elsewhere"

.field private static final CODE_HOLD_FOR_IMS:I = 0x7d1

.field private static final CODE_RESUME_FOR_IMS:I = 0x7d2

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.ims.ImsCallSessionImpl"

.field private static final EVENT_ACCEPT:I = 0x2

.field private static final EVENT_ADD_PARTICIPANT:I = 0x9

.field private static final EVENT_CLOSE_SESSION:I = 0xc

.field private static final EVENT_CONFERENCE:I = 0x6

.field private static final EVENT_DEFLECT:I = 0x8

.field private static final EVENT_DIAL:I = 0x1

.field private static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x10

.field private static final EVENT_HANGUP:I = 0x3

.field private static final EVENT_HOLD:I = 0x4

.field private static final EVENT_MUTE:I = 0xd

.field private static final EVENT_REJECT:I = 0x7

.field private static final EVENT_REMOVE_PARTICIPANT:I = 0xb

.field private static final EVENT_RESTART_RILD:I = 0xf

.field private static final EVENT_RESUME:I = 0x5

.field private static final EVENT_RIL_RECOVERY:I = 0xe

.field private static final EVENT_RINGBACK_TONE:I = 0xa

.field private static final IMS_HANDOVER_STATE_COMPLETE_FAIL:I = 0x2

.field private static final IMS_HANDOVER_STATE_COMPLETE_SUCCESS:I = 0x1

.field private static final IS_IMS_Call_VOLTE:I = 0x0

.field private static final IS_IMS_Call_VOWIFI:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionImpl"

.field private static final MAX_END_CALL_DURATION:I = 0x88b8

.field private static final MEXTI_BACKUP_NUMBER:Ljava/lang/String; = "nexti_backup_number"

.field private static final MEXTI_SEARCH_NUMBER:Ljava/lang/String; = "nexti_search_number"

.field private static final NUMBERMARKINFO_NUMBER:Ljava/lang/String; = "numbermarkinfo_number"

.field private static final RAT_TYPE_FROM_MODE_IGNORE:I = -0x1

.field public static final SUPP_NOTIFICATION_TYPE_MO:I = 0x0

.field public static final SUPP_NOTIFICATION_TYPE_MT:I = 0x1

.field public static final SUPP_SVC_CODE_MT_HOLD:I = 0x2

.field public static final SUPP_SVC_CODE_MT_RESUME:I = 0x3

.field private static final WIFI_CALL_DROP_BACKHAUL_CONGESTED:Ljava/lang/String; = "Call is dropped due to Wi-Fi backhaul is congested"

.field private static final WIFI_CALL_DROP_SIGNAL_DEGRADED:Ljava/lang/String; = "Call is dropped due to Wi-Fi signal is degraded"


# instance fields
.field private isMtCall:Z

.field private mAcceptPending:Z

.field private mCallId:I

.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mCallee:Ljava/lang/String;

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mConfCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

.field private mDc:Lcom/huawei/ims/DriverCallIms;

.field private mDisconnCause:I

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lcom/huawei/ims/ImsCallModification;

.field private mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

.field protected mIsConfInProgress:Z

.field private mIsVtGloballyAllowed:Z

.field private mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/ims/ImsCallSessionImpl$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRingbackToneRequest:Z

.field private mState:I

.field private mTracker:Lcom/huawei/ims/ImsServiceClassTracker;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceClassTracker;)V
    .locals 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p3, "senderRxr"    # Lcom/huawei/ims/ImsRIL;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "tracker"    # Lcom/huawei/ims/ImsServiceClassTracker;

    .line 192
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    .line 119
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 123
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 125
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 127
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 128
    new-instance v1, Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-direct {v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 133
    new-instance v2, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;-><init>(Lcom/huawei/ims/ImsCallSessionImpl;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 135
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 139
    iput v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 144
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 151
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mAcceptPending:Z

    .line 153
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    .line 154
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 162
    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    .line 163
    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 165
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->isMtCall:Z

    .line 193
    iput-object p3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 194
    invoke-virtual {p0, p2}, Lcom/huawei/ims/ImsCallSessionImpl;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    .line 195
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p2, v2, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 196
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 200
    iput-object p5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    .line 202
    new-instance v2, Lcom/huawei/ims/ImsCallModification;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {v2, p0, v3}, Lcom/huawei/ims/ImsCallModification;-><init>(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    .line 205
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    new-instance v2, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    invoke-direct {v2, p0, v3}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;-><init>(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsCallModification;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    .line 207
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsCallSessionImpl;->addListener(Lcom/huawei/ims/ImsCallSessionImpl$Listener;)V

    .line 211
    :cond_0
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->isMtCall:Z

    .line 213
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v0}, Lcom/huawei/ims/ImsRIL;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/DriverCallIms;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceClassTracker;)V
    .locals 4
    .param p1, "call"    # Lcom/huawei/ims/DriverCallIms;
    .param p2, "senderRxr"    # Lcom/huawei/ims/ImsRIL;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "tracker"    # Lcom/huawei/ims/ImsServiceClassTracker;

    .line 218
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    .line 119
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 123
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 125
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 127
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 128
    new-instance v1, Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-direct {v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 133
    new-instance v2, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;-><init>(Lcom/huawei/ims/ImsCallSessionImpl;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 135
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 139
    iput v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 144
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 151
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mAcceptPending:Z

    .line 153
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    .line 154
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 162
    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    .line 163
    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 165
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->isMtCall:Z

    .line 219
    iput-object p2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 221
    new-instance v0, Lcom/huawei/ims/DriverCallIms;

    invoke-direct {v0, p1}, Lcom/huawei/ims/DriverCallIms;-><init>(Lcom/huawei/ims/DriverCallIms;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    .line 222
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget v0, v0, Lcom/huawei/ims/DriverCallIms;->index:I

    iput v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 226
    iput-object p4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    .line 227
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->updateImsCallProfile(Lcom/huawei/ims/DriverCallIms;)V

    .line 230
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lcom/huawei/ims/DriverCallIms;)V

    .line 232
    new-instance v0, Lcom/huawei/ims/ImsCallModification;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/ImsCallModification;-><init>(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsRIL;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    .line 235
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;-><init>(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsCallModification;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    .line 237
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->addListener(Lcom/huawei/ims/ImsCallSessionImpl$Listener;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-boolean v0, v0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    iput-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->isMtCall:Z

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 79
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/huawei/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 79
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/huawei/ims/ImsCallSessionImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 79
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->doClose()V

    return-void
.end method

.method static synthetic access$1200(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 79
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->initCallLists()V

    return-void
.end method

.method static synthetic access$1300(Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/huawei/ims/ImsCallSessionImpl;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionImpl;->convertMessageFromCauseCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/ims/ImsCallSessionImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    return-object v0
.end method

.method static synthetic access$402(Lcom/huawei/ims/ImsCallSessionImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mAcceptPending:Z

    return p1
.end method

.method static synthetic access$502(Lcom/huawei/ims/ImsCallSessionImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "x1"    # I

    .line 79
    iput p1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDisconnCause:I

    return p1
.end method

.method static synthetic access$600(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsServiceClassTracker;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/DriverCallIms;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 79
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyCallSessionMerged()V

    return-void
.end method

.method private static checkAccessPermission()V
    .locals 3

    .line 2136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2137
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2141
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2138
    :cond_1
    :goto_0
    return-void
.end method

.method private cleanRilRecovery()V
    .locals 2

    .line 1772
    const-string v0, "cleanRilRecovery"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 1773
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1774
    return-void
.end method

.method private convertMessageFromCauseCode(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "causeCode"    # I
    .param p2, "originMessage"    # Ljava/lang/String;

    .line 916
    move-object v0, p2

    .line 917
    .local v0, "ret":Ljava/lang/String;
    const/16 v1, 0x44c

    if-eq p1, v1, :cond_1

    const/16 v1, 0xbb9

    if-eq p1, v1, :cond_0

    .line 925
    const-string v1, "ImsCallSessionImpl"

    const-string v2, "just use origin message."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 922
    :cond_0
    const-string v0, "Call is dropped due to Wi-Fi backhaul is congested"

    .line 923
    goto :goto_0

    .line 919
    :cond_1
    const-string v0, "Call is dropped due to Wi-Fi signal is degraded"

    .line 920
    nop

    .line 927
    :goto_0
    return-object v0
.end method

.method private doClose()V
    .locals 4

    .line 950
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "doClose!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Received Session Close request while it is alive"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_0
    iget v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 957
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->dispose()V

    .line 959
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-boolean v0, v0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_2

    .line 962
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lcom/huawei/ims/ImsRIL;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 964
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->notifySessionClosed()V

    .line 965
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 966
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 967
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    .line 968
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 969
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 970
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 971
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 972
    iput v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 976
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 977
    iput-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 982
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    .line 984
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    .line 985
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 988
    :cond_3
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "doClose end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void
.end method

.method private extractCallDetailsIntoCallProfile(Lcom/huawei/ims/DriverCallIms;)V
    .locals 9
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverCallIms;

    .line 1301
    if-nez p1, :cond_0

    .line 1302
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Null dcUpdate in extractCallDetailsIntoCallProfile"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    return-void

    .line 1305
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->updateImsCallProfile(Lcom/huawei/ims/DriverCallIms;)V

    .line 1315
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v0, v0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v0, v0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1317
    const/4 v0, 0x0

    .line 1318
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1319
    .local v1, "keyAndValue":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1321
    .local v2, "namespaceAndKey":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v3

    .local v0, "i":I
    .local v1, "key":Ljava/lang/String;
    .local v2, "keyAndValue":[Ljava/lang/String;
    .local v4, "namespaceAndKey":[Ljava/lang/String;
    :goto_0
    iget-object v5, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v5, v5, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 1322
    iget-object v5, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v5, v5, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_3

    .line 1323
    iget-object v5, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v5, v5, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v5, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1325
    aget-object v5, v2, v3

    if-eqz v5, :cond_2

    .line 1330
    aget-object v5, v2, v3

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 1331
    aget-object v5, v2, v3

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1332
    aget-object v1, v4, v6

    goto :goto_1

    .line 1334
    :cond_1
    aget-object v1, v2, v3

    .line 1345
    :goto_1
    const-string v5, "ImsCallSessionImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallDetails Extra key= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " value= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    aget-object v6, v2, v6

    invoke-virtual {v5, v1, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1337
    :cond_2
    const-string v3, "ImsCallSessionImpl"

    const-string v5, "Bad extra string from lower layers!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    return-void

    .line 1341
    :cond_3
    const-string v3, "ImsCallSessionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is null in CallDetails Extras!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    return-void

    .line 1351
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyAndValue":[Ljava/lang/String;
    .end local v4    # "namespaceAndKey":[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private extractProfileExtrasIntoCallDetails(Landroid/telephony/ims/ImsCallProfile;Lcom/huawei/ims/CallDetails;)V
    .locals 11
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "details"    # Lcom/huawei/ims/CallDetails;

    .line 1582
    iget-object v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "OemCallExtras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1583
    .local v0, "callExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 1584
    const/4 v1, 0x0

    .line 1585
    .local v1, "extraString":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1586
    .local v2, "extras":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1587
    .local v3, "i":I
    const/4 v4, 0x0

    .line 1590
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1591
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, ""

    goto :goto_1

    .line 1592
    :cond_0
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    move-object v4, v7

    .line 1593
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1594
    move-object v7, v1

    .line 1596
    .local v7, "extraStringForOutput":Ljava/lang/String;
    const-string v8, "numbermarkinfo_number"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "nexti_search_number"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "nexti_backup_number"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1597
    :cond_1
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1598
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1601
    :cond_2
    const-string v8, "ImsCallSessionImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Packing extra string: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    aput-object v1, v2, v3

    .line 1603
    add-int/lit8 v3, v3, 0x1

    .line 1604
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "extraStringForOutput":Ljava/lang/String;
    goto/16 :goto_0

    .line 1605
    :cond_3
    invoke-virtual {p2, v2}, Lcom/huawei/ims/CallDetails;->setExtras([Ljava/lang/String;)V

    .line 1606
    .end local v1    # "extraString":Ljava/lang/String;
    .end local v2    # "extras":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_2

    .line 1607
    :cond_4
    const-string v1, "ImsCallSessionImpl"

    const-string v2, "No extras in ImsCallProfile to map into CallDetails."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :goto_2
    return-void
.end method

.method private getRadioTechFromDriverCall(I)Ljava/lang/String;
    .locals 3
    .param p1, "imsDomain"    # I

    .line 2149
    const/4 v0, 0x0

    .line 2150
    .local v0, "radioTech":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2155
    :pswitch_0
    const/16 v0, 0x12

    .line 2156
    goto :goto_0

    .line 2152
    :pswitch_1
    const/16 v0, 0xe

    .line 2153
    nop

    .line 2160
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioTechFromDriverCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,imsDomain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2161
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRestrictCause(I[Lcom/huawei/ims/ServiceStatus;)I
    .locals 6
    .param p1, "srvType"    # I
    .param p2, "ability"    # [Lcom/huawei/ims/ServiceStatus;

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "cause":I
    if-eqz p2, :cond_1

    .line 405
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    .line 406
    .local v4, "srv":Lcom/huawei/ims/ServiceStatus;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/huawei/ims/ServiceStatus;->type:I

    if-ne v5, p1, :cond_0

    iget-object v5, v4, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 408
    iget-object v1, v4, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v2

    iget v0, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 409
    goto :goto_1

    .line 405
    .end local v4    # "srv":Lcom/huawei/ims/ServiceStatus;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 413
    :cond_1
    :goto_1
    return v0
.end method

.method private initCallLists()V
    .locals 2

    .line 2034
    const-string v0, "initCallLists"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2037
    .local v0, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 2038
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    .line 2040
    :cond_0
    return-void
.end method

.method private isHandleHandoveSuccess(I)Z
    .locals 1
    .param p1, "hoType"    # I

    .line 691
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isImsCallSessionAlive()Z
    .locals 2

    .line 943
    iget v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSessionValid()Z
    .locals 3

    .line 931
    iget v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 932
    .local v0, "isValid":Z
    :goto_0
    if-nez v0, :cond_1

    .line 933
    const-string v1, "ImsCallSessionImpl"

    const-string v2, "Session is closed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_1
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 2128
    const-string v0, "ImsCallSessionImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 2132
    const-string v0, "ImsCallSessionImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    return-void
.end method

.method private static mapAudioCodecFromExtras(Ljava/lang/String;)I
    .locals 4
    .param p0, "codec"    # Ljava/lang/String;

    .line 1359
    const/4 v0, 0x0

    .line 1360
    .local v0, "audioQuality":I
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1361
    return v1

    .line 1363
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "GSM_HR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_1
    const-string v1, "GSM_FR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_2
    const-string v1, "EVRC_B"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "AMR_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "AMR_NB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "GSM_EFR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v3, "QCELP13K"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :sswitch_7
    const-string v1, "EVRC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_8
    const-string v1, "EVRC_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_9
    const-string v1, "EVRC_NW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1395
    const-string v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1392
    :pswitch_0
    const/16 v0, 0xa

    .line 1393
    goto :goto_2

    .line 1389
    :pswitch_1
    const/16 v0, 0x9

    .line 1390
    goto :goto_2

    .line 1386
    :pswitch_2
    const/16 v0, 0x8

    .line 1387
    goto :goto_2

    .line 1383
    :pswitch_3
    const/4 v0, 0x2

    .line 1384
    goto :goto_2

    .line 1380
    :pswitch_4
    const/4 v0, 0x1

    .line 1381
    goto :goto_2

    .line 1377
    :pswitch_5
    const/4 v0, 0x7

    .line 1378
    goto :goto_2

    .line 1374
    :pswitch_6
    const/4 v0, 0x6

    .line 1375
    goto :goto_2

    .line 1371
    :pswitch_7
    const/4 v0, 0x5

    .line 1372
    goto :goto_2

    .line 1368
    :pswitch_8
    const/4 v0, 0x4

    .line 1369
    goto :goto_2

    .line 1365
    :pswitch_9
    const/4 v0, 0x3

    .line 1366
    nop

    .line 1398
    :goto_2
    const-string v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioQuality is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x268dd77a -> :sswitch_9
        -0x268dd678 -> :sswitch_8
        0x20aaa2 -> :sswitch_7
        0x30932dd2 -> :sswitch_6
        0x3de5f773 -> :sswitch_5
        0x734ec6ed -> :sswitch_4
        0x734ec804 -> :sswitch_3
        0x7aa095e5 -> :sswitch_2
        0x7dde20ea -> :sswitch_1
        0x7dde2128 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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
.end method

.method private mapCallTypeFromProfile(I)I
    .locals 4
    .param p1, "callType"    # I

    .line 1408
    const/4 v0, 0x0

    .line 1409
    .local v0, "type":I
    packed-switch p1, :pswitch_data_0

    .line 1429
    :pswitch_0
    const-string v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported callType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1426
    :pswitch_1
    const/4 v0, 0x4

    .line 1427
    goto :goto_0

    .line 1423
    :pswitch_2
    const/4 v0, 0x2

    .line 1424
    goto :goto_0

    .line 1420
    :pswitch_3
    const/4 v0, 0x1

    .line 1421
    goto :goto_0

    .line 1417
    :pswitch_4
    const/4 v0, 0x3

    .line 1418
    goto :goto_0

    .line 1414
    :pswitch_5
    const/4 v0, 0x0

    .line 1415
    goto :goto_0

    .line 1411
    :pswitch_6
    const/16 v0, 0xa

    .line 1412
    nop

    .line 1432
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private notifyCallSessionHold(Z)V
    .locals 3
    .param p1, "mtHold"    # Z

    .line 333
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 335
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 339
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 340
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 341
    .local v2, "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v2, p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl$Listener;->onCallSessionHold(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method private notifyCallSessionMerged()V
    .locals 3

    .line 372
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 374
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 378
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 379
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 380
    .local v2, "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v2}, Lcom/huawei/ims/ImsCallSessionImpl$Listener;->onCallSessionMerged()V

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method private notifyCallSessionResumed(Z)V
    .locals 3
    .param p1, "mtResume"    # Z

    .line 346
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 348
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 352
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 353
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 354
    .local v2, "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v2, p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl$Listener;->onCallSessionResumed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method private notifyCallSessionStarted()V
    .locals 3

    .line 359
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 361
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 365
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 366
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 367
    .local v2, "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v2, p0}, Lcom/huawei/ims/ImsCallSessionImpl$Listener;->onCallSessionStarted(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method private notifySessionClosed()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 312
    .local v0, "mListenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 313
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 314
    .local v2, "l":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v2, p0}, Lcom/huawei/ims/ImsCallSessionImpl$Listener;->onClosed(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v1    # "i":I
    .end local v2    # "l":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    :cond_0
    return-void
.end method

.method private notifySessionDisconnected()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 303
    .local v0, "mListenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 304
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 305
    .local v2, "l":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v2, p0}, Lcom/huawei/ims/ImsCallSessionImpl$Listener;->onDisconnected(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "i":I
    .end local v2    # "l":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    :cond_0
    return-void
.end method

.method private setCapabilitiesInProfiles(Lcom/huawei/ims/DriverCallIms;)V
    .locals 5
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverCallIms;

    .line 598
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v2, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 600
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v3, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v3, v3, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v4, "Codec"

    .line 601
    invoke-virtual {v2, v3, v4}, Lcom/huawei/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->mapAudioCodecFromExtras(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 603
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x2

    iput v2, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 609
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_3

    .line 610
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 611
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v0, v0, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    if-eqz v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v2, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 613
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 614
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne v2, v1, :cond_2

    .line 615
    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v2, v2, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    .line 613
    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/ImsCallSessionImpl;->getRestrictCause(I[Lcom/huawei/ims/ServiceStatus;)I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 619
    :cond_3
    return-void
.end method

.method private transHandoverErrorCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;

    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method private triggerRilRecoveryDelayed()V
    .locals 4

    .line 1760
    iget v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1761
    const-string v0, "Call Session terminated. Don\'t trigger ril recovery."

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 1762
    return-void

    .line 1765
    :cond_0
    const-string v0, "triggerRilRecoveryDelayed"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 1766
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1767
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x88b8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1769
    :cond_1
    return-void
.end method

.method private updateImsCallProfile(Lcom/huawei/ims/DriverCallIms;)V
    .locals 8
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .line 1440
    if-nez p1, :cond_0

    .line 1441
    const-string v0, "updateImsCallProfile called with dc null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 1442
    return-void

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_1

    .line 1446
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1449
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "oi"

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "cna"

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "oir"

    iget v2, p1, Lcom/huawei/ims/DriverCallIms;->numberPresentation:I

    .line 1452
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v2

    .line 1451
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1453
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "cnap"

    iget v2, p1, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    .line 1454
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v2

    .line 1453
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1456
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "remote_vt_capability"

    iget v2, p1, Lcom/huawei/ims/DriverCallIms;->peerVideoSupport:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1460
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->radioTechFromRilImsCall:I

    .line 1462
    .local v0, "ratTypeFromModem":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1463
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "CallRadioTech"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getRadioTechFromDriverCall(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1465
    :cond_2
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v2

    .line 1466
    .local v2, "hwTelephonyManager":Landroid/telephony/HwTelephonyManager;
    if-eqz v2, :cond_3

    .line 1467
    invoke-virtual {v2}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v3

    .line 1468
    .local v3, "default4GSlotId":I
    invoke-virtual {v2, v3}, Landroid/telephony/HwTelephonyManager;->getImsDomain(I)I

    move-result v4

    .line 1469
    .local v4, "imsRegDomain":I
    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v6, "CallRadioTech"

    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsCallSessionImpl;->getRadioTechFromDriverCall(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const-string v5, "ImsCallSessionImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imsRegDomain = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ,default4GSlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    .end local v2    # "hwTelephonyManager":Landroid/telephony/HwTelephonyManager;
    .end local v3    # "default4GSlotId":I
    .end local v4    # "imsRegDomain":I
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "redirect_number"

    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->redirectNumber:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "redirect_number_presentation"

    iget v4, p1, Lcom/huawei/ims/DriverCallIms;->redirectNumberPresentation:I

    .line 1479
    invoke-static {v4}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v4

    .line 1478
    invoke-virtual {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1481
    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v2, v2, Lcom/huawei/ims/CallDetails;->call_type:I

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1509
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x0

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1511
    goto :goto_1

    .line 1493
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x4

    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1494
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x3

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1496
    goto :goto_1

    .line 1503
    :pswitch_2
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x6

    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1504
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v4, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1506
    goto :goto_1

    .line 1498
    :pswitch_3
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x5

    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1499
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v3, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1501
    goto :goto_1

    .line 1488
    :pswitch_4
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v3, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1489
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v1, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1491
    goto :goto_1

    .line 1483
    :cond_4
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v4, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1484
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v1, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1486
    nop

    .line 1517
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLocalDc(Lcom/huawei/ims/DriverCallIms;)Z
    .locals 4
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverCallIms;

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-nez v1, :cond_0

    .line 424
    new-instance v1, Lcom/huawei/ims/DriverCallIms;

    invoke-direct {v1, p1}, Lcom/huawei/ims/DriverCallIms;-><init>(Lcom/huawei/ims/DriverCallIms;)V

    iput-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    .line 425
    const/4 v0, 0x1

    goto :goto_0

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/DriverCallIms;->update(Lcom/huawei/ims/DriverCallIms;)Z

    move-result v0

    .line 429
    :goto_0
    const-string v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLocalDc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return v0
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1656
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1658
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1660
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mAcceptPending:Z

    if-eqz v0, :cond_1

    .line 1661
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "this call is being accepted..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    return-void

    .line 1664
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mAcceptPending:Z

    .line 1668
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1669
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    .line 1668
    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsRIL;->acceptCall(Landroid/os/Message;I)V

    .line 1670
    return-void
.end method

.method public final addListener(Lcom/huawei/ims/ImsCallSessionImpl$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 251
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 253
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    if-eqz p1, :cond_2

    .line 261
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate listener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 256
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    .line 998
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1000
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Close!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1004
    :cond_0
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 1
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 1678
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1680
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1681
    :cond_0
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1891
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1893
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1895
    :cond_0
    return-void
.end method

.method public getCall()Lcom/huawei/ims/DriverCallIms;
    .locals 1

    .line 1119
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1121
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    return-object v0
.end method

.method public getCallDetails()Lcom/huawei/ims/CallDetails;
    .locals 1

    .line 2022
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 2024
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-nez v0, :cond_0

    .line 2025
    const/4 v0, 0x0

    return-object v0

    .line 2027
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v0, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    return-object v0
.end method

.method public getCallDomain()I
    .locals 2

    .line 1152
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1154
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 1156
    :cond_0
    const/4 v0, 0x3

    .line 1157
    .local v0, "callDomain":I
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v1, v1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    if-eqz v1, :cond_1

    .line 1158
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v1, v1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v0, v1, Lcom/huawei/ims/CallDetails;->call_domain:I

    .line 1160
    :cond_1
    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 1013
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1015
    iget v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1051
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1053
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getCallSubstate()I
    .locals 2

    .line 1169
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1171
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1173
    :cond_0
    const/4 v0, 0x0

    .line 1174
    .local v0, "callSubstate":I
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v1, v1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    if-eqz v1, :cond_1

    .line 1175
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v1, v1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v0, v1, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 1177
    :cond_1
    return v0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .line 1193
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1195
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverCallState()Lcom/huawei/ims/DriverCallIms$State;
    .locals 1

    .line 1200
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1202
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v0, v0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0
.end method

.method public getImsCallModification()Lcom/huawei/ims/ImsCallModification;
    .locals 1

    .line 386
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 388
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    return-object v0
.end method

.method public getImsVideoCallProviderImpl()Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 293
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 295
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    return-object v0
.end method

.method public getInternalCallType()I
    .locals 3

    .line 1138
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1140
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    return v0

    .line 1142
    :cond_0
    const/16 v0, 0xa

    .line 1143
    .local v0, "callType":I
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v1, v1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    if-eqz v1, :cond_1

    .line 1144
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v1, v1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v0, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    goto :goto_0

    .line 1145
    :cond_1
    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_2

    .line 1146
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v0

    .line 1148
    :cond_2
    :goto_0
    return v0
.end method

.method getInternalState()Lcom/huawei/ims/DriverCallIms$State;
    .locals 3

    .line 1126
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 1128
    :cond_0
    const/4 v0, 0x0

    .line 1129
    .local v0, "state":Lcom/huawei/ims/DriverCallIms$State;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v1, :cond_1

    .line 1130
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v0, v1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    goto :goto_0

    .line 1131
    :cond_1
    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1132
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    .line 1134
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1064
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1066
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getMediaId()I
    .locals 2

    .line 1025
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1027
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v0, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v1, v0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    nop

    :cond_1
    return v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1090
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1092
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1094
    :cond_0
    const/4 v0, 0x0

    .line 1096
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_1

    .line 1097
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1099
    :cond_1
    const-string v1, "ImsCallSessionImpl"

    const-string v2, "Call Profile null! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :goto_0
    return-object v0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1077
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1079
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1112
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1114
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1115
    :cond_0
    iget v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2

    .line 1975
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1977
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1978
    :cond_0
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1979
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    return-object v0

    .line 1982
    :cond_1
    return-object v1
.end method

.method public handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "hoType"    # I
    .param p2, "srcTech"    # I
    .param p3, "targetTech"    # I
    .param p4, "extraType"    # I
    .param p5, "extraInfo"    # [B
    .param p6, "errorCode"    # Ljava/lang/String;
    .param p7, "errorMessage"    # Ljava/lang/String;

    .line 657
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 659
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hoType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "srcTech: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targetTech: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 664
    :cond_0
    const/4 v0, 0x0

    .line 665
    .local v0, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, p6}, Lcom/huawei/ims/ImsCallSessionImpl;->transHandoverErrorCode(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 666
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    if-eqz v1, :cond_2

    .line 667
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->isHandleHandoveSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1, p2, p3, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1, p2, p3, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 678
    :cond_2
    :goto_0
    return-void
.end method

.method public handleOnHoldTone(Z)V
    .locals 2
    .param p1, "startOnHoldLocalTone"    # Z

    .line 2093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHoldTone: startOnHoldLocalTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2094
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2095
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_1

    return-void

    .line 2097
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_2

    .line 2098
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_2

    .line 2099
    const-string v0, "onHoldTone: current call state is not active or holding, ignore"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2100
    return-void

    .line 2103
    :cond_2
    if-eqz p1, :cond_3

    .line 2104
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2105
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 2106
    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-nez v0, :cond_4

    .line 2107
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v1, 0x3

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2108
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2110
    :cond_4
    :goto_0
    return-void
.end method

.method public hangupForegroundResumeBackground(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 1737
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1739
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1741
    :cond_0
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupForegroundResumeBackground "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1743
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1744
    return-void
.end method

.method public hangupWaitingOrBackground(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 1748
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1750
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1752
    :cond_0
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupWaitingOrBackground "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1754
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1755
    return-void
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .line 1038
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1040
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v0, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    invoke-virtual {v0}, Lcom/huawei/ims/CallDetails;->hasMediaIdValid()Z

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1785
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1787
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1789
    :cond_0
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "hold requested."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 1791
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1906
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1908
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1910
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1911
    return-void
.end method

.method protected invokeCallResume(Lcom/huawei/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "callSession"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 593
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "invokeCallResume"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 595
    return-void
.end method

.method public isCallActive()Z
    .locals 3

    .line 1711
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1713
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1714
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v2, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isConfInProgress()Z
    .locals 1

    .line 1524
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1526
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1527
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    return v0
.end method

.method public isHwCustCode(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 1839
    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1842
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1840
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInCall()Z
    .locals 3

    .line 1229
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1231
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1233
    :cond_0
    const/4 v0, 0x0

    .line 1234
    .local v0, "isInCall":Z
    sget-object v1, Lcom/huawei/ims/ImsCallSessionImpl$1;->$SwitchMap$com$huawei$ims$DriverCallIms$State:[I

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v2, v2, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v2}, Lcom/huawei/ims/DriverCallIms$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1241
    :pswitch_0
    const/4 v0, 0x1

    .line 1242
    nop

    .line 1248
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isMT()Z
    .locals 1

    .line 2145
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->isMtCall:Z

    return v0
.end method

.method public isMultiparty()Z
    .locals 2

    .line 1213
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1215
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-nez v0, :cond_1

    .line 1217
    return v1

    .line 1219
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-boolean v0, v0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    return v0
.end method

.method public isMultipartyCall()Z
    .locals 2

    .line 1181
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1183
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-boolean v1, v0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    nop

    :cond_1
    return v1
.end method

.method public merge()V
    .locals 3

    .line 1853
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1855
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1857
    :cond_0
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 1865
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsServiceClassTracker;->setConfInProgress(Z)V

    .line 1866
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->conference(Landroid/os/Message;)V

    .line 1867
    return-void

    .line 1855
    :cond_1
    :goto_0
    return-void
.end method

.method public notifyConfInfo([B)V
    .locals 1
    .param p1, "confInfoBytes"    # [B

    .line 2000
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 2002
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2003
    :cond_0
    return-void
.end method

.method public notifyTtyModeChange(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 641
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 643
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTY mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionTtyModeReceived(I)V

    goto :goto_0

    .line 651
    :cond_1
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "notifyTtyModeChange ListenerProxy null! "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_0
    return-void
.end method

.method public notifyUnsolCallModify(Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 3
    .param p1, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 319
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 321
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 325
    .local v0, "mListenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 326
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 327
    .local v2, "l":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v2, p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl$Listener;->onUnsolCallModify(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsCallModification$CallModify;)V

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v1    # "i":I
    .end local v2    # "l":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1816
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1818
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsCallSessionImpl onTransact code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    const/4 v0, 0x0

    .line 1820
    .local v0, "callType":I
    packed-switch p1, :pswitch_data_0

    .line 1832
    const-string v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsCallSessionImpl can not support the code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1827
    :pswitch_0
    const-string v1, "com.huawei.ims.ImsCallSessionImpl"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1829
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActiveForIms(ILandroid/os/Message;)V

    .line 1830
    goto :goto_0

    .line 1822
    :pswitch_1
    const-string v1, "com.huawei.ims.ImsCallSessionImpl"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1823
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1824
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActiveForIms(ILandroid/os/Message;)V

    .line 1825
    nop

    .line 1835
    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reject(I)V
    .locals 5
    .param p1, "reason"    # I

    .line 1691
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1693
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1695
    :cond_0
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    invoke-static {p1}, Lcom/huawei/ims/ImsCallUtils;->getImsCallRejectCause(I)I

    move-result v0

    .line 1698
    .local v0, "cause":I
    const-string v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reject cause"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1700
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/huawei/ims/ImsRIL;->rejectImsCallForCause(IILandroid/os/Message;)V

    goto :goto_0

    .line 1702
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->hangupConnection(ILandroid/os/Message;)V

    .line 1706
    :goto_0
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1708
    return-void
.end method

.method public removeListener(Lcom/huawei/ims/ImsCallSessionImpl$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 274
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 276
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    if-eqz p1, :cond_2

    .line 284
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 289
    :goto_0
    return-void

    .line 279
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1922
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1924
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1925
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1926
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeParticipants user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    return-void
.end method

.method public reportNewConferenceCallSession(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "confCallSession"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 1287
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1289
    if-eqz p1, :cond_0

    .line 1290
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Calling callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 1292
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 1293
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 1292
    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 1295
    :cond_0
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Null confCallSession! Not calling callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :goto_0
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1802
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1804
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1806
    :cond_0
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "resume requested."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 1808
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1939
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1941
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1943
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/ImsRIL;->sendDtmf(CLandroid/os/Message;)V

    .line 1944
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 1993
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1995
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1997
    :cond_0
    return-void
.end method

.method public final setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 1259
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1261
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p1, v0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 1263
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "muted"    # Z

    .line 1272
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1274
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->setMute(ZLandroid/os/Message;)V

    .line 1277
    return-void
.end method

.method public setNewSession(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 1534
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1536
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1541
    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1554
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1556
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1558
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    const-string v1, "HwIms"

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRIL;->getCHRReportPhoneId()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "ImsRIL"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 1561
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1562
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1564
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 1565
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1569
    const-string v1, "oir"

    invoke-virtual {p2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v1

    .line 1570
    .local v1, "clir":I
    const/4 v2, 0x3

    .line 1571
    .local v2, "domain":I
    new-instance v3, Lcom/huawei/ims/CallDetails;

    iget v4, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/huawei/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 1574
    .local v3, "details":Lcom/huawei/ims/CallDetails;
    invoke-direct {p0, p2, v3}, Lcom/huawei/ims/ImsCallSessionImpl;->extractProfileExtrasIntoCallDetails(Landroid/telephony/ims/ImsCallProfile;Lcom/huawei/ims/CallDetails;)V

    .line 1576
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 1577
    invoke-virtual {v5, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1576
    invoke-virtual {v4, p1, v1, v3, v0}, Lcom/huawei/ims/ImsRIL;->dial(Ljava/lang/String;ILcom/huawei/ims/CallDetails;Landroid/os/Message;)V

    .line 1578
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 8
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1624
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1627
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1630
    :cond_0
    iput-object p2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1631
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 1632
    const/4 v1, 0x0

    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1636
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 1637
    .local v2, "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "isConferenceUri"

    .line 1638
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 1637
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    invoke-static {v2}, Lcom/huawei/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v3

    .line 1641
    .local v3, "mMoExtras":[Ljava/lang/String;
    new-instance v4, Lcom/huawei/ims/CallDetails;

    iget v5, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v5}, Lcom/huawei/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v3}, Lcom/huawei/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 1643
    .local v4, "details":Lcom/huawei/ims/CallDetails;
    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    aget-object v6, p1, v1

    iget-object v7, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 1644
    invoke-virtual {v7, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1643
    invoke-virtual {v5, v6, v1, v4, v0}, Lcom/huawei/ims/ImsRIL;->dial(Ljava/lang/String;ILcom/huawei/ims/CallDetails;Landroid/os/Message;)V

    .line 1645
    return-void

    .line 1627
    .end local v2    # "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "mMoExtras":[Ljava/lang/String;
    .end local v4    # "details":Lcom/huawei/ims/CallDetails;
    :cond_1
    :goto_0
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 1955
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1957
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1958
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->startDtmf(CLandroid/os/Message;)V

    .line 1959
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 1966
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1968
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1969
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->stopDtmf(Landroid/os/Message;)V

    .line 1970
    return-void
.end method

.method public terminate(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 1724
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1726
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1728
    :cond_0
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsRIL;->hangupConnection(ILandroid/os/Message;)V

    .line 1731
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1733
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    .line 2122
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 2124
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2115
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " callid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1878
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1880
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1881
    :cond_0
    return-void
.end method

.method public updateCall(Lcom/huawei/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverCallIms;

    .line 438
    if-nez p1, :cond_0

    .line 439
    const-string v0, "updateCall, dcUpdate is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 440
    return-void

    .line 442
    :cond_0
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 445
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCall for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v0, v0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    iget-object v3, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 451
    .local v0, "areStatesSame":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->updateImsCallProfile(Lcom/huawei/ims/DriverCallIms;)V

    .line 452
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lcom/huawei/ims/DriverCallIms;)V

    .line 455
    iget-object v3, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_3

    iget-object v3, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->WAITING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_3

    .line 457
    iput-boolean v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mAcceptPending:Z

    .line 461
    :cond_3
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v3, p1}, Lcom/huawei/ims/ImsCallModification;->update(Lcom/huawei/ims/DriverCallIms;)V

    .line 463
    sget-object v3, Lcom/huawei/ims/ImsCallSessionImpl$1;->$SwitchMap$com$huawei$ims$DriverCallIms$State:[I

    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v4}, Lcom/huawei/ims/DriverCallIms$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 558
    :pswitch_0
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->cleanRilRecovery()V

    .line 561
    const/16 v3, 0x8

    iput v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 563
    iget v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDisconnCause:I

    if-nez v3, :cond_4

    .line 564
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsRIL;->getLastCallFailCause(Landroid/os/Message;)V

    goto :goto_1

    .line 567
    :cond_4
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    if-eqz v3, :cond_5

    .line 568
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    iget v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDisconnCause:I

    invoke-direct {v4, v5, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 577
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsServiceClassTracker;->onNotifyCallResumed()V

    .line 579
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    goto/16 :goto_3

    .line 553
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lcom/huawei/ims/DriverCallIms;)V

    .line 555
    goto/16 :goto_3

    .line 532
    :pswitch_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 533
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-nez v3, :cond_6

    .line 534
    const-string v3, "ImsCallSessionImpl"

    const-string v4, "MO Alerting call!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget v3, p1, Lcom/huawei/ims/DriverCallIms;->index:I

    iput v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 537
    goto/16 :goto_3

    .line 540
    :cond_6
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v3, v3, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_12

    .line 542
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lcom/huawei/ims/DriverCallIms;)V

    .line 543
    new-instance v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 544
    .local v3, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-boolean v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    if-ne v4, v1, :cond_7

    .line 545
    iput v2, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 547
    :cond_7
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v4, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 548
    .end local v3    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    goto/16 :goto_3

    .line 524
    :pswitch_3
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-nez v3, :cond_12

    .line 525
    const-string v3, "ImsCallSessionImpl"

    const-string v4, "MO Dialing call!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget v3, p1, Lcom/huawei/ims/DriverCallIms;->index:I

    iput v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 527
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    new-instance v4, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    goto/16 :goto_3

    .line 510
    :pswitch_4
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v3, v3, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_12

    .line 512
    const-string v3, "ImsCallSessionImpl"

    const-string v4, "Call being held."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-boolean v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    if-nez v3, :cond_12

    .line 515
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 516
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyCallSessionHold(Z)V

    .line 519
    :cond_8
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_3

    .line 465
    :pswitch_5
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    const/4 v4, 0x4

    if-nez v3, :cond_9

    .line 467
    const-string v3, "ImsCallSessionImpl"

    const-string v5, "Phantom call!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iput v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 469
    iget v3, p1, Lcom/huawei/ims/DriverCallIms;->index:I

    iput v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 470
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionStarted(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_3

    .line 471
    :cond_9
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v3, v3, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v3, v5, :cond_10

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v3, v3, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v3, v5, :cond_10

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v3, v3, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v3, v5, :cond_10

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v3, v3, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->WAITING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v3, v5, :cond_a

    goto/16 :goto_2

    .line 486
    :cond_a
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v3, v3, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_b

    iget-boolean v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    if-eqz v3, :cond_c

    :cond_b
    iget-boolean v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    if-eqz v3, :cond_e

    .line 488
    :cond_c
    const-string v3, "ImsCallSessionImpl"

    const-string v4, "Call being resumed."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iput-boolean v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 491
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 492
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyCallSessionResumed(Z)V

    .line 495
    :cond_d
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_3

    .line 498
    :cond_e
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v3, v3, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v3, v3, Lcom/huawei/ims/CallDetails;->call_type:I

    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v4, v4, Lcom/huawei/ims/CallDetails;->call_type:I

    if-eq v3, v4, :cond_f

    .line 499
    const-string v3, "ImsCallSessionImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call type changes, from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v5, v5, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v5, v5, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v5, v5, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_3

    .line 505
    :cond_f
    const-string v3, "ImsCallSessionImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call resumed skipped, conf status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    goto :goto_3

    .line 475
    :cond_10
    :goto_2
    iput v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 476
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    iput-object v4, v3, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 477
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lcom/huawei/ims/DriverCallIms;)V

    .line 479
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 480
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyCallSessionStarted()V

    .line 483
    :cond_11
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionStarted(Landroid/telephony/ims/ImsCallProfile;)V

    .line 583
    :cond_12
    :goto_3
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->updateLocalDc(Lcom/huawei/ims/DriverCallIms;)Z

    move-result v3

    .line 584
    .local v3, "hasChanged":Z
    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_13

    goto :goto_4

    :cond_13
    move v1, v2

    .line 585
    .local v1, "isCallNotEnded":Z
    :goto_4
    if-eqz v0, :cond_14

    if-eqz v1, :cond_14

    if-eqz v3, :cond_14

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call details updated. currentCallDetails= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v4, v4, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to newCallDetails= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 588
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 590
    :cond_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateConfSession(Lcom/huawei/ims/DriverCallIms;)V
    .locals 3
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .line 622
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 624
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConfSession for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 628
    :cond_0
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_1

    .line 629
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 630
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget v0, v0, Lcom/huawei/ims/DriverCallIms;->index:I

    iput v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 632
    :cond_1
    return-void
.end method

.method updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V
    .locals 2
    .param p1, "suppSvcNotification"    # Landroid/telephony/ims/ImsSuppServiceNotification;
    .param p2, "startOnHoldLocalTone"    # Z

    .line 2053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSuppSvcInfo: suppSvcNotification= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " startOnHoldLocalTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2056
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2060
    :cond_0
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    if-nez v0, :cond_1

    .line 2061
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    goto :goto_0

    .line 2062
    :cond_1
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2064
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    packed-switch v0, :pswitch_data_0

    .line 2082
    const-string v0, "Non-Hold/Resume supp svc code received."

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2074
    :pswitch_0
    const-string v0, "updateSuppServiceInfo SUPP_SVC_CODE_MT_RESUME"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2075
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2076
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyCallSessionResumed(Z)V

    .line 2079
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2080
    goto :goto_0

    .line 2066
    :pswitch_1
    const-string v0, "updateSuppServiceInfo SUPP_SVC_CODE_MT_HOLD"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2068
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2069
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyCallSessionHold(Z)V

    .line 2071
    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2072
    nop

    .line 2088
    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateVtGlobalCapability(Z)V
    .locals 2
    .param p1, "isVtEnabled"    # Z

    .line 2006
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 2008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVtGlobalCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2009
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2011
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    if-eq v0, p1, :cond_1

    .line 2012
    iput-boolean p1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 2013
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v0, v0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_1

    .line 2014
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lcom/huawei/ims/DriverCallIms;)V

    .line 2015
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2018
    :cond_1
    return-void
.end method
