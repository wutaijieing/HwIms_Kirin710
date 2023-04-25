.class public Lcom/huawei/ims/vt/ImsVideoGlobals;
.super Ljava/lang/Object;
.source "ImsVideoGlobals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;,
        Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_CAMERA_TYPE;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_SWITCH_STATE_CHANGE:Ljava/lang/String; = "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE"

.field private static final CALLSESSION_MAX_SIZE:I = 0x1

.field private static final HME_V_CAMERA_TYPES:I = 0x0

.field private static final HME_V_ENCODER_USE_TYPES:I = 0x1

.field public static final IMS_SWITCH_STATE_CHANGE_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.IMS_SWITCH_STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "ImsVideoGlobals"

.field private static imsCallSessionArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static imsVideoCallProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field static mChrReporter:Lcom/huawei/ims/SDKChrReport;

.field private static mContext:Landroid/content/Context;

.field private static mIsBootCompleted:Z

.field private static mIsSdkInited:Z

.field private static final mLock:Ljava/lang/Object;

.field private static mServiceSub:[Lcom/huawei/ims/ImsServiceSub;

.field private static sInstance:Lcom/huawei/ims/vt/ImsVideoGlobals;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mLock:Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mIsSdkInited:Z

    .line 39
    sput-boolean v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mIsBootCompleted:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->sInstance:Lcom/huawei/ims/vt/ImsVideoGlobals;

    .line 184
    new-instance v0, Lcom/huawei/ims/vt/ImsVideoGlobals$1;

    invoke-direct {v0}, Lcom/huawei/ims/vt/ImsVideoGlobals$1;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mIsSdkInited:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 27
    sput-boolean p0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mIsSdkInited:Z

    return p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .line 27
    sget-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mIsBootCompleted:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 27
    sput-boolean p0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mIsBootCompleted:Z

    return p0
.end method

.method public static deInit()V
    .locals 3

    .line 103
    sget-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    const-string v1, "ImsVideoGlobals"

    const-string v2, "ImsVideoGlobals deInit"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->deInitImsThinClient()I

    .line 106
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->unRegisterImsSwitchBoardcast()V

    .line 107
    const/4 v1, 0x0

    sput-boolean v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->mIsSdkInited:Z

    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getActiveCallSession(I)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 4
    .param p0, "subid"    # I

    .line 232
    const-string v0, "ImsVideoGlobals"

    const-string v1, "getActiveCallSession"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mServiceSub:[Lcom/huawei/ims/ImsServiceSub;

    aget-object v0, v0, p0

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    .line 234
    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->getCallSessionByState(Lcom/huawei/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 235
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "ImsVideoGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple Active Calls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method private static getBackgroundCallSession(I)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 4
    .param p0, "subid"    # I

    .line 260
    const-string v0, "ImsVideoGlobals"

    const-string v1, "getBackgroundCallSession"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mServiceSub:[Lcom/huawei/ims/ImsServiceSub;

    aget-object v0, v0, p0

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    .line 262
    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->getCallSessionByState(Lcom/huawei/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 263
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "ImsVideoGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple Background Calls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method private static getCallSession(I)Ljava/util/ArrayList;
    .locals 5
    .param p0, "subid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 268
    sget-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    sget-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 271
    :cond_0
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVideoGlobals;->getActiveCallSession(I)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 272
    .local v0, "sessionActive":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_1

    .line 273
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_1
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVideoGlobals;->getBackgroundCallSession(I)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v1

    .line 276
    .local v1, "sessionBackgroud":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v1, :cond_2

    .line 277
    sget-object v2, Lcom/huawei/ims/vt/ImsVideoGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_2
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVideoGlobals;->getOutgoingCallSession(I)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v2

    .line 280
    .local v2, "sessionOutgoing":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v2, :cond_3

    .line 281
    sget-object v3, Lcom/huawei/ims/vt/ImsVideoGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_3
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVideoGlobals;->getIncomingCallSession(I)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v3

    .line 284
    .local v3, "sessionIncoming":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v3, :cond_4

    .line 285
    sget-object v4, Lcom/huawei/ims/vt/ImsVideoGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_4
    sget-object v4, Lcom/huawei/ims/vt/ImsVideoGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    return-object v4
.end method

.method public static getCallVideoProvider(I)Ljava/util/ArrayList;
    .locals 4
    .param p0, "subid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;",
            ">;"
        }
    .end annotation

    .line 295
    sget-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    sget-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    :cond_0
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVideoGlobals;->getCallSession(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 299
    .local v0, "size":I
    if-nez v0, :cond_1

    .line 300
    const/4 v1, 0x0

    return-object v1

    .line 302
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 303
    sget-object v2, Lcom/huawei/ims/vt/ImsVideoGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVideoGlobals;->getCallSession(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v3}, Lcom/huawei/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    return-object v1
.end method

.method private static getImsVideoCallProviderImpl(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
    .locals 1
    .param p0, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 291
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getIncomingCallSession(I)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 4
    .param p0, "subid"    # I

    .line 252
    const-string v0, "ImsVideoGlobals"

    const-string v1, "getIncomingCallSession"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mServiceSub:[Lcom/huawei/ims/ImsServiceSub;

    aget-object v0, v0, p0

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    .line 254
    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->getCallSessionByState(Lcom/huawei/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 255
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "ImsVideoGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple Incoming Calls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method private static getOutgoingCallSession(I)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 4
    .param p0, "subid"    # I

    .line 240
    const-string v0, "ImsVideoGlobals"

    const-string v1, "getOutgoingCallSession"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mServiceSub:[Lcom/huawei/ims/ImsServiceSub;

    aget-object v0, v0, p0

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    .line 242
    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->getCallSessionByState(Lcom/huawei/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->mServiceSub:[Lcom/huawei/ims/ImsServiceSub;

    aget-object v1, v1, p0

    sget-object v2, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->getCallSessionByState(Lcom/huawei/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 247
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v1, "ImsVideoGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple Outgoing Calls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    sget-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    const-string v1, "ImsVideoGlobals"

    const-string v2, "ImsVideoGlobals init"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sput-object p0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->initDev()V

    .line 82
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->initVTSdk()V

    .line 83
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/huawei/ims/vt/ImsMedia;->getInstance()Lcom/huawei/ims/vt/ImsMedia;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/vt/CameraController;->init(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMedia;)V

    .line 84
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/huawei/ims/vt/ImsMedia;->getInstance()Lcom/huawei/ims/vt/ImsMedia;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/vt/MediaController;->init(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMedia;)V

    .line 85
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->registerImsSwitchBoardcast()V

    .line 86
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->registerBootCompleted()V

    .line 88
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->registerShutDown()V

    .line 91
    new-instance v1, Lcom/huawei/ims/SDKChrReport;

    sget-object v2, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/ims/SDKChrReport;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->mChrReporter:Lcom/huawei/ims/SDKChrReport;

    .line 93
    const-string v1, "ImsVideoGlobals"

    const-string v2, "ImsVideoGlobals init done"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static initDev()V
    .locals 3

    .line 112
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    :try_start_0
    const-string v0, "ImsVideoGlobals"

    const-string v1, "start to load so libs"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "hw_sys"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 116
    const-string v0, "HME-Video"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 117
    const-string v0, "login"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 118
    const-string v0, "hw_media"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 119
    const-string v0, "mvd_hme_vt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 120
    const-string v0, "sci"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 121
    const-string v0, "vsc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ImsVideoGlobals"

    const-string v2, "load vt so UnsatisfiedLinkError"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_1

    .line 122
    :catch_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ImsVideoGlobals"

    const-string v2, "load vt so exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 128
    :cond_0
    :goto_1
    return-void
.end method

.method private static initVTSdk()V
    .locals 3

    .line 132
    const-string v0, "ImsVideoGlobals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVTSdk: mIsSdkInited is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/huawei/ims/vt/ImsVideoGlobals;->mIsSdkInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-boolean v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mIsSdkInited:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/ims/vt/VTUtils;->isImsSwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "ImsVideoGlobals"

    const-string v1, "initVTSdk start to initImsThinClient"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->initImsThinClient(Landroid/content/Context;)I

    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mIsSdkInited:Z

    .line 138
    const/4 v1, 0x0

    sget-object v2, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA2:Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_CAMERA_TYPE;

    invoke-virtual {v2}, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_CAMERA_TYPE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/vtproxy/ImsCameraClient;->setCameraParameter(ILjava/lang/Object;)I

    .line 139
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;->HME_V_Encoder_SURFACE:Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

    invoke-virtual {v1}, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/vtproxy/ImsCameraClient;->setCameraParameter(ILjava/lang/Object;)I

    .line 141
    :cond_0
    return-void
.end method

.method private static registerBootCompleted()V
    .locals 3

    .line 156
    const-string v0, "ImsVideoGlobals"

    const-string v1, "registerBootCompleted"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 160
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/huawei/ims/vt/ImsVideoGlobals;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    :cond_0
    return-void
.end method

.method private static registerImsSwitchBoardcast()V
    .locals 5

    .line 144
    const-string v0, "ImsVideoGlobals"

    const-string v1, "registerImsSwitchBoardcast"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 151
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/huawei/ims/vt/ImsVideoGlobals;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.huawei.ims.permission.IMS_SWITCH_STATE_CHANGE"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 153
    :cond_0
    return-void
.end method

.method private static registerShutDown()V
    .locals 3

    .line 166
    const-string v0, "ImsVideoGlobals"

    const-string v1, "registerShutDown"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 170
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/huawei/ims/vt/ImsVideoGlobals;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    :cond_0
    return-void
.end method

.method public static setImsServiceSub([Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "servicesub"    # [Lcom/huawei/ims/ImsServiceSub;

    .line 98
    sput-object p0, Lcom/huawei/ims/vt/ImsVideoGlobals;->mServiceSub:[Lcom/huawei/ims/ImsServiceSub;

    .line 99
    return-void
.end method

.method private static unRegisterImsSwitchBoardcast()V
    .locals 3

    .line 176
    const-string v0, "ImsVideoGlobals"

    const-string v1, "unRegisterImsSwitchBoardcast"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 180
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/huawei/ims/vt/ImsVideoGlobals;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    :cond_0
    return-void
.end method
