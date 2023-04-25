.class public Lcom/huawei/ims/feature/HwMMTelFeature;
.super Landroid/telephony/ims/compat/feature/MmTelFeature;
.source "HwMMTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;,
        Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;
    }
.end annotation


# static fields
.field private static final EVENT_SIM_STATE_CHANGED:I = 0x2

.field private static final LAST_CALL_TYPE_UNKNOWN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HwMMTelFeature"


# instance fields
.field private featureCapabilitesChangedListener:Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;

.field private incomingListener:Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;

.field private mHandler:Landroid/os/Handler;

.field private mImsPhoneId:I

.field private mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

.field private mSubId:I

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mySlotId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/huawei/ims/ImsServiceSub;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "imsServiceSub"    # Lcom/huawei/ims/ImsServiceSub;

    .line 74
    invoke-direct {p0}, Landroid/telephony/ims/compat/feature/MmTelFeature;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    .line 42
    new-instance v0, Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;

    invoke-direct {v0, p0}, Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;-><init>(Lcom/huawei/ims/feature/HwMMTelFeature;)V

    iput-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->incomingListener:Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;

    .line 43
    new-instance v0, Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;-><init>(Lcom/huawei/ims/feature/HwMMTelFeature;Lcom/huawei/ims/feature/HwMMTelFeature$1;)V

    iput-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->featureCapabilitesChangedListener:Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/huawei/ims/feature/HwMMTelFeature;->initialize(Landroid/content/Context;I)V

    .line 77
    iput-object p3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    .line 78
    iput p2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwMMTelFeature constructor: mSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    .line 82
    .local v0, "isMultiSims":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HwMMTelFeature constructor: isMultiSims = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDualIms = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x2

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v2, :cond_0

    .line 85
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v2

    iput v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    .line 86
    iget v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    iget v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    if-ne v2, v3, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->setFeatureState(I)V

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HwMMTelFeature constructor: setFeatureState ready! mImsPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->setFeatureState(I)V

    .line 92
    const-string v1, "HwMMTelFeature constructor: setFeatureState ready!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 95
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/huawei/ims/feature/HwMMTelFeature;->initSubscriptionStatus()V

    .line 96
    return-void
.end method

