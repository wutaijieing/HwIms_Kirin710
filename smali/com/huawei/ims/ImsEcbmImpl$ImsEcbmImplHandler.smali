.class Lcom/huawei/ims/ImsEcbmImpl$ImsEcbmImplHandler;
.super Landroid/os/Handler;
.source "ImsEcbmImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsEcbmImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsEcbmImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsEcbmImpl;


# direct methods
.method private constructor <init>(Lcom/huawei/ims/ImsEcbmImpl;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/huawei/ims/ImsEcbmImpl$ImsEcbmImplHandler;->this$0:Lcom/huawei/ims/ImsEcbmImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/ims/ImsEcbmImpl;Lcom/huawei/ims/ImsEcbmImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/ims/ImsEcbmImpl;
    .param p2, "x1"    # Lcom/huawei/ims/ImsEcbmImpl$1;

    .line 87
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsEcbmImpl$ImsEcbmImplHandler;-><init>(Lcom/huawei/ims/ImsEcbmImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 90
    const-string v0, "ImsEcbmImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    const-string v0, "ImsEcbmImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :pswitch_0
    const-string v0, "ImsEcbmImpl"

    const-string v1, "EVENT_EXIT_EMERGENCY_CALLBACK_MODE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/huawei/ims/ImsEcbmImpl$ImsEcbmImplHandler;->this$0:Lcom/huawei/ims/ImsEcbmImpl;

    iget-object v1, p0, Lcom/huawei/ims/ImsEcbmImpl$ImsEcbmImplHandler;->this$0:Lcom/huawei/ims/ImsEcbmImpl;

    invoke-static {v1}, Lcom/huawei/ims/ImsEcbmImpl;->access$100(Lcom/huawei/ims/ImsEcbmImpl;)Lcom/android/ims/internal/IImsEcbmListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/huawei/ims/ImsEcbmImpl;->access$200(Lcom/huawei/ims/ImsEcbmImpl;Lcom/android/ims/internal/IImsEcbmListener;Z)V

    .line 100
    goto :goto_0

    .line 94
    :pswitch_1
    const-string v0, "ImsEcbmImpl"

    const-string v1, "EVENT_ENTER_EMERGENCY_CALLBACK_MODE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/huawei/ims/ImsEcbmImpl$ImsEcbmImplHandler;->this$0:Lcom/huawei/ims/ImsEcbmImpl;

    iget-object v1, p0, Lcom/huawei/ims/ImsEcbmImpl$ImsEcbmImplHandler;->this$0:Lcom/huawei/ims/ImsEcbmImpl;

    invoke-static {v1}, Lcom/huawei/ims/ImsEcbmImpl;->access$100(Lcom/huawei/ims/ImsEcbmImpl;)Lcom/android/ims/internal/IImsEcbmListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/huawei/ims/ImsEcbmImpl;->access$200(Lcom/huawei/ims/ImsEcbmImpl;Lcom/android/ims/internal/IImsEcbmListener;Z)V

    .line 96
    nop

    .line 105
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
