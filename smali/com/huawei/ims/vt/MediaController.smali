.class public Lcom/huawei/ims/vt/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Lcom/huawei/ims/vt/ImsMedia$IMediaListener;


# static fields
.field private static final DEFAULT_CALL_ID:Ljava/lang/String; = "-1"

.field private static final HW_CMCCIOT_ON:Ljava/lang/String; = "ro.config.hw_cmcciot"

.field private static TAG:Ljava/lang/String;

.field private static mIsCmccIOT:Z

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/huawei/ims/vt/MediaController;


# instance fields
.field private isAlreadyExist:Z

.field private mCallId:Ljava/lang/String;

.field private mMedia:Lcom/huawei/ims/vt/ImsMedia;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreSetSurface:Landroid/view/Surface;

.field private mSurface:Landroid/view/Surface;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-string v0, "MediaController"

    sput-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    .line 23
    const-string v0, "ro.config.hw_cmcciot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/vt/MediaController;->mIsCmccIOT:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/MediaController;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMedia;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "media"    # Lcom/huawei/ims/vt/ImsMedia;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "-1"

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mCallId:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/MediaController;->isAlreadyExist:Z

    .line 237
    new-instance v0, Lcom/huawei/ims/vt/MediaController$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/MediaController$1;-><init>(Lcom/huawei/ims/vt/MediaController;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 67
    iput-object p2, p0, Lcom/huawei/ims/vt/MediaController;->mMedia:Lcom/huawei/ims/vt/ImsMedia;

    .line 68
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mMedia:Lcom/huawei/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/huawei/ims/vt/ImsMedia;->setMediaListener(Lcom/huawei/ims/vt/ImsMedia$IMediaListener;)V

    .line 70
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVtFlowInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 72
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/huawei/ims/vt/MediaController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/huawei/ims/vt/MediaController;
    .locals 2

    .line 58
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/huawei/ims/vt/MediaController;->sInstance:Lcom/huawei/ims/vt/MediaController;

    monitor-exit v0

    return-object v1

    .line 60
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

    .line 50
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/huawei/ims/vt/MediaController;->sInstance:Lcom/huawei/ims/vt/MediaController;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/huawei/ims/vt/MediaController;

    invoke-direct {v1, p0, p1}, Lcom/huawei/ims/vt/MediaController;-><init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMedia;)V

    sput-object v1, Lcom/huawei/ims/vt/MediaController;->sInstance:Lcom/huawei/ims/vt/MediaController;

    .line 54
    :cond_0
    monitor-exit v0

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setInitBitRate()V
    .locals 2

    .line 152
    sget-boolean v0, Lcom/huawei/ims/vt/MediaController;->mIsCmccIOT:Z

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string v1, "setInitMaxBitRate true"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setInitMaxBitRate(Z)V

    goto :goto_0

    .line 156
    :cond_0
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string v1, "setInitMaxBitRate false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setInitMaxBitRate(Z)V

    .line 159
    :goto_0
    return-void
.end method


# virtual methods
.method public cleanPreStatus()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mSurface:Landroid/view/Surface;

    .line 45
    iput-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mPreSetSurface:Landroid/view/Surface;

    .line 46
    return-void
.end method

.method public onDataUsageChanged(IIJJ)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "mediaId"    # I
    .param p3, "uplink"    # J
    .param p5, "downlink"    # J

    .line 195
    invoke-static {p1}, Lcom/huawei/ims/vt/ImsVideoGlobals;->getCallVideoProvider(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 196
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string v1, "onDataUsageChanged: Call session video provider is null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/MediaController;->isAlreadyExist:Z

    .line 200
    invoke-static {p1}, Lcom/huawei/ims/vt/ImsVideoGlobals;->getCallVideoProvider(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 201
    .local v1, "videoProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 202
    .local v2, "callNum":I
    if-lez v2, :cond_3

    .line 204
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 205
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 206
    goto :goto_1

    .line 208
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/ims/vt/MediaController;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 209
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v4, p3, p4}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->onCallDataUsageChanged(J)V

    .line 210
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/huawei/ims/vt/MediaController;->isAlreadyExist:Z

    .line 211
    goto :goto_2

    .line 204
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    .end local v3    # "i":I
    :cond_3
    sget-object v3, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string v4, "callsession is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_4
    :goto_2
    iget-boolean v3, p0, Lcom/huawei/ims/vt/MediaController;->isAlreadyExist:Z

    if-nez v3, :cond_6

    .line 219
    const-string v3, "-1"

    iput-object v3, p0, Lcom/huawei/ims/vt/MediaController;->mCallId:Ljava/lang/String;

    .line 221
    nop

    .local v0, "i":I
    :goto_3
    if-ge v0, v2, :cond_6

    .line 222
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 223
    nop

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 225
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/ims/vt/MediaController;->mCallId:Ljava/lang/String;

    .line 226
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v3, p3, p4}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->onCallDataUsageChanged(J)V

    .line 227
    nop

    .line 231
    .end local v0    # "i":I
    :cond_6
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mCallId:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 232
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string v3, "callsession is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_7
    return-void
