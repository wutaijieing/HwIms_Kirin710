.class Lcom/huawei/ims/ImsServiceSub$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsServiceSub;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 618
    iput-object p1, p0, Lcom/huawei/ims/ImsServiceSub$1;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 621
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$1;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBroadCastReceiver: action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 622
    const-string v0, "com.hisi.vowifi.started"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$1;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$100(Lcom/huawei/ims/ImsServiceSub;)Lcom/hisi/mapcon/IMapconService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$1;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->bindMapconService()V

    .line 628
    :cond_0
    return-void
.end method
