.class public Lcom/huawei/videoengine/KirinMediaCodecEncoder;
.super Ljava/lang/Object;
.source "KirinMediaCodecEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;,
        Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "hme_engine_KMC"

.field private static final VENDOR_KEY_CROPBOTTOM:Ljava/lang/String; = "vendor.hisi.CropBottom"

.field private static final VENDOR_KEY_CROPLFT:Ljava/lang/String; = "vendor.hisi.CropLeft"

.field private static final VENDOR_KEY_CROPRIGHT:Ljava/lang/String; = "vendor.hisi.CropRight"

.field private static final VENDOR_KEY_CROPTOP:Ljava/lang/String; = "vendor.hisi.CropTop"

.field private static final VENDOR_KEY_ENABLECROPPING:Ljava/lang/String; = "vendor.hisi.EnableCropping"

.field private static final VENDOR_KEY_ENABLESCALING:Ljava/lang/String; = "vendor.hisi.EnableScaling"

.field private static final VENDOR_KEY_FPS:Ljava/lang/String; = "vendor.hisi.FrameRate"

.field private static final VENDOR_KEY_LTRPARAMS:Ljava/lang/String; = "vendor.hisi.LTRParams"

.field private static final VENDOR_KEY_MAXQP:Ljava/lang/String; = "vendor.hisi.MaxQP"

.field private static final VENDOR_KEY_MINQP:Ljava/lang/String; = "vendor.hisi.MinQP"

.field private static final VENDOR_KEY_NONREFFRAMENUM:Ljava/lang/String; = "vendor.hisi.NoneRefFrameNum"

.field private static final VENDOR_KEY_SCALEHEIGHT:Ljava/lang/String; = "vendor.hisi.ScaledHeight"

.field private static final VENDOR_KEY_SCALEWIDTH:Ljava/lang/String; = "vendor.hisi.ScaledWidth"

.field private static final VENDOR_KEY_SETMAXLTRFFRAMENUM:Ljava/lang/String; = "vendor.hisi.SetLTRFrameNum"

.field private static final VENDOR_KEY_VTMODE:Ljava/lang/String; = "vendor.hisi.SceneMode"


# instance fields
.field private dataLength:I

.field private encKeyFrame:I

.field private encoder:Landroid/media/MediaCodec;

.field private encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private indexList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private listLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private lnativeObject:J

.field private mBitrate:I

.field private mChannelID:I

.field private mCodecPNum:I

.field private mEncCBHandler:Landroid/os/Handler;

.field private mEncCallBackThread:Landroid/os/HandlerThread;

.field private mEncOutFps:Lcom/huawei/videoengine/FpsStatistic;

.field private mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

.field private mFps:I

.field private mHeightIn:I

.field private mHeightOut:I

.field private mKeyFrameInterval:I

.field private mLastTimeForKeyFrame:J

.field private mMCSurface:Landroid/view/Surface;

.field private mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

.field private mProfile:I

.field private mSPSPPS:Ljava/nio/ByteBuffer;

.field private mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

.field private mWidthIn:I

.field private mWidthOut:I

.field private mediaFormat:Landroid/media/MediaFormat;

.field private objSPS:Ljava/lang/Object;

.field private renderTime:J

.field private started:Z

.field private streamBuffer:Ljava/nio/ByteBuffer;

