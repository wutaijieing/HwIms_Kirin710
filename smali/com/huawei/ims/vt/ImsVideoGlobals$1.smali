.class Lcom/huawei/ims/vt/ImsVideoGlobals$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsVideoGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/ImsVideoGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ImsVideoGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v1, "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    .line 191
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    const-string v1, "ImsVideoGlobals"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent.getAction is ACTION_BOOT_COMPLETED,mIsSdkInited = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->access$000()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->imsProcBootCompleted()V

    .line 213
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    const-string v1, "ImsVideoGlobals"

    const-string v3, "create HME log folder when receive BootCompleted broadcast"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->createHmeLogFolder()V

    .line 217
    :cond_1
    invoke-static {v2}, Lcom/huawei/ims/vt/ImsVideoGlobals;->access$202(Z)Z

    goto/16 :goto_1

    .line 219
    :cond_2
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 220
    const-string v1, "ImsVideoGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent.getAction is ACTION_SHUTDOWN,mIsSdkInited = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->access$000()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->access$000()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->deInit()V

    goto :goto_1

    .line 194
    :cond_3
    :goto_0
    const-string v1, "ImsVideoGlobals"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: mIsSdkInited is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->access$000()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->access$000()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/ims/vt/VTUtils;->isImsSwitchOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    const-string v1, "ImsVideoGlobals"

    const-string v3, "start to initImsThinClient"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {p1}, Lcom/huawei/vtproxy/ImsThinClient;->initImsThinClient(Landroid/content/Context;)I

    .line 198
    invoke-static {v2}, Lcom/huawei/ims/vt/ImsVideoGlobals;->access$002(Z)Z

    .line 199
    const/4 v1, 0x0

    sget-object v3, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA2:Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_CAMERA_TYPE;

    invoke-virtual {v3}, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_CAMERA_TYPE;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huawei/vtproxy/ImsCameraClient;->setCameraParameter(ILjava/lang/Object;)I

    .line 200
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;->HME_V_Encoder_SURFACE:Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

    invoke-virtual {v1}, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/huawei/vtproxy/ImsCameraClient;->setCameraParameter(ILjava/lang/Object;)I

    .line 201
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->access$200()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    const-string v1, "ImsVideoGlobals"

    const-string v2, "create HME log folder after SDK inited"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->createHmeLogFolder()V

    .line 226
    :cond_4
    :goto_1
    return-void
.end method
