.class Lcom/huawei/ims/vt/MediaController$1;
.super Landroid/telephony/PhoneStateListener;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/vt/MediaController;


# direct methods
.method constructor <init>(Lcom/huawei/ims/vt/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/vt/MediaController;

    .line 237
    iput-object p1, p0, Lcom/huawei/ims/vt/MediaController$1;->this$0:Lcom/huawei/ims/vt/MediaController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 240
    if-nez p1, :cond_0

    .line 241
    invoke-static {}, Lcom/huawei/ims/vt/MediaController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Call state is IDLE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/huawei/ims/vt/VTUtils;->setPreCallDataUsage(J)V

    .line 244
    invoke-static {v0, v1}, Lcom/huawei/ims/vt/VTUtils;->setTotalCallDataUsage(J)V

    .line 248
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 249
    return-void
.end method