.field private yuvBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    .line 96
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 97
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->yuvBuffer:Ljava/nio/ByteBuffer;

    .line 98
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;

    .line 99
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mSPSPPS:Ljava/nio/ByteBuffer;

    .line 100
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->objSPS:Ljava/lang/Object;

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    .line 105
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J

    .line 107
    iput-wide v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mLastTimeForKeyFrame:J

    .line 109
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->indexList:Ljava/util/LinkedList;

    .line 110
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 111
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 114
    sget-object v2, Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;->eH265:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    .line 115
    sget-object v2, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    .line 116
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCBHandler:Landroid/os/Handler;

    .line 117
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    .line 118
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    .line 119
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 120
    const/4 v2, -0x1

    iput v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    .line 121
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    .line 122
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    .line 123
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 124
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 129
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncOutFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 132
    const-string v0, "hme_engine_KMC"

    const-string v1, "Enter KirinMediaCodecEncoder."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    .line 96
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 97
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->yuvBuffer:Ljava/nio/ByteBuffer;

    .line 98
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;

    .line 99
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mSPSPPS:Ljava/nio/ByteBuffer;

    .line 100
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->objSPS:Ljava/lang/Object;

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    .line 105
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J

    .line 107
    iput-wide v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mLastTimeForKeyFrame:J

    .line 109
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->indexList:Ljava/util/LinkedList;

    .line 110
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 111
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 114
    sget-object v2, Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;->eH265:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    .line 115
    sget-object v2, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    .line 116
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCBHandler:Landroid/os/Handler;

    .line 117
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    .line 118
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    .line 119
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 120
    const/4 v2, -0x1

    iput v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    .line 121
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    .line 122
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    .line 123
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 124
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 129
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncOutFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 137
    const-string v0, "hme_engine_KMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter KirinMediaCodecEncoder. mcType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-nez p1, :cond_0

    .line 139
    sget-object p1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eData:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    goto :goto_0

    .line 141
    :cond_0
    sget-object p1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    .line 143
    :goto_0
    new-instance p1, Lcom/huawei/videoengine/FpsStatistic;

    const-string v0, "Enc Out"

    const/16 v1, 0x21

    invoke-direct {p1, v0, v1}, Lcom/huawei/videoengine/FpsStatistic;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncOutFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Landroid/media/MediaCodec;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/LinkedList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->indexList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Lcom/huawei/videoengine/FpsStatistic;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncOutFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object p0
.end method

