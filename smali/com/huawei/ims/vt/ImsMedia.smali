.class public Lcom/huawei/ims/vt/ImsMedia;
.super Ljava/lang/Object;
.source "ImsMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/vt/ImsMedia$CameraListener;,
        Lcom/huawei/ims/vt/ImsMedia$IMediaListener;
    }
.end annotation


# static fields
.field private static final NO_MEDIA_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ImsMedia"

.field private static mInstance:Lcom/huawei/ims/vt/ImsMedia;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mCameraListener:Lcom/huawei/ims/vt/ImsMedia$CameraListener;

.field private mMediaListener:Lcom/huawei/ims/vt/ImsMedia$IMediaListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/ImsMedia;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/huawei/ims/vt/ImsMedia;
    .locals 2

    .line 24
    sget-object v0, Lcom/huawei/ims/vt/ImsMedia;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/huawei/ims/vt/ImsMedia;->mInstance:Lcom/huawei/ims/vt/ImsMedia;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/huawei/ims/vt/ImsMedia;

    invoke-direct {v1}, Lcom/huawei/ims/vt/ImsMedia;-><init>()V

    sput-object v1, Lcom/huawei/ims/vt/ImsMedia;->mInstance:Lcom/huawei/ims/vt/ImsMedia;

    .line 28
    :cond_0
    sget-object v1, Lcom/huawei/ims/vt/ImsMedia;->mInstance:Lcom/huawei/ims/vt/ImsMedia;

    monitor-exit v0

    return-object v1

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public setCameraListener(Lcom/huawei/ims/vt/ImsMedia$CameraListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huawei/ims/vt/ImsMedia$CameraListener;

    .line 44
    iput-object p1, p0, Lcom/huawei/ims/vt/ImsMedia;->mCameraListener:Lcom/huawei/ims/vt/ImsMedia$CameraListener;

    .line 45
    return-void
.end method

.method public setMediaListener(Lcom/huawei/ims/vt/ImsMedia$IMediaListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huawei/ims/vt/ImsMedia$IMediaListener;

    .line 40
    iput-object p1, p0, Lcom/huawei/ims/vt/ImsMedia;->mMediaListener:Lcom/huawei/ims/vt/ImsMedia$IMediaListener;

    .line 41
    return-void
.end method

.method public vtFlowInfoReport(IJ)V
    .locals 9
    .param p1, "subId"    # I
    .param p2, "dataUsage"    # J

    .line 69
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsMedia;->mMediaListener:Lcom/huawei/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "ImsMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add call data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/huawei/ims/vt/ImsMedia;->mMediaListener:Lcom/huawei/ims/vt/ImsMedia$IMediaListener;

    const/4 v4, -0x1

    const-wide/16 v7, 0x0

    move v3, p1

    move-wide v5, p2

    invoke-interface/range {v2 .. v8}, Lcom/huawei/ims/vt/ImsMedia$IMediaListener;->onDataUsageChanged(IIJJ)V

    .line 73
    :cond_0
    return-void
.end method
