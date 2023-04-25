.class Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;
.super Landroid/os/Handler;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/vt/CameraController;


# direct methods
.method constructor <init>(Lcom/huawei/ims/vt/CameraController;)V
    .locals 0

    .line 922
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;->this$0:Lcom/huawei/ims/vt/CameraController;

    .line 923
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 924
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 928
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 931
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 932
    .local v0, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;->this$0:Lcom/huawei/ims/vt/CameraController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/huawei/ims/vt/CameraController;->open(Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 933
    nop

    .line 937
    .end local v0    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    :goto_0
    return-void
.end method