.method static synthetic access$700(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mLastTimeForKeyFrame:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/huawei/videoengine/KirinMediaCodecEncoder;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mLastTimeForKeyFrame:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mKeyFrameInterval:I

    return p0
.end method

.method private createCodec()I
    .locals 7

    .line 780
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 781
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 782
    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    if-eqz v2, :cond_0

    .line 783
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    .line 784
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    .line 787
    :cond_0
    iget-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    sget-object v3, Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;->eH264:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v2, v3, :cond_4

    .line 788
    const-string v2, "video/avc"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 789
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mProfile:I

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    .line 790
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "profile"

    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 791
    :cond_1
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mProfile:I

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_2

    .line 792
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "profile"

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 793
    :cond_2
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mProfile:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_3

    .line 794
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "profile"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 796
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "level"

    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 799
    :try_start_0
    const-string v1, "video/avc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    goto :goto_1

    .line 800
    :catch_0
    move-exception v0

    .line 801
    const-string v1, "hme_engine_KMC"

    const-string v2, "reinit. createEncoderByType failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 803
    return v5

    .line 806
    :cond_4
    const-string v2, "video/hevc"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 807
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "profile"

    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 808
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "level"

    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 811
    :try_start_1
    const-string v1, "video/hevc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 816
    nop

    .line 819
    :goto_1
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    if-eq v0, v1, :cond_5

    .line 820
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "vendor.hisi.ScaledWidth"

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 821
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "vendor.hisi.ScaledHeight"

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 822
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "vendor.hisi.EnableScaling"

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 824
    :cond_5
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "vendor.hisi.SceneMode"

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 834
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "bitrate-mode"

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 835
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "bitrate"

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mBitrate:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 836
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "frame-rate"

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mFps:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 837
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    sget-object v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    if-ne v0, v1, :cond_6

    .line 838
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_2

    .line 840
    :cond_6
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "color-format"

    const v2, 0x7f420888

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 842
    :goto_2
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "i-frame-interval"

    const/16 v2, 0x2a30

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 843
    const-string v0, "hme_engine_KMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-virtual {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->addAsyncCallback()V

    .line 845
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 846
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    sget-object v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    if-ne v0, v1, :cond_7

    .line 847
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    .line 848
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    if-nez v0, :cond_7

    .line 849
    const-string v0, "hme_engine_KMC"

    const-string v1, "createInputSurface failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return v5

    .line 853
    :cond_7
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 854
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->yuvBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    .line 855
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->yuvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 857
    :cond_8
    iput-boolean v6, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    .line 859
    const/4 v0, 0x0

    return v0

    .line 812
    :catch_1
    move-exception v0

    .line 813
    const-string v1, "hme_engine_KMC"

    const-string v2, "reinit. createEncoderByType failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 815
    return v5
.end method

.method private createEncCBThread()I
    .locals 2

    .line 746
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 747
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "encCbThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    .line 748
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 749
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 750
    if-nez v0, :cond_0

    .line 751
    const-string v0, "hme_engine_KMC"

    const-string v1, "looper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v0, -0x1

    return v0

    .line 754
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCBHandler:Landroid/os/Handler;

    .line 756
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private initBuffer()I
    .locals 2

    .line 765
    const v0, 0x3f4800

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    nop

    .line 773
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->indexList:Ljava/util/LinkedList;

    .line 774
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 775
    const/4 v0, 0x0

    return v0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    const-string v0, "hme_engine_KMC"

    const-string v1, "Allocate buffer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->yuvBuffer:Ljava/nio/ByteBuffer;

    .line 770
    const/4 v0, -0x1

    return v0
.end method

.method private reinit()I
    .locals 3

    .line 691
    const-string v0, "hme_engine_KMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter reinit(none), mVc2a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->releaseEncoder()V

    .line 693
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 695
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 699
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->createCodec()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 700
    const/4 v0, -0x1

    .line 709
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 700
    return v0

    .line 703
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 710
    nop

    .line 712
    const/4 v0, 0x0

    return v0

    .line 709
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private releaseEncoder()V
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 720
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    .line 721
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 723
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 724
    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 730
    nop

    .line 732
    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 734
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 737
    :try_start_1
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->indexList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 741
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 742
    nop

    .line 743
    return-void

    .line 741
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 729
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private saveParams(IIIIIII)I
    .locals 1

    .line 873
    if-le p2, p3, :cond_0

    .line 874
    nop

    .line 875
    nop

    .line 876
    nop

    .line 878
    move v0, p3

    move p3, p2

    move p2, v0

    :cond_0
    iput p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 879
    iput p3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 880
    iput p4, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mBitrate:I

    .line 881
    iput p5, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mFps:I

    .line 882
    iput p6, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mProfile:I

    .line 883
    iput p7, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mCodecPNum:I

    .line 885
    if-nez p1, :cond_1

    .line 886
    sget-object p1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;->eH264:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    goto :goto_0

    .line 887
    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 888
    sget-object p1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;->eH265:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    .line 893
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 890
    :cond_2
    const-string p1, "hme_engine_KMC"

    const-string p2, "the codec type is invailed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 p1, -0x1

    return p1
.end method

.method private saveParams(JIIIIIIII)I
    .locals 8

    move-object v0, p0

    .line 866
    move-wide v1, p1

    iput-wide v1, v0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J

    .line 867
    move v1, p3

    iput v1, v0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mKeyFrameInterval:I

    .line 868
    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->saveParams(IIIIIII)I

    move-result v0

    return v0
.end method

.method private updateEncoderSize(II)V
    .locals 0

    .line 594
    if-ge p1, p2, :cond_0

    .line 595
    iput p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 596
    iput p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    goto :goto_0

    .line 598
    :cond_0
    iput p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 599
    iput p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 602
    :goto_0
    return-void
.end method


# virtual methods
.method public addAsyncCallback()V
    .locals 3

    .line 222
    const-string v0, "hme_engine_KMC"

    const-string v1, "Enter addAsyncCallback."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    new-instance v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;

    invoke-direct {v1, p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;-><init>(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)V

    iget-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCBHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 309
    return-void
.end method

.method public init(JIIIIIIII)I
    .locals 15

    move-object v12, p0

    .line 149
    const-string v0, "hme_engine_KMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter init. width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bitrate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p7

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p8

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p9

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, v12, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 155
    :try_start_0
    iget-boolean v0, v12, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v13, 0x0

    if-ne v0, v1, :cond_0

    .line 156
    nop

    .line 182
    iget-object v0, v12, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 156
    return v13

    .line 159
    :cond_0
    :try_start_1
    invoke-direct {v12}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->createEncCBThread()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, -0x1

    if-eqz v0, :cond_1

    .line 160
    nop

    .line 182
    iget-object v0, v12, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 160
    return v14

    .line 163
    :cond_1
    :try_start_2
    invoke-direct {v12}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->initBuffer()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 164
    nop

    .line 182
    iget-object v0, v12, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 164
    return v14

    .line 167
    :cond_2
    move-object v1, v12

    move-wide/from16 v2, p1

    move/from16 v4, p10

    move/from16 v5, p3

    :try_start_3
    invoke-direct/range {v1 .. v11}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->saveParams(JIIIIIIII)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 169
    nop

    .line 182
    iget-object v0, v12, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 169
    return v14

    .line 172
    :cond_3
    :try_start_4
    invoke-direct {v12}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->createCodec()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    .line 173
    nop

    .line 182
    iget-object v0, v12, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 173
    return v14

    .line 176
    :cond_4
    :try_start_5
    iget-object v0, v12, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    if-eqz v0, :cond_5

    .line 177
    iget-object v0, v12, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, v12, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    iget v2, v12, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    :cond_5
    iget-object v0, v12, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 183
    nop

    .line 185
    return v13

    .line 182
    :catchall_0
    move-exception v0

    iget-object v1, v12, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public markoruseLTRFrame(ZZI)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 382
    :cond_0
    nop

    .line 383
    nop

    .line 384
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 386
    nop

    .line 388
    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 390
    goto :goto_1

    .line 394
    :cond_2
    nop

    .line 397
    move p3, v1

    move v0, p3

    .line 398
    :goto_1
    const/high16 p2, 0x1000000

    mul-int/2addr p1, p2

    const/high16 p2, 0x10000

    mul-int/2addr v0, p2

    add-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 399
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 401
    const-string p3, "vendor.hisi.LTRParams"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 402
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 407
    nop

    .line 408
    return-void

    .line 406
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 380
    return-void

    .line 406
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public native nSetReinitflag(J)V
.end method

.method public native nSetSPS(JLjava/nio/ByteBuffer;I)V
.end method

.method public onFrame()I
    .locals 1

    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public native procEncodedStream(JIIIZ)V
.end method

.method public reinit(IIIIIII)I
    .locals 3

    .line 191
    const-string v0, "hme_engine_KMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter reinit. width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bitrate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct/range {p0 .. p7}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->saveParams(IIIIIII)I

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    const/4 p1, -0x1

    return p1

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->reinit()I

    move-result p1

    return p1
.end method

.method public requestIDRFrame()I
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 512
    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 518
    nop

    .line 519
    return v2

    .line 508
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 517
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 508
    return v0

    .line 517
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setCapSource(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 4

    .line 560
    const-string v0, "hme_engine_KMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCapSource vc2a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    const/4 v1, 0x0

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V

    .line 565
    :cond_0
    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 566
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 567
    iput v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    .line 568
    iput v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    .line 569
    return v0

    .line 572
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->getWidthAfterRendering()I

    move-result v1

    .line 573
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->getHeighAftertRendering()I

    move-result v2

    .line 575
    iget v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    if-eq v1, v3, :cond_2

    iget v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    if-eq v1, v3, :cond_2

    .line 576
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    .line 577
    iput v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    .line 578
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_4

    .line 579
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->reinit()I

    .line 580
    iget-wide v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J

    invoke-virtual {p0, v1, v2}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->nSetReinitflag(J)V

    goto :goto_0

    .line 583
    :cond_2
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    .line 584
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {p1, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V

    goto :goto_0

    .line 586
    :cond_3
    const-string p1, "hme_engine_KMC"

    const-string v1, "codec has not init, but connect"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_4
    :goto_0
    return v0
.end method

.method public setDynamicIpPMode(I)V
    .locals 4

    .line 333
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 341
    const-string v1, "hme_engine_KMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxm_test,setDynamicIpPMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v1, "vendor.hisi.NoneRefFrameNum"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 343
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 349
    nop

    .line 350
    return-void

    .line 348
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 338
    return-void

    .line 348
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setFrameInfo(IJI)V
    .locals 0

    .line 496
    iput p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->dataLength:I

    .line 497
    iput-wide p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->renderTime:J

    .line 498
    iput p4, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encKeyFrame:I

    .line 499
    return-void
.end method

.method public setLTRFFrameNum(I)V
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    const-string v1, "hme_engine_KMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxm_test,setLTRFFrameNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v1, "vendor.hisi.SetLTRFrameNum"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 370
    nop

    .line 371
    return-void

    .line 369
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 359
    return-void

    .line 369
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method setRate(II)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 320
    const-string v1, "video-bitrate"

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    const-string p1, "vendor.hisi.FrameRate"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 327
    nop

    .line 328
    return-void

    .line 326
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 316
    return-void

    .line 326
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setResolutionOut(II)I
    .locals 10

    .line 604
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 605
    iput p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 606
    iput p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 607
    return v1

    .line 610
    :cond_0
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    if-ne v0, p2, :cond_1

    .line 611
    return v1

    .line 614
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->updateEncoderSize(II)V

    .line 616
    nop

    .line 617
    nop

    .line 618
    nop

    .line 619
    nop

    .line 620
    nop

    .line 621
    nop

    .line 622
    iget p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 623
    iget p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 625
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    int-to-double v2, v0

    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 626
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 627
    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 629
    iget v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    const/4 v4, 0x1

    if-lez v3, :cond_a

    iget v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    if-lez v3, :cond_a

    .line 631
    if-ltz v2, :cond_5

    .line 634
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    .line 635
    move v3, v2

    goto :goto_0

    .line 634
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 635
    :goto_0
    nop

    .line 636
    iget v5, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    sub-int/2addr v5, v3

    .line 637
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_3

    add-int/lit8 v5, v5, -0x1

    .line 638
    :cond_3
    nop

    .line 639
    iget v6, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_4

    iget v6, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    sub-int/2addr v6, v4

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    .line 640
    :goto_1
    const-string v7, "hme_engine_KMC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#resolution# ui16CropLeft: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ui16CropRight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ui16CropTop:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ui16CropBottom:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cropW:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " diff:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iIsEnableScaling:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iIsEnableCropping:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    nop

    .line 664
    move v0, v1

    goto/16 :goto_4

    .line 642
    :cond_5
    if-gez v2, :cond_9

    .line 644
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    int-to-double v2, v0

    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    int-to-double v5, v0

    div-double/2addr v2, v5

    .line 645
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    int-to-double v5, v0

    mul-double/2addr v2, v5

    double-to-int v0, v2

    .line 646
    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 648
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_6

    .line 649
    move v3, v2

    goto :goto_2

    .line 648
    :cond_6
    add-int/lit8 v3, v2, 0x1

    .line 649
    :goto_2
    nop

    .line 650
    iget v5, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_7

    iget v5, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    sub-int/2addr v5, v4

    goto :goto_3

    :cond_7
    iget v5, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    .line 651
    :goto_3
    nop

    .line 652
    iget v6, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    sub-int/2addr v6, v3

    .line 653
    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_8

    add-int/lit8 v6, v6, -0x1

    .line 654
    :cond_8
    const-string v7, "hme_engine_KMC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#resolution# ui16CropLeft: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ui16CropRight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ui16CropTop:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ui16CropBottom:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cropH:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " diff:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iIsEnableScaling:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iIsEnableCropping:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    nop

    .line 664
    move v0, v3

    move v2, v4

    move v3, v1

    goto :goto_5

    :cond_9
    move v0, v1

    move v3, v0

    move v5, v3

    move v6, v5

    :goto_4
    move v2, v4

    goto :goto_5

    .line 660
    :cond_a
    nop

    .line 661
    const-string v0, "hme_engine_KMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unenable crop,mHeightIn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mWidthIn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    move v0, v1

    move v2, v0

    move v3, v2

    move v5, v3

    move v6, v5

    :goto_5
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 665
    const-string v8, "vendor.hisi.CropLeft"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 666
    const-string v3, "vendor.hisi.CropRight"

    invoke-virtual {v7, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 667
    const-string v3, "vendor.hisi.CropTop"

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 668
    const-string v0, "vendor.hisi.CropBottom"

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 669
    const-string v0, "vendor.hisi.ScaledWidth"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 670
    const-string p1, "vendor.hisi.ScaledHeight"

    invoke-virtual {v7, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 671
    const-string p1, "vendor.hisi.EnableScaling"

    invoke-virtual {v7, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 672
    const-string p1, "vendor.hisi.EnableCropping"

    invoke-virtual {v7, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 674
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 678
    :try_start_0
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_b

    .line 679
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v7}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    :cond_b
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 685
    nop

    .line 687
    return v1

    .line 684
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setRoiCoordinate(I[IJ)V
    .locals 0

    .line 413
    return-void
.end method

.method public uninit()V
    .locals 3

    .line 202
    const-string v0, "hme_engine_KMC"

    const-string v1, "Enter uninit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 210
    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    .line 211
    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCBHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 217
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->releaseEncoder()V

    .line 219
    return-void
.end method
