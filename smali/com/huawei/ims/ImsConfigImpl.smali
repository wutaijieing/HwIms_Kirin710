.class public Lcom/huawei/ims/ImsConfigImpl;
.super Landroid/telephony/ims/compat/stub/ImsConfigImplBase;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;,
        Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;
    }
.end annotation


# static fields
.field protected static final CODE_IS_UNSUPPORT_MMI_CODE:I = 0xbb9

.field private static final DEBUG:Z = false

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsConfig"

.field private static final EVENT_QUERY_VT_CALL_QUALITY:I = 0x2

.field private static final EVENT_SET_FEATURE_VALUE:I = 0x3

.field private static final EVENT_SET_VT_CALL_QUALITY:I = 0x1

.field private static final IMS_CONFIG_SERVICE_NAME:Ljava/lang/String; = "ims_config"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConfigImpl"

.field private static volatile instance:Lcom/huawei/ims/ImsConfigImpl;

.field private static mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/ImsConfigImpl;->mLock:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    .line 47
    sput-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;-><init>()V

    .line 59
    const-string v0, "ImsConfigImpl"

    const-string v1, "ImsConfigImpl::ImsConfigImpl()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 33
    invoke-static {p0}, Lcom/huawei/ims/ImsConfigImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 33
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsConfigImpl;->getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "x1"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsConfigImpl;->onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "x1"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsConfigImpl;->onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "x1"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsConfigImpl;->onSetFeatureResponseDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 33
    invoke-static {p0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected static checkAccessPermission()V
    .locals 3

    .line 584
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 585
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    :cond_1
    :goto_0
    return-void
.end method

.method private getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 208
    if-nez p1, :cond_0

    .line 209
    const-string v0, "AsyncResult is null."

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsConfigListener;

    return-object v0

    .line 212
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    iget-object v0, v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    iget-object v0, v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    return-object v0

    .line 217
    :cond_2
    :goto_0
    const-string v0, "getImsConfigListener returns null"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method static getInstance()Lcom/huawei/ims/ImsConfigImpl;
    .locals 3

    .line 66
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->checkAccessPermission()V

    .line 68
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    if-nez v0, :cond_1

    .line 70
    const-class v0, Lcom/huawei/ims/ImsConfigImpl;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/huawei/ims/ImsConfigImpl;

    invoke-direct {v1}, Lcom/huawei/ims/ImsConfigImpl;-><init>()V

    sput-object v1, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    .line 75
    const-string v1, "ImsConfigImpl"

    const-string v2, "add ims_config service"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v1, "ims_config"

    sget-object v2, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsConfigImpl;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 77
    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v1

    new-array v1, v1, [Lcom/huawei/ims/HwImsConfigImpl;

    sput-object v1, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    .line 79
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 81
    :cond_1
    const-string v0, "instance is already exist!"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 84
    :goto_0
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    return-object v0
.end method

.method private getOperationStatus(Z)I
    .locals 1
    .param p1, "status"    # Z

    .line 203
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 204
    :cond_0
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0
.end method

.method private static logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "() is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 597
    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 601
    const-string v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void
.end method

.method private onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 160
    if-eqz p1, :cond_2

    .line 162
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v0

    .line 163
    .local v0, "status":I
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 164
    const/4 v1, -0x1

    goto :goto_1

    .line 165
    :cond_1
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 166
    .local v1, "result":I
    :goto_1
    invoke-interface {p1, v0, v1}, Lcom/android/ims/ImsConfigListener;->onGetVideoQuality(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    .end local v1    # "result":I
    goto :goto_2

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetVideoCallQualityDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 169
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_3

    .line 171
    :cond_2
    const-string v0, "onGetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 173
    :goto_3
    return-void
.end method

.method private onSetFeatureResponseDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 189
    if-eqz p1, :cond_1

    .line 191
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v0

    .line 192
    .local v0, "status":I
    iget-object v1, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 193
    .local v1, "f":Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;
    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->access$600(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I

    move-result v2

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->access$700(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I

    move-result v3

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->access$800(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I

    move-result v4

    invoke-interface {p1, v2, v3, v4, v0}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    .end local v1    # "f":Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;
    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetFeatureResponseDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 196
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 198
    :cond_1
    const-string v0, "onSetFeatureResponseDone listener is not valid !!!"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 200
    :goto_2
    return-void
.end method

.method private onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 176
    if-eqz p1, :cond_1

    .line 178
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v0

    .line 179
    .local v0, "status":I
    invoke-interface {p1, v0}, Lcom/android/ims/ImsConfigListener;->onSetVideoQuality(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    goto :goto_1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetVideoCallQualityDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 182
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 184
    :cond_1
    const-string v0, "onSetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 186
    :goto_2
    return-void
.end method


# virtual methods
.method getBoolFromSP(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 1
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defValue"    # Z

    .line 568
    const-string v0, "getBoolFromSP"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method getBsfAddrFromSIM()Ljava/lang/String;
    .locals 1

    .line 528
    const-string v0, "getBsfAddrFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 529
    const/4 v0, 0x0

    return-object v0
.end method

.method getCallWaitingMode()I
    .locals 1

    .line 417
    const-string v0, "getCallWaitingMode"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 418
    const/4 v0, -0x1

    return v0
.end method

.method getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    .locals 1

    .line 543
    const-string v0, "getCallWaitingSource"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 544
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfigInterface(Lcom/huawei/ims/ImsServiceSub;I)Lcom/huawei/ims/HwImsConfigImpl;
    .locals 3
    .param p1, "imsServiceSub"    # Lcom/huawei/ims/ImsServiceSub;
    .param p2, "subId"    # I

    .line 91
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->checkAccessPermission()V

    .line 93
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {p2}, Lcom/huawei/ims/ImsCallUtils;->isValidServiceSubIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    const-string v1, "ImsConfigImpl"

    const-string v2, "getConfigInterface - subId is invalid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object v0

    .line 103
    :cond_1
    sget-object v1, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    if-nez v1, :cond_2

    .line 104
    const-string v1, "ImsConfigImpl"

    const-string v2, "getConfigInterface - mHwImsConfigImpl is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-object v0

    .line 108
    :cond_2
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v0, v0, p2

    if-eqz v0, :cond_3

    .line 109
    const-string v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigInterface - mHwImsConfigImpl [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is already exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v0, v0, p2

    return-object v0

    .line 113
    :cond_3
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    new-instance v1, Lcom/huawei/ims/HwImsConfigImpl;

    invoke-direct {v1, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;-><init>(Lcom/huawei/ims/ImsServiceSub;I)V

    aput-object v1, v0, p2

    .line 115
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v0, v0, p2

    return-object v0

    .line 94
    :cond_4
    :goto_0
    const-string v1, "ImsConfigImpl"

    const-string v2, "getConfigInterface - imsServiceSub or context is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-object v0
.end method

.method getContentTypeMode()I
    .locals 1

    .line 362
    const-string v0, "getContentTypeMode"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method getDefaultNoReplyTimer()I
    .locals 1

    .line 357
    const-string v0, "getDefaultNoReplyTimer"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 358
    const/4 v0, -0x1

    return v0
.end method

.method getIMSI()Ljava/lang/String;
    .locals 1

    .line 479
    const-string v0, "isMissedCallTipsDelay"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 480
    const/4 v0, 0x0

    return-object v0
.end method

.method getImpiFromSIM()Ljava/lang/String;
    .locals 1

    .line 523
    const-string v0, "getImpiFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 524
    const/4 v0, 0x0

    return-object v0
.end method

.method getImpuFromSIM()Ljava/lang/String;
    .locals 1

    .line 518
    const-string v0, "getImpuFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 519
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsConfig(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 1
    .param p1, "configKey"    # Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method getMissedCallTipsDelayTimer()I
    .locals 1

    .line 307
    const-string v0, "getMissedCallTipsDelayTimer"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 308
    const/4 v0, -0x1

    return v0
.end method

.method getMissedCallTipsRingTimer()I
    .locals 1

    .line 302
    const-string v0, "getMissedCallTipsRingTimer"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 303
    const/4 v0, -0x1

    return v0
.end method

.method getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 558
    const-string v0, "getSharedPreferences"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 559
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtBsfPort()I
    .locals 1

    .line 427
    const-string v0, "getUtBsfPort"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 428
    const/4 v0, -0x1

    return v0
.end method

.method getUtBsfSrvAddr()Ljava/lang/String;
    .locals 1

    .line 442
    const-string v0, "getUtBsfSrvAddr"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtGbaType()I
    .locals 1

    .line 432
    const-string v0, "getUtGbaType"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 433
    const/4 v0, -0x1

    return v0
.end method

.method getUtIMPI()Ljava/lang/String;
    .locals 1

    .line 469
    const-string v0, "getUtIMPI"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 470
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtIMPU(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 464
    const-string v0, "getUtIMPU"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x0

    return-object v0
.end method

.method declared-synchronized getUtIMPUFromNetwork()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 458
    :try_start_0
    const-string v0, "getUtIMPUFromNetwork"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/ImsConfigImpl;
    throw v0
.end method

.method getUtNafPort()I
    .locals 1

    .line 422
    const-string v0, "getUtNafPort"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 423
    const/4 v0, -0x1

    return v0
.end method

.method getUtNafSrvAddr()Ljava/lang/String;
    .locals 1

    .line 437
    const-string v0, "getUtNafSrvAddr"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtRetryInterval(I)I
    .locals 1
    .param p1, "index"    # I

    .line 553
    const-string v0, "getUtRetryInterval"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 554
    const/4 v0, -0x1

    return v0
.end method

.method getUtRetryMaxCounts()I
    .locals 1

    .line 548
    const-string v0, "getUtRetryMaxCounts"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 549
    const/4 v0, -0x1

    return v0
.end method

.method getUtUseApn()I
    .locals 1

    .line 347
    const-string v0, "getUtUseApn"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 348
    const/4 v0, -0x1

    return v0
.end method

.method getUtX3gppIntendId()Ljava/lang/String;
    .locals 1

    .line 474
    const-string v0, "getUtX3gppIntendId"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtXcapRootUri()Ljava/lang/String;
    .locals 1

    .line 448
    const-string v0, "getUtXcapRootUri"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 449
    const/4 v0, 0x0

    return-object v0
.end method

.method isCFNRcChangeWithCFNL()Z
    .locals 1

    .line 352
    const-string v0, "isCFNRcChangeWithCFNL"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method isCallWaitingSyncToCs()Z
    .locals 1

    .line 538
    const-string v0, "isCallWaitingSyncToCs"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method isCallWaitingSyncToImsSdk()Z
    .locals 1

    .line 533
    const-string v0, "isCallWaitingSyncToImsSdk"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method isCardMccMncPreferToUseUT(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cardMccMnc"    # Ljava/lang/String;

    .line 332
    const-string v0, "isCardMccMncPreferToUseUT"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method isCardTypePreferToUseUT(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .line 327
    const-string v0, "isCardTypePreferToUseUT"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method isCheckServiceWhenIncomingCall()Z
    .locals 1

    .line 312
    const-string v0, "isCheckServiceWhenIncomingCall"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method isHangUpWhenLostNet()Z
    .locals 1

    .line 578
    const-string v0, "isHangUpWhenLostNet"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public isHwCustCode(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 271
    const/16 v0, 0xbb9

    if-eq p1, v0, :cond_0

    .line 273
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVowifiPropOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    return v0

    .line 278
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method isIMPUConfigured()Z
    .locals 1

    .line 488
    const-string v0, "isIMPUConfigured"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method isImsSsBeUsed()Z
    .locals 1

    .line 317
    const-string v0, "isImsSsBeUsed"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method isImsStateFollowVoiceDomain()Z
    .locals 1

    .line 367
    const-string v0, "isImsStateFollowVoiceDomain"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallDisplay()Z
    .locals 1

    .line 292
    const-string v0, "isMissedCallDisplay"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallTips()Z
    .locals 1

    .line 372
    const-string v0, "isMissedCallTips"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallTipsDelay()Z
    .locals 1

    .line 297
    const-string v0, "isMissedCallTipsDelay"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallTipsInternal()Z
    .locals 1

    .line 287
    const-string v0, "isMissedCallTipsInternal"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method isSSForbidFallbackCS(I)Z
    .locals 1
    .param p1, "ssType"    # I

    .line 342
    const-string v0, "isSSForbidFallbackCS"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method isSSUseCsOnly(I)Z
    .locals 1
    .param p1, "ssType"    # I

    .line 337
    const-string v0, "isSSUseCsOnly"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method isUnSupportMMICode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "MMIcode"    # Ljava/lang/String;

    .line 282
    const-string v0, "isUnSupportMMICode"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method isUtBsfUseHttps()Z
    .locals 1

    .line 382
    const-string v0, "isUtBsfUseHttps"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method isUtCSBeUsed()Z
    .locals 1

    .line 387
    const-string v0, "isUtCSBeUsed"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method isUtForbiddenWhenVolteSwitchOff()Z
    .locals 1

    .line 322
    const-string v0, "isUtForbiddenWhenVolteSwitchOff"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method isUtKsnafEncodedByBase64()Z
    .locals 1

    .line 412
    const-string v0, "isUtKsnafEncodedByBase64"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method isUtNafUseHttps()Z
    .locals 1

    .line 377
    const-string v0, "isUtNafUseHttps"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method isUtOpenHrsLog()Z
    .locals 1

    .line 402
    const-string v0, "isUtOpenHrsLog"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method isUtUseNodeSelector()Z
    .locals 1

    .line 392
    const-string v0, "isUtUseNodeSelector"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method isUtUseTmpi()Z
    .locals 1

    .line 407
    const-string v0, "isUtUseTmpi"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method isUtUseXcapNameSpace()Z
    .locals 1

    .line 397
    const-string v0, "isUtUseXcapNameSpace"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x0

    return v0
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

    .line 240
    const-string v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransact, code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "result":Z
    const/16 v1, 0xbb9

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->checkAccessPermission()V

    .line 249
    const-string v1, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 252
    .local v1, "subId":I
    const-string v2, "ImsConfigImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTransact , subId read from data is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-boolean v2, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v2, :cond_1

    .line 254
    const-string v2, "ImsConfigImpl"

    const-string v3, "onTransact, single ims, set subId to 0"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v1, 0x0

    .line 258
    :cond_1
    sget-object v2, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->isValidServiceSubIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    sget-object v2, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/huawei/ims/HwImsConfigImpl;->processOnTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 260
    const/4 v0, 0x1

    .line 266
    .end local v1    # "subId":I
    :cond_2
    :goto_0
    return v0
.end method

.method setBoolToSP(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 1
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .line 573
    const-string v0, "setBoolToSP"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method setBsfAddrFromSIM(Ljava/lang/String;)V
    .locals 1
    .param p1, "bsfAddr"    # Ljava/lang/String;

    .line 505
    const-string v0, "setBsfAddrFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method setCurrentImsi(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .line 493
    const-string v0, "setCurrentImsi"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 224
    return-void
.end method

.method setIMSI(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .line 484
    const-string v0, "setIMSI"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method setImpiFromSIM(Ljava/lang/String;)V
    .locals 1
    .param p1, "impi"    # Ljava/lang/String;

    .line 501
    const-string v0, "setImpiFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public setImsConfig(Ljava/lang/String;Landroid/os/PersistableBundle;)I
    .locals 1
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "configValue"    # Landroid/os/PersistableBundle;

    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method setNafAddrFromSIM(Ljava/lang/String;)V
    .locals 1
    .param p1, "nsfAddr"    # Ljava/lang/String;

    .line 509
    const-string v0, "setNafAddrFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 563
    const-string v0, "setSharedPreferences"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method setSpliceMncMcc(Ljava/lang/String;)V
    .locals 1
    .param p1, "spliceMncMcc"    # Ljava/lang/String;

    .line 497
    const-string v0, "setSpliceMncMcc"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method spliceMncMcc()Ljava/lang/String;
    .locals 1

    .line 513
    const-string v0, "spliceMncMcc"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 514
    const/4 v0, 0x0

    return-object v0
.end method