.end method

.method public onDisplayModeEvent()V
    .locals 0

    .line 165
    return-void
.end method

.method public onPeerResolutionChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 171
    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 177
    return-void
.end method

.method public onVideoQualityEvent(I)V
    .locals 0
    .param p1, "videoQuality"    # I

    .line 183
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 7
    .param p1, "orientation"    # I

    .line 126
    const-string v0, "ro.config.phoneland"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 127
    .local v0, "isLand":Z
    if-nez v0, :cond_0

    .line 128
    invoke-static {p1, v1}, Lcom/huawei/vtproxy/ImsThinClient;->setDeviceOrientation(IZ)I

    goto :goto_0

    .line 130
    :cond_0
    const-string v2, "persist.sys.vt.self_adpater"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 131
    .local v2, "isVtSelfAdapter":Z
    xor-int/lit8 v3, v2, 0x1

    .line 132
    .local v3, "needFixLayout":Z
    sget-object v4, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set orientation need fix layout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-boolean v4, Lcom/huawei/ims/ImsCallUtils;->IS_TABLET:Z

    if-eqz v4, :cond_1

    .line 139
    const/4 v3, 0x1

    .line 140
    sget-object v4, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string v5, "fix layout when device is tablet"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    invoke-static {p1, v3}, Lcom/huawei/vtproxy/ImsThinClient;->setDeviceOrientation(IZ)I

    .line 146
    .end local v2    # "isVtSelfAdapter":Z
    .end local v3    # "needFixLayout":Z
    :goto_0
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isDocomo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    invoke-static {v1}, Lcom/huawei/vtproxy/ImsThinClient;->setRmtVideoOrientation(I)I

    .line 149
    :cond_2
    return-void
.end method

.method public setDisplaySurface()Z
    .locals 3

    .line 104
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string v1, "setDisplaySurface after params ready"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string v2, "mSurface is null when setDisplaySurface after params ready"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/huawei/ims/vt/MediaController;->mPreSetSurface:Landroid/view/Surface;

    if-eq v0, v2, :cond_1

    .line 112
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string v1, "start to setFarEndSurface and startRemotePreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mPreSetSurface:Landroid/view/Surface;

    .line 114
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mSurface:Landroid/view/Surface;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setFarEndSurface(Landroid/view/Surface;)I

    .line 115
    invoke-direct {p0}, Lcom/huawei/ims/vt/MediaController;->setInitBitRate()V

    .line 116
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->showRmtVideo()I

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_1
    return v1
.end method

.method public setDisplaySurface(Landroid/view/Surface;)Z
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 80
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string v1, "setDisplaySurface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 82
    sget-object v1, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string v2, "hideRmtVideo"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->hideRmtVideo()I

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/vt/MediaController;->mSurface:Landroid/view/Surface;

    .line 85
    iput-object v1, p0, Lcom/huawei/ims/vt/MediaController;->mPreSetSurface:Landroid/view/Surface;

    .line 86
    return v0

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/huawei/ims/vt/MediaController;->mSurface:Landroid/view/Surface;

    .line 91
    iget-object v1, p0, Lcom/huawei/ims/vt/MediaController;->mPreSetSurface:Landroid/view/Surface;

    if-eq p1, v1, :cond_1

    invoke-static {}, Lcom/huawei/ims/vt/CameraController;->getInstance()Lcom/huawei/ims/vt/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/vt/CameraController;->isParamReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string v1, "start to setFarEndSurface and startRemotePreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-object p1, p0, Lcom/huawei/ims/vt/MediaController;->mPreSetSurface:Landroid/view/Surface;

    .line 94
    invoke-static {p1}, Lcom/huawei/vtproxy/ImsThinClient;->setFarEndSurface(Landroid/view/Surface;)I

    .line 95
    invoke-direct {p0}, Lcom/huawei/ims/vt/MediaController;->setInitBitRate()V

    .line 96
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->showRmtVideo()I

    .line 97
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_1
    return v0
.end method
