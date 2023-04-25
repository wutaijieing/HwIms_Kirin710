.class Lcom/huawei/ims/vt/CameraController$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/vt/CameraController;


# direct methods
.method constructor <init>(Lcom/huawei/ims/vt/CameraController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/vt/CameraController;

    .line 546
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 550
    if-nez p2, :cond_0

    .line 551
    const-string v0, "CameraController"

    const-string v1, "onReceive, intent is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void

    .line 555
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "action":Ljava/lang/String;
    const-string v1, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v1, "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    const-string v2, "ims_sdk_res_id"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/huawei/ims/vt/CameraController;->access$002(Lcom/huawei/ims/vt/CameraController;I)I

    .line 559
    const-string v1, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params ready broadcast received, mIMSSDKResId is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    invoke-static {v3}, Lcom/huawei/ims/vt/CameraController;->access$000(Lcom/huawei/ims/vt/CameraController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {}, Lcom/huawei/ims/vt/CameraController;->access$100()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    invoke-static {v2}, Lcom/huawei/ims/vt/CameraController;->access$000(Lcom/huawei/ims/vt/CameraController;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-static {}, Lcom/huawei/ims/vt/CameraController;->access$100()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    invoke-static {v2}, Lcom/huawei/ims/vt/CameraController;->access$200(Lcom/huawei/ims/vt/CameraController;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    invoke-static {v1}, Lcom/huawei/ims/vt/CameraController;->access$300(Lcom/huawei/ims/vt/CameraController;)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 562
    invoke-static {}, Lcom/huawei/ims/vt/MediaController;->getInstance()Lcom/huawei/ims/vt/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/vt/MediaController;->setDisplaySurface()Z

    move-result v1

    .line 563
    .local v1, "setSuccess":Z
    if-eqz v1, :cond_1

    .line 564
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    invoke-static {v2}, Lcom/huawei/ims/vt/CameraController;->access$300(Lcom/huawei/ims/vt/CameraController;)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 566
    .local v2, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v3, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v3

    .line 567
    .local v3, "currentCallType":I
    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    .line 568
    .local v4, "isVideoCallType":Z
    if-eqz v4, :cond_1

    .line 569
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    invoke-static {v5, v3}, Lcom/huawei/ims/vt/CameraController;->access$400(Lcom/huawei/ims/vt/CameraController;I)V

    .line 574
    .end local v1    # "setSuccess":Z
    .end local v2    # "cp":Landroid/telephony/ims/ImsCallProfile;
    .end local v3    # "currentCallType":I
    .end local v4    # "isVideoCallType":Z
    :cond_1
    return-void
.end method
