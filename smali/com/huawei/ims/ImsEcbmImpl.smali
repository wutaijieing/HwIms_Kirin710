.class public Lcom/huawei/ims/ImsEcbmImpl;
.super Landroid/telephony/ims/compat/stub/ImsEcbmImplBase;
.source "ImsEcbmImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsEcbmImpl$ImsEcbmImplHandler;
    }
.end annotation


# static fields
.field private static final EVENT_ENTER_EMERGENCY_CALLBACK_MODE:I = 0x1

.field private static final EVENT_EXIT_EMERGENCY_CALLBACK_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ImsEcbmImpl"


# instance fields
.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/ims/internal/IImsEcbmListener;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/ImsRIL;)V
    .locals 4
    .param p1, "ci"    # Lcom/huawei/ims/ImsRIL;

    .line 25
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsEcbmImplBase;-><init>()V

    .line 22
    new-instance v0, Lcom/huawei/ims/ImsEcbmImpl$ImsEcbmImplHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/ImsEcbmImpl$ImsEcbmImplHandler;-><init>(Lcom/huawei/ims/ImsEcbmImpl;Lcom/huawei/ims/ImsEcbmImpl$1;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    .line 26
    iput-object p1, p0, Lcom/huawei/ims/ImsEcbmImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 27
    iget-object v0, p0, Lcom/huawei/ims/ImsEcbmImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/huawei/ims/ImsEcbmImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 30
    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/ImsEcbmImpl;)Lcom/android/ims/internal/IImsEcbmListener;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsEcbmImpl;

    .line 17
    iget-object v0, p0, Lcom/huawei/ims/ImsEcbmImpl;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/ims/ImsEcbmImpl;Lcom/android/ims/internal/IImsEcbmListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsEcbmImpl;
    .param p1, "x1"    # Lcom/android/ims/internal/IImsEcbmListener;
    .param p2, "x2"    # Z

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsEcbmImpl;->createEcbmCallBackThread(Lcom/android/ims/internal/IImsEcbmListener;Z)V

    return-void
.end method

.method private static checkAccessPermission()V
    .locals 3

    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 53
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method private createEcbmCallBackThread(Lcom/android/ims/internal/IImsEcbmListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsEcbmListener;
    .param p2, "isEntered"    # Z

    .line 68
    new-instance v0, Lcom/huawei/ims/ImsEcbmImpl$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/huawei/ims/ImsEcbmImpl$1;-><init>(Lcom/huawei/ims/ImsEcbmImpl;ZLcom/android/ims/internal/IImsEcbmListener;)V

    .line 82
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "ImsEcbmImplEcbmCallBackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 83
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 84
    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 3

    .line 45
    invoke-static {}, Lcom/huawei/ims/ImsEcbmImpl;->checkAccessPermission()V

    .line 47
    iget-object v0, p0, Lcom/huawei/ims/ImsEcbmImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 48
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsEcbmListener;

    .line 38
    invoke-static {}, Lcom/huawei/ims/ImsEcbmImpl;->checkAccessPermission()V

    .line 40
    iput-object p1, p0, Lcom/huawei/ims/ImsEcbmImpl;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    .line 41
    return-void
.end method
