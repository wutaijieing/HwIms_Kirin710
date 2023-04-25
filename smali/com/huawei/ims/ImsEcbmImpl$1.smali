.class Lcom/huawei/ims/ImsEcbmImpl$1;
.super Ljava/lang/Object;
.source "ImsEcbmImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsEcbmImpl;->createEcbmCallBackThread(Lcom/android/ims/internal/IImsEcbmListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsEcbmImpl;

.field final synthetic val$isEntered:Z

.field final synthetic val$listener:Lcom/android/ims/internal/IImsEcbmListener;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsEcbmImpl;ZLcom/android/ims/internal/IImsEcbmListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsEcbmImpl;

    .line 68
    iput-object p1, p0, Lcom/huawei/ims/ImsEcbmImpl$1;->this$0:Lcom/huawei/ims/ImsEcbmImpl;

    iput-boolean p2, p0, Lcom/huawei/ims/ImsEcbmImpl$1;->val$isEntered:Z

    iput-object p3, p0, Lcom/huawei/ims/ImsEcbmImpl$1;->val$listener:Lcom/android/ims/internal/IImsEcbmListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/ImsEcbmImpl$1;->val$isEntered:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/huawei/ims/ImsEcbmImpl$1;->val$listener:Lcom/android/ims/internal/IImsEcbmListener;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbmListener;->enteredECBM()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsEcbmImpl$1;->val$listener:Lcom/android/ims/internal/IImsEcbmListener;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbmListener;->exitedECBM()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsEcbmImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException @createEcbmCallBackThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