.method private createHandler()V
    .locals 1

    .line 99
    new-instance v0, Lcom/huawei/ims/feature/HwMMTelFeature$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/feature/HwMMTelFeature$1;-><init>(Lcom/huawei/ims/feature/HwMMTelFeature;)V

    iput-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method private handleSimStateChanged(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 140
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 141
    .local v0, "mNumPhones":I
    const/4 v1, 0x0

    .line 142
    .local v1, "mPhoneChanged":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimStateChanged: NumPhones:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Ims PhoneID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v2

    .line 145
    .local v2, "default4GSlotId":I
    iget v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    if-eq v3, v2, :cond_0

    .line 146
    iput v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    .line 147
    const/4 v1, 0x1

    .line 149
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSimStateChanged: mPhoneChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 151
    if-eqz v1, :cond_2

    .line 156
    iget-object v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    iget v4, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsServiceSub;->registerForPhoneId(I)V

    .line 157
    iget v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    iget v4, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    if-eq v3, v4, :cond_1

    .line 158
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/huawei/ims/feature/HwMMTelFeature;->setFeatureState(I)V

    goto :goto_0

    .line 160
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/huawei/ims/feature/HwMMTelFeature;->setFeatureState(I)V

    .line 163
    :cond_2
    :goto_0
    return-void
.end method

.method private initSubscriptionStatus()V
    .locals 4

    .line 121
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/huawei/ims/feature/HwMMTelFeature;->createHandler()V

    .line 125
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 126
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "UiccController getInstance Exception!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 130
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    const-string v0, "initSubscriptionStatus: registered for EVENT_SIM_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_0
    const-string v0, "initSubscriptionStatus: Not multi-sim..."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 133
    iput-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 134
    iput-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHandler:Landroid/os/Handler;

    .line 136
    :goto_1
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwMMTelFeature["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwMMTelFeature["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/compat/feature/CapabilityChangeRequest;Landroid/telephony/ims/compat/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 4
    .param p1, "request"    # Landroid/telephony/ims/compat/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/compat/feature/ImsFeature$CapabilityCallbackProxy;

    .line 201
    if-nez p1, :cond_0

    .line 202
    return-void

    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/compat/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/compat/feature/CapabilityChangeRequest$CapabilityPair;

    .line 206
    .local v1, "cap":Landroid/telephony/ims/compat/feature/CapabilityChangeRequest$CapabilityPair;
    iget-object v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    iget-object v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/huawei/ims/ImsServiceSub;->changeFeatureValue(Landroid/telephony/ims/compat/feature/CapabilityChangeRequest$CapabilityPair;I)V

    .line 207
    .end local v1    # "cap":Landroid/telephony/ims/compat/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ims/compat/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/compat/feature/CapabilityChangeRequest$CapabilityPair;

    .line 210
    .restart local v1    # "cap":Landroid/telephony/ims/compat/feature/CapabilityChangeRequest$CapabilityPair;
    iget-object v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    iget-object v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/huawei/ims/ImsServiceSub;->changeFeatureValue(Landroid/telephony/ims/compat/feature/CapabilityChangeRequest$CapabilityPair;I)V

    .line 211
    .end local v1    # "cap":Landroid/telephony/ims/compat/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_1

    .line 212
    :cond_2
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 167
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-nez v0, :cond_0

    .line 168
    const-string v0, "mImsServiceSub = null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/ImsServiceSub;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/huawei/ims/feature/HwMMTelFeature;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object p1

    return-object p1
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 176
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-nez v0, :cond_0

    .line 177
    const-string v0, "mImsServiceSub = null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/huawei/ims/ImsServiceSub;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method public getEcbm()Landroid/telephony/ims/compat/stub/ImsEcbmImplBase;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->getEcbm()Lcom/huawei/ims/ImsEcbmImpl;

    move-result-object v0

    return-object v0
.end method

.method public getLastCallType(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 256
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 257
    const-string v0, "GetLastCallType:: mImsServiceSub is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 258
    return v1

    .line 261
    :cond_0
    iget v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    if-eq p1, v0, :cond_1

    .line 262
    const-string v0, "getLastCallType:: slotId does not equal to mSubId."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 263
    return v1

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->getLastCallType()I

    move-result v0

    return v0
.end method

.method public getMultiEndpoint()Landroid/telephony/ims/compat/stub/ImsMultiEndpointImplBase;
    .locals 1

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUt()Landroid/telephony/ims/compat/stub/ImsUtImplBase;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->getUt()Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 114
    const-string v0, "Unknown msg!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    const-string v0, "Received event: EVENT_SIM_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/huawei/ims/feature/HwMMTelFeature;->handleSimStateChanged(Landroid/os/Message;)V

    .line 112
    nop

    .line 117
    :goto_0
    return-void
.end method

.method public onFeatureReady()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->incomingListener:Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;

    iget-object v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->featureCapabilitesChangedListener:Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/huawei/ims/ImsServiceSub;->createImsServiceClassTracker(ILcom/huawei/ims/ImsServiceClassTracker$InComingListener;Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;)V

    .line 246
    return-void
.end method

.method public onFeatureRemoved()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->removeImsServiceClassTracker(I)V

    .line 251
    return-void
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 186
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-nez v0, :cond_0

    .line 187
    const-string v0, "SetUiTTYMode:: mImsServiceSub is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 188
    return-void

    .line 191
    :cond_0
    const-string v0, "setUiTTYMode"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "serviceId":I
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v1, v0, p1, p2}, Lcom/huawei/ims/ImsServiceSub;->setUiTTYMode(IILandroid/os/Message;)V

    .line 194
    return-void
.end method
