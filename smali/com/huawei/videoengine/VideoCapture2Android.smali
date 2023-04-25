.class public Lcom/huawei/videoengine/VideoCapture2Android;
.super Ljava/lang/Object;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;,
        Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;,
        Lcom/huawei/videoengine/VideoCapture2Android$TranObj;
    }
.end annotation


# static fields
.field private static final MSG_CAPTURE_SIZE:I = 0x1

.field private static final MSG_DESTROY:I = 0x4

.field private static final MSG_INIT_EGL:I = 0x0

.field private static final MSG_UPDATE_ENCSURFACE:I = 0x3

.field private static final MSG_UPDATE_PREVIEW:I = 0x2

.field private static final PREFIXSTEP:Ljava/lang/String; = "#step#"

.field private static final PREFIXWINSF:Ljava/lang/String; = "#winsf#"

.field private static final TAG:Ljava/lang/String; = "hme_engine_java"

.field private static final WAIT_TIME:J = 0xbb8L

.field private static final java_version:Ljava/lang/String; = "LOG-iMedia Video VILTE 1.2.1"


# instance fields
.field private bDestroyed:Z

.field private bUpdated:Z

.field private faces_length:I

.field private iROI:[I

.field private mArraySf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

.field private mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraOutFps:Lcom/huawei/videoengine/FpsStatistic;

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mCapH:I

.field private mCapW:I

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCapturePreviewThread:Landroid/os/HandlerThread;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mDisplayProjectionMatrix:[F

.field private mDstCount:I

.field private mEglCore:Lcom/huawei/videoengine/EglCore;

.field private mEncHeight:I

.field private mEncInFps:Lcom/huawei/videoengine/FpsStatistic;

.field private mEncSfJava:Landroid/view/Surface;

.field private mEncSfUpdateTmp:Landroid/view/Surface;

.field private mEncWidth:I

.field private mEncWinLock:Ljava/lang/Object;

.field private mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

.field private mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

.field private mIsFaceFront:Z

.field private mIsPreviewStart:Z

.field private mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

.field private mMCELock:Ljava/lang/Object;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMediaCodec:Landroid/media/MediaCodec;

.field mModelViewM:[F

.field private mNativeClassInstance:J

.field mNeedDropEncFrame:Z

.field private mNoSfECount:I

.field mPojectionM:[F

.field private mPreViewFps:Lcom/huawei/videoengine/FpsStatistic;

.field private mPreViewHeight:I

.field private mPreViewWidth:I

.field private mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mRecordSfJava:Landroid/view/Surface;

.field private mReq:Landroid/hardware/camera2/CaptureRequest;

.field private mRotEnc:I

.field private mRotLeft:I

.field private mRotPrieview:I

.field private mSfDst:[Landroid/view/Surface;

.field private mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

.field private mSfELock:Ljava/lang/Object;

.field private mSfPreview:Landroid/view/Surface;

.field private mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mTextureId:I

.field private mWinLock:Ljava/lang/Object;

.field private mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

.field private manager:Landroid/hardware/camera2/CameraManager;

.field private objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

.field private objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

.field private objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

.field public result:Landroid/hardware/camera2/TotalCaptureResult;

.field private semInitEGL:Ljava/util/concurrent/Semaphore;

.field private time_stamp:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfJava:Landroid/view/Surface;

    .line 43
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRecordSfJava:Landroid/view/Surface;

    .line 49
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfELock:Ljava/lang/Object;

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCELock:Ljava/lang/Object;

    .line 51
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    .line 52
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNoSfECount:I

    .line 55
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 59
    sget-object v3, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 60
    sget-object v3, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 95
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    .line 97
    new-instance v3, Lcom/huawei/videoengine/VideoCapture2Android$1;

    invoke-direct {v3, p0}, Lcom/huawei/videoengine/VideoCapture2Android$1;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 159
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 160
    new-instance v3, Lcom/huawei/videoengine/VideoCapture2Android$2;

    invoke-direct {v3, p0}, Lcom/huawei/videoengine/VideoCapture2Android$2;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 196
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 197
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 410
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 411
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 412
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .line 413
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 415
    const/16 v3, 0x10

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    .line 416
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 417
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    .line 418
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    .line 419
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .line 420
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 421
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 422
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 423
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 482
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 521
    new-instance v4, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v4}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 522
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->semInitEGL:Ljava/util/concurrent/Semaphore;

    .line 592
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    .line 593
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    .line 594
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 725
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 797
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 798
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 984
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 985
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1082
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1098
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1099
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 86
    const-string v0, "hme_engine_java"

    const-string v1, "#step#VideoCapture2Android()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->init()V

    .line 88
    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfJava:Landroid/view/Surface;

    .line 43
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRecordSfJava:Landroid/view/Surface;

    .line 49
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfELock:Ljava/lang/Object;

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCELock:Ljava/lang/Object;

    .line 51
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    .line 52
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNoSfECount:I

    .line 55
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 59
    sget-object v3, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 60
    sget-object v3, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 95
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    .line 97
    new-instance v3, Lcom/huawei/videoengine/VideoCapture2Android$1;

    invoke-direct {v3, p0}, Lcom/huawei/videoengine/VideoCapture2Android$1;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 159
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 160
    new-instance v3, Lcom/huawei/videoengine/VideoCapture2Android$2;

    invoke-direct {v3, p0}, Lcom/huawei/videoengine/VideoCapture2Android$2;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 196
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 197
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 410
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 411
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 412
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .line 413
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 415
    const/16 v3, 0x10

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    .line 416
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 417
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    .line 418
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    .line 419
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .line 420
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 421
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 422
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 423
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 482
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 521
    new-instance v4, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v4}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 522
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->semInitEGL:Ljava/util/concurrent/Semaphore;

    .line 592
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    .line 593
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    .line 594
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 725
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 797
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 798
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 984
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 985
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1082
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1098
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1099
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 151
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->init()V

    .line 152
    const-string v0, "hme_engine_java"

    const-string v1, "VideoCapture2Android.java! enter VideoCapture2Android! java version:LOG-iMedia Video VILTE 1.2.1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-wide p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    .line 155
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfJava:Landroid/view/Surface;

    .line 43
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRecordSfJava:Landroid/view/Surface;

    .line 49
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfELock:Ljava/lang/Object;

    .line 50
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCELock:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    .line 52
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    .line 53
    const/4 p2, 0x0

    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNoSfECount:I

    .line 55
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 59
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 60
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 95
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    .line 97
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$1;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/VideoCapture2Android$1;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 159
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 160
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$2;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/VideoCapture2Android$2;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 196
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 197
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 410
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 411
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 412
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .line 413
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 415
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    .line 416
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 417
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    .line 418
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    .line 419
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .line 420
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 421
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 422
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 423
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 482
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, p3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 521
    new-instance v1, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 522
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, p3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->semInitEGL:Ljava/util/concurrent/Semaphore;

    .line 592
    new-array p3, v0, [F

    iput-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    .line 593
    new-array p3, v0, [F

    iput-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    .line 594
    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 725
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 797
    new-instance p1, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {p1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 798
    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 984
    new-instance p1, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {p1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 985
    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1082
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1098
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1099
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 91
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/videoengine/VideoCapture2Android;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->time_stamp:J

    return-wide p1
.end method

.method static synthetic access$1000(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/view/Surface;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/videoengine/VideoCapture2Android;->backUpdatePreViewSf(Landroid/view/Surface;II)V

    return-void
.end method

.method static synthetic access$102(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->faces_length:I

    return p1
.end method

.method static synthetic access$1100(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/view/Surface;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->backUpdateEncSf(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/huawei/videoengine/VideoCapture2Android;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->backDestroy()V

    return-void
.end method

.method static synthetic access$1302(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOutFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huawei/videoengine/VideoCapture2Android;)[I
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    return-object p0
.end method

.method static synthetic access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    return p0
.end method

.method static synthetic access$2002(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    return p1
.end method

.method static synthetic access$202(Lcom/huawei/videoengine/VideoCapture2Android;[I)[I
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    return-object p1
.end method

.method static synthetic access$2100(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    return p0
.end method

.method static synthetic access$2102(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    return p1
.end method

.method static synthetic access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)[F
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    return-object p0
.end method

.method static synthetic access$2300(Lcom/huawei/videoengine/VideoCapture2Android;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsFaceFront:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    return p0
.end method

.method static synthetic access$2500(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/huawei/videoengine/VideoCapture2Android;[F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p8}, Lcom/huawei/videoengine/VideoCapture2Android;->getMVPP([F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    return p0
.end method

.method static synthetic access$2800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FullFrameRect;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxWidth:I

    return p0
.end method

.method static synthetic access$3000(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    return p0
.end method

.method static synthetic access$3100(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncInFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    return p0
.end method

.method static synthetic access$3202(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    return p1
.end method

.method static synthetic access$3300(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    return p0
.end method

.method static synthetic access$3302(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    return p1
.end method

.method static synthetic access$3400(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    return p0
.end method

.method static synthetic access$3500(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    return p0
.end method

.method static synthetic access$402(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    return p1
.end method

.method static synthetic access$500(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    return p0
.end method

.method static synthetic access$602(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    return p1
.end method

.method static synthetic access$702(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$800(Lcom/huawei/videoengine/VideoCapture2Android;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$902(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p1
.end method

.method private backDestroy()V
    .locals 4

    .line 1050
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1055
    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1056
    const-string v1, "hme_engine_java"

    const-string v3, "#winsf#mWinowSuface release"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v1}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 1058
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 1060
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1063
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1064
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/FullFrameRect;->release(Z)V

    .line 1065
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 1068
    :cond_2
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-eqz v0, :cond_3

    .line 1069
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0}, Lcom/huawei/videoengine/EglCore;->release()V

    .line 1070
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 1073
    :cond_3
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    monitor-enter v2

    .line 1074
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1075
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 1076
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1077
    monitor-exit v2

    .line 1079
    return-void

    .line 1077
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1060
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private backUpdateEncSf(Landroid/view/Surface;)V
    .locals 2

    .line 786
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-nez p1, :cond_0

    .line 787
    const-string p1, "hme_engine_java"

    const-string v0, "wwmax mEncWindowSurface new program 655"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 789
    new-instance p1, Lcom/huawei/videoengine/FullFrameRect;

    new-instance v0, Lcom/huawei/videoengine/Texture2dProgram;

    sget-object v1, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/huawei/videoengine/Texture2dProgram;-><init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, v0}, Lcom/huawei/videoengine/FullFrameRect;-><init>(Lcom/huawei/videoengine/Texture2dProgram;)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 790
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {p1}, Lcom/huawei/videoengine/FullFrameRect;->createTextureObject()I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    .line 792
    :cond_0
    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I

    .line 793
    return-void
.end method

.method private backUpdatePreViewSf(Landroid/view/Surface;II)V
    .locals 4

    .line 827
    nop

    .line 829
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 830
    const-string p1, "hme_engine_java"

    const-string p2, "egl has not init, return"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v1, -0x1

    .line 832
    goto/16 :goto_0

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopPreview()I

    .line 836
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-eqz v2, :cond_3

    .line 837
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 838
    const-string p2, "hme_engine_java"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local same as before,surface:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", update:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->startPreview()I

    .line 840
    monitor-exit v0

    goto :goto_0

    .line 842
    :cond_1
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 843
    const-string v2, "hme_engine_java"

    const-string v3, "#winsf#mWindowSurface makeNothingCurrent "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v2}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    .line 846
    :cond_2
    const-string v2, "hme_engine_java"

    const-string v3, "#winsf#mWinowSurface realease"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 848
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 851
    :cond_3
    new-instance v2, Lcom/huawei/videoengine/WindowSurface;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-direct {v2, v3, p1, v1}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 852
    const-string p1, "hme_engine_java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#winsf#update new mWindowSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 854
    iput p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 855
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->startPreview()I

    .line 857
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 858
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-nez p1, :cond_4

    .line 859
    new-instance p1, Lcom/huawei/videoengine/FullFrameRect;

    new-instance p2, Lcom/huawei/videoengine/Texture2dProgram;

    sget-object p3, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-direct {p2, p3}, Lcom/huawei/videoengine/Texture2dProgram;-><init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, p2}, Lcom/huawei/videoengine/FullFrameRect;-><init>(Lcom/huawei/videoengine/Texture2dProgram;)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 860
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {p1}, Lcom/huawei/videoengine/FullFrameRect;->createTextureObject()I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    .line 861
    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I

    .line 863
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 867
    :goto_0
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    monitor-enter p1

    .line 868
    :try_start_1
    iget-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    if-nez p2, :cond_5

    .line 870
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 871
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {p2, v1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 872
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 874
    :cond_5
    monitor-exit p1

    .line 875
    return-void

    .line 874
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 863
    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private createSurfaceTexureForCamera(I)I
    .locals 3

    .line 597
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 598
    const-string p1, "hme_engine_java"

    const-string v1, "cameraTexure is already exist, no need to create"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return v0

    .line 602
    :cond_0
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p1, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 603
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    iget v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 605
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/huawei/videoengine/VideoCapture2Android$6;

    invoke-direct {v1, p0}, Lcom/huawei/videoengine/VideoCapture2Android$6;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 714
    return v0
.end method

.method private getMVPP([F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    .line 1123
    move/from16 v11, p8

    int-to-float v6, v10

    int-to-float v5, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/high16 v18, -0x40800000    # -1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v12, p2

    move v15, v6

    move/from16 v17, v5

    invoke-static/range {v12 .. v19}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 1124
    const/4 v12, 0x0

    invoke-static {v7, v12}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1126
    const/high16 v13, 0x40000000    # 2.0f

    div-float v14, v6, v13

    div-float v4, v5, v13

    const/4 v3, 0x0

    invoke-static {v7, v12, v14, v4, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1127
    int-to-float v2, v8

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v1, v7

    move/from16 v19, v2

    move v2, v15

    move v15, v3

    move/from16 v3, v19

    move/from16 v20, v4

    move/from16 v4, v16

    move v12, v5

    move/from16 v5, v17

    move v13, v6

    move/from16 v6, v18

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1130
    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eq v8, v2, :cond_1

    if-ne v8, v1, :cond_0

    goto :goto_0

    .line 1137
    :cond_0
    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v3, v3

    mul-float v5, v12, v3

    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 1138
    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v3, v3

    mul-float v6, v13, v3

    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v3, v3

    div-float/2addr v6, v3

    goto :goto_1

    .line 1132
    :cond_1
    :goto_0
    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v3, v3

    mul-float v5, v12, v3

    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 1133
    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v3, v3

    mul-float v6, v13, v3

    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 1140
    :goto_1
    sget-object v3, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v9, v3, :cond_e

    .line 1141
    if-eq v8, v2, :cond_8

    if-ne v8, v1, :cond_2

    goto :goto_5

    .line 1154
    :cond_2
    if-le v11, v10, :cond_4

    .line 1155
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v5, v0

    if-eqz p4, :cond_3

    neg-float v1, v12

    div-float v0, v1, v0

    goto :goto_2

    :cond_3
    move/from16 v0, v20

    :goto_2
    const/4 v1, 0x0

    invoke-static {v7, v1, v5, v0, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_8

    .line 1158
    :cond_4
    div-float v1, v13, v12

    iget v2, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v2, v2

    iget v0, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    cmpg-float v0, v1, v15

    if-gez v0, :cond_6

    .line 1159
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v5, v0

    if-eqz p4, :cond_5

    neg-float v1, v12

    div-float v0, v1, v0

    goto :goto_3

    :cond_5
    move/from16 v0, v20

    :goto_3
    const/4 v1, 0x0

    invoke-static {v7, v1, v5, v0, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_8

    .line 1162
    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p4, :cond_7

    neg-float v1, v6

    div-float/2addr v1, v0

    goto :goto_4

    :cond_7
    div-float v1, v6, v0

    :goto_4
    const/4 v0, 0x0

    invoke-static {v7, v0, v14, v1, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_8

    .line 1142
    :cond_8
    :goto_5
    if-le v11, v10, :cond_c

    .line 1143
    div-float v1, v12, v13

    iget v2, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v2, v2

    iget v0, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    cmpl-float v0, v1, v15

    if-lez v0, :cond_a

    .line 1144
    if-eqz p4, :cond_9

    neg-float v0, v5

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_6

    :cond_9
    const/high16 v1, 0x40000000    # 2.0f

    div-float v0, v5, v1

    :goto_6
    move/from16 v1, v20

    const/4 v2, 0x0

    invoke-static {v7, v2, v1, v0, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_8

    .line 1147
    :cond_a
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v6, v1

    if-eqz p4, :cond_b

    neg-float v0, v13

    div-float v14, v0, v1

    nop

    :cond_b
    const/4 v0, 0x0

    invoke-static {v7, v0, v6, v14, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_8

    .line 1150
    :cond_c
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v6, v1

    if-eqz p4, :cond_d

    neg-float v0, v13

    div-float v14, v0, v1

    nop

    :cond_d
    const/4 v0, 0x0

    invoke-static {v7, v0, v6, v14, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_8

    .line 1166
    :cond_e
    move/from16 v1, v20

    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    if-ne v9, v0, :cond_12

    .line 1167
    if-ge v11, v10, :cond_10

    .line 1168
    if-eqz p4, :cond_f

    neg-float v0, v5

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    goto :goto_7

    :cond_f
    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v5, v2

    :goto_7
    const/4 v2, 0x0

    invoke-static {v7, v2, v1, v0, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_8

    .line 1170
    :cond_10
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v6, v2

    if-eqz p4, :cond_11

    neg-float v0, v13

    div-float v14, v0, v2

    nop

    :cond_11
    const/4 v0, 0x0

    invoke-static {v7, v0, v6, v14, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_8

    .line 1173
    :cond_12
    const/4 v0, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p4, :cond_13

    neg-float v3, v13

    div-float v14, v3, v2

    nop

    :cond_13
    invoke-static {v7, v0, v1, v14, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1176
    :goto_8
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object v4, v7

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1178
    return-void
.end method

.method private init()V
    .locals 3

    .line 74
    new-instance v0, Lcom/huawei/videoengine/FpsStatistic;

    const-string v1, "Camera Out"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/huawei/videoengine/FpsStatistic;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOutFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 75
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncInFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    monitor-enter v2

    .line 80
    :try_start_1
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 81
    monitor-exit v2

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 77
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private setUpCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 330
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 331
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 202
    const-string v0, "hme_engine_java"

    const-string v1, "#step#startBackgroudThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 204
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 205
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 207
    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopBackgroundThread()V

    .line 210
    const-string v0, "hme_engine_java"

    const-string v1, "startBackgroudThread getLooper err!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 214
    :cond_0
    new-instance v1, Lcom/huawei/videoengine/VideoCapture2Android$3;

    invoke-direct {v1, p0, v0}, Lcom/huawei/videoengine/VideoCapture2Android$3;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    .line 245
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    .line 248
    const-string v0, "hme_engine_java"

    const-string v1, "#step#stopBackgroundThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 253
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 257
    :goto_0
    return-void
.end method

.method private updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 3

    .line 426
    nop

    .line 427
    monitor-enter p3

    .line 428
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 429
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 430
    const-string p1, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upWindowSF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is same as current\'s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    nop

    .line 438
    move p1, v0

    goto :goto_1

    .line 433
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->release()V

    goto :goto_0

    .line 476
    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 438
    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p2, :cond_2

    .line 439
    nop

    .line 444
    :goto_2
    move p1, v0

    goto :goto_3

    .line 440
    :cond_2
    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 441
    goto :goto_2

    .line 444
    :cond_3
    :goto_3
    if-nez p1, :cond_4

    .line 445
    const-string p1, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no need to create windowSF("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "), beause Surface:"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is null, or Surface isValid"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    monitor-exit p3

    return v0

    .line 450
    :cond_4
    const-string p1, "mWindowSurface"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 451
    new-instance p1, Lcom/huawei/videoengine/WindowSurface;

    iget-object p4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-direct {p1, p4, p2, v0}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 452
    const-string p1, "hme_engine_java"

    const-string p2, "#winsf# mWindowSurface create"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    goto :goto_5

    .line 454
    :cond_5
    const-string p1, "mEncWindowSurface"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    .line 456
    :try_start_1
    new-instance p1, Lcom/huawei/videoengine/WindowSurface;

    iget-object p4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-direct {p1, p4, p2, v0}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 458
    const-string p1, "hme_engine_java"

    const-string p2, "#winsf# mEncWindowSurface create"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 460
    :catch_0
    move-exception p1

    .line 461
    :try_start_2
    const-string p1, "hme_engine_java"

    const-string p2, "RuntimeException error"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 p1, 0x3

    iget-wide v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    invoke-virtual {p0, p1, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    .line 463
    :goto_4
    goto :goto_5

    .line 465
    :cond_6
    const-string p1, "hme_engine_java"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWinowSurface str:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "not mWindowSurface or mEncWindowSurface"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_5
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-nez p1, :cond_7

    .line 470
    const-string p1, "hme_engine_java"

    const-string p2, "#step#FullFrame 2d programe create "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance p1, Lcom/huawei/videoengine/FullFrameRect;

    new-instance p2, Lcom/huawei/videoengine/Texture2dProgram;

    sget-object p4, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-direct {p2, p4}, Lcom/huawei/videoengine/Texture2dProgram;-><init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, p2}, Lcom/huawei/videoengine/FullFrameRect;-><init>(Lcom/huawei/videoengine/Texture2dProgram;)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 472
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {p1}, Lcom/huawei/videoengine/FullFrameRect;->createTextureObject()I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    .line 473
    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I

    .line 474
    const-string p1, "hme_engine_java"

    const-string p2, "FullFrame created "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_7
    monitor-exit p3

    .line 477
    return v0

    .line 476
    :goto_6
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public allocateCamera(ILandroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 370
    const-string p3, "hme_engine_java"

    const-string v0, "#step# allocateCamera"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string p3, "camera"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    .line 372
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    const/4 p3, -0x1

    if-nez p2, :cond_0

    .line 373
    const-string p1, "hme_engine_java"

    const-string p2, "get camera manager failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return p3

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->startBackgroundThread()V

    .line 378
    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 379
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond the cameraList length"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return p3

    .line 383
    :cond_1
    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p3

    aget-object p1, p3, p1

    .line 384
    move p3, p2

    :goto_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_2

    .line 385
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 389
    :cond_2
    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p3

    .line 390
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxWidth:I

    .line 391
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iput p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxHeight:I

    .line 394
    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-static {p3, p1}, Lcom/huawei/videoengine/Camera2Characteristic;->isFaceFront(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsFaceFront:Z

    .line 395
    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p3, p1, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 402
    :catch_0
    move-exception p1

    .line 403
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 399
    :catch_1
    move-exception p1

    .line 400
    const-string p3, "hme_engine_java"

    const-string v0, "NULL PointerEx"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 396
    :catch_2
    move-exception p1

    .line 397
    const-string p3, "hme_engine_java"

    const-string v0, "CameraAccessException, maybe cameraDevice has been disconnected"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 404
    :goto_1
    nop

    .line 406
    :goto_2
    return p2
.end method

.method public backInitEGl(Landroid/view/Surface;Landroid/view/Surface;II)I
    .locals 5

    .line 540
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 542
    :try_start_0
    new-instance v0, Lcom/huawei/videoengine/EglCore;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lcom/huawei/videoengine/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    nop

    .line 556
    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 557
    :cond_0
    const-string v0, "hme_engine_java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wwmax viewSfW:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", viewSfH:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_1
    iput p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 562
    iput p4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 563
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    iget-object p4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    const-string v0, "mWindowSurface"

    invoke-direct {p0, p3, p1, p4, v0}, Lcom/huawei/videoengine/VideoCapture2Android;->updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I

    .line 566
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    if-eqz p1, :cond_2

    .line 567
    const-string p1, "hme_engine_java"

    const-string p2, "encSf exit befor initEGL, use encSfupdateTmp for mEncWindowSurface"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    const-string p4, "mEncWindowSurface"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/videoengine/VideoCapture2Android;->updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I

    .line 569
    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    goto :goto_0

    .line 571
    :cond_2
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    const-string p4, "mEncWindowSurface"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/videoengine/VideoCapture2Android;->updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I

    .line 574
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->createCaptureSession()V

    .line 588
    return v1

    .line 563
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 543
    :catch_0
    move-exception p1

    .line 544
    const-string p1, "hme_engine_java"

    const-string p2, "new EglCore fail"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 p1, 0x3

    iget-wide p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    .line 546
    return v1

    .line 551
    :cond_3
    const-string p1, "hme_engine_java"

    const-string p2, "egl has been inited"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 p1, 0x2

    iget-wide p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    .line 553
    return v1
.end method

.method public createCaptureSession()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "hme_engine_java"

    const-string v1, "capture session exist, no need create "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 265
    :cond_0
    const-string v0, "hme_engine_java"

    const-string v1, "#step#captrue session create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_1

    .line 267
    const-string v0, "hme_engine_java"

    const-string v1, "cameraDevice is null, can not create capture session"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void

    .line 272
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 273
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mReq:Landroid/hardware/camera2/CaptureRequest;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_2

    .line 277
    const-string v0, "hme_engine_java"

    const-string v1, "cameraTexure is null when create capture session, must be initEGL first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 280
    :cond_2
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 281
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 284
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v2, Lcom/huawei/videoengine/VideoCapture2Android$4;

    invoke-direct {v2, p0}, Lcom/huawei/videoengine/VideoCapture2Android$4;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 307
    :goto_0
    return-void
.end method

.method public destroy()I
    .locals 4

    .line 991
    const-string v0, "hme_engine_java"

    const-string v1, "#step#destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 997
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 999
    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    .line 1000
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1001
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 1004
    :cond_2
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 1005
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1006
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 1009
    :cond_3
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    :try_start_0
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-eqz v2, :cond_4

    .line 1011
    const-string v2, "hme_engine_java"

    const-string v3, "#winsf#mEncWindowSurface realse"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 1013
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 1015
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1017
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    .line 1018
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 1019
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 1020
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 1023
    :cond_5
    nop

    .line 1024
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    monitor-enter v1

    .line 1025
    :try_start_1
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 1027
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1028
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1030
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    if-nez v0, :cond_6

    .line 1031
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1037
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v0

    .line 1038
    if-eqz v0, :cond_7

    .line 1039
    const-string v2, "hme_engine_java"

    const-string v3, "destroy failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopBackgroundThread()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1042
    goto :goto_2

    .line 1037
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1037
    :try_start_5
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v0

    .line 1038
    if-eqz v0, :cond_7

    .line 1039
    const-string v2, "hme_engine_java"

    const-string v3, "destroy failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1043
    :goto_2
    monitor-exit v1

    .line 1045
    return v0

    .line 1037
    :goto_3
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v2}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v2

    .line 1038
    if-eqz v2, :cond_8

    .line 1039
    const-string v2, "hme_engine_java"

    const-string v3, "destroy failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_8
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopBackgroundThread()V

    throw v0

    .line 1043
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 1015
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method public dropFrame()V
    .locals 1

    .line 720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 721
    return-void
.end method

.method public getHeighAftertRendering()I
    .locals 2

    .line 1232
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 1233
    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    if-ge v0, v1, :cond_0

    .line 1235
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 1237
    :cond_0
    return v0
.end method

.method public getWidthAfterRendering()I
    .locals 2

    .line 1219
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 1220
    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    if-le v0, v1, :cond_0

    .line 1222
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 1224
    :cond_0
    return v0
.end method

.method public initEGl(Landroid/view/Surface;Landroid/view/Surface;IIII)I
    .locals 3

    .line 527
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step# initEGL, viewSf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", encSf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "View("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "); Cap("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 529
    const-string p1, "hme_engine_java"

    const-string p2, "wwmax backThreadHandler is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 p1, -0x1

    return p1

    .line 532
    :cond_0
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;-><init>(Landroid/view/Surface;Landroid/view/Surface;II)V

    .line 533
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p5, p6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 534
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 535
    return p3
.end method

.method native nDropEncFrame(JIIIII)Z
.end method

.method native nGetRoiCoordinate(JI[IJ)V
.end method

.method native nMsgSend(IJ)V
.end method

.method public setAspectMode(IZ)I
    .locals 2

    .line 1191
    packed-switch p1, :pswitch_data_0

    .line 1202
    const-string p2, "hme_engine_java"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wwmax setAspectMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 p1, -0x1

    return p1

    .line 1199
    :pswitch_0
    sget-object p1, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1200
    goto :goto_0

    .line 1196
    :pswitch_1
    sget-object p1, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1197
    goto :goto_0

    .line 1193
    :pswitch_2
    sget-object p1, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->none:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1194
    nop

    .line 1205
    :goto_0
    if-eqz p2, :cond_0

    .line 1206
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    goto :goto_1

    .line 1208
    :cond_0
    const-string p2, "hme_engine_java"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " set Enc AspectMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1211
    :goto_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDstSf([Landroid/view/Surface;I)I
    .locals 4

    .line 345
    if-gtz p2, :cond_0

    .line 346
    const-string p1, "hme_engine_java"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " dstSf, invailed"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 p1, -0x1

    return p1

    .line 348
    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    .line 349
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dstSf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 353
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mArraySf:Ljava/util/ArrayList;

    aget-object v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    :cond_2
    return v0
.end method

.method public setEncRotation(II)I
    .locals 3

    .line 1108
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step#rotate enc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", left for cvo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1110
    :try_start_0
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1111
    rsub-int p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 1112
    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_0

    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_0

    .line 1113
    const-string p1, "hme_engine_java"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wwmax mRotEnc:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_0
    monitor-exit v0

    .line 1116
    const/4 p1, 0x0

    return p1

    .line 1115
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFrameReceiver(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)I
    .locals 4

    .line 897
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCELock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_0
    const-string v1, "hme_engine_java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#step# setFrameReceiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mMCE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    .line 900
    monitor-exit v0

    return v2

    .line 902
    :cond_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    if-eqz v1, :cond_1

    .line 903
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->setCapSource(Lcom/huawei/videoengine/VideoCapture2Android;)I

    .line 906
    :cond_1
    if-eqz p1, :cond_2

    .line 907
    invoke-virtual {p1, p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->setCapSource(Lcom/huawei/videoengine/VideoCapture2Android;)I

    .line 909
    :cond_2
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    .line 910
    monitor-exit v0

    .line 911
    return v2

    .line 910
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFrameReceiver(Lcom/huawei/videoengine/SurfaceEncoder;)I
    .locals 3

    .line 889
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step# setFrameReceiver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfELock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_0
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    .line 892
    monitor-exit v0

    .line 893
    const/4 p1, 0x0

    return p1

    .line 892
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPreviewRotation(I)I
    .locals 3

    .line 1089
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step# rotate preiview: r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    rsub-int p1, p1, 0x168

    .line 1094
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1095
    const/4 p1, 0x0

    return p1
.end method

.method public setPreviewSf(Landroid/view/Surface;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfPreview:Landroid/view/Surface;

    .line 337
    return-void
.end method

.method public startCapture()I
    .locals 4

    .line 926
    const-string v0, "hme_engine_java"

    const-string v1, "#step#startCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 929
    const-string v0, "hme_engine_java"

    const-string v1, "wwmax mCaptureSession is null when startCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/4 v0, -0x1

    return v0

    .line 939
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/huawei/videoengine/VideoCapture2Android;->setUpCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 940
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraPreview"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapturePreviewThread:Landroid/os/HandlerThread;

    .line 941
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapturePreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 942
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    goto :goto_0

    .line 943
    :catch_0
    move-exception v0

    .line 944
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 947
    :goto_0
    const-string v0, "hme_engine_java"

    const-string v1, "startCapture end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/4 v0, 0x0

    return v0
.end method

.method public startPreview()I
    .locals 2

    .line 972
    const-string v0, "hme_engine_java"

    const-string v1, "#step#start preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 974
    const/4 v0, 0x0

    return v0
.end method

.method public stopCapture()I
    .locals 2

    .line 953
    const-string v0, "hme_engine_java"

    const-string v1, "#step# stopcapture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 956
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 957
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapturePreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    goto :goto_0

    .line 958
    :catch_0
    move-exception v0

    .line 960
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 968
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopPreview()I
    .locals 2

    .line 978
    const-string v0, "hme_engine_java"

    const-string v1, "#step#stop preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 980
    return v0
.end method

.method public test(Landroid/content/Context;)I
    .locals 1

    .line 878
    const-string p1, "hme_engine_java"

    const-string v0, "wwmax test"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 p1, 0x0

    return p1
.end method

.method public updateEncSf(Landroid/view/Surface;I)V
    .locals 3

    .line 732
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step# update encSf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mEncWindowSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", eglcore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 735
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/videoengine/SurfaceEncoder;->setEncSurface(Landroid/view/Surface;I)V

    .line 739
    :cond_0
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    if-nez p2, :cond_1

    .line 740
    const-string p1, "hme_engine_java"

    const-string p2, "background is null when updateEncSf"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void

    .line 744
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p2

    if-nez p2, :cond_2

    .line 745
    const-string p1, "hme_engine_java"

    const-string p2, "encsf is invalid"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void

    .line 749
    :cond_2
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-nez p2, :cond_3

    .line 750
    const-string p2, "hme_engine_java"

    const-string v0, "#step#now egl has not init, save update encSf"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 752
    return-void

    .line 754
    :cond_3
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    monitor-enter p2

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-eqz v0, :cond_5

    .line 757
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 758
    const-string v0, "hme_engine_java"

    const-string v1, "#winsf#mEncWindowSurface makeNothingCurrent "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    .line 761
    :cond_4
    const-string v0, "hme_engine_java"

    const-string v1, "#winsf#mEncWindowSurface  release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 763
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 767
    :cond_5
    if-nez p1, :cond_6

    .line 768
    monitor-exit p2

    return-void

    .line 771
    :cond_6
    const-string v0, "hme_engine_java"

    const-string v1, "#winsf#mEncWindowSurface create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 773
    new-instance v0, Lcom/huawei/videoengine/WindowSurface;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 775
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 778
    return-void

    .line 775
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updatePreViewSf(Landroid/view/Surface;II)I
    .locals 5

    .line 800
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step# update PreViewSf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 802
    const-string p1, "hme_engine_java"

    const-string p2, "wwmax mBackThread is null when updatepreview"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return v1

    .line 806
    :cond_0
    nop

    .line 807
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    monitor-enter v0

    .line 808
    :try_start_0
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 809
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {p1, v1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 810
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 812
    :goto_0
    :try_start_1
    iget-boolean p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    if-nez p1, :cond_1

    .line 814
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    const-wide/16 p2, 0xbb8

    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 820
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    :goto_1
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 821
    goto :goto_2

    .line 820
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 816
    :catch_0
    move-exception p1

    .line 818
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 820
    :try_start_4
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    goto :goto_1

    .line 822
    :goto_2
    monitor-exit v0

    .line 823
    return p1

    .line 820
    :goto_3
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {p2}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    throw p1

    .line 822
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public updatePreview()I
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 311
    const-string v0, "hme_engine_java"

    const-string v1, "wwmax mCaptureSession is null when startCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, -0x1

    return v0

    .line 315
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/huawei/videoengine/VideoCapture2Android;->setUpCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 316
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraPreview"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 318
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    new-instance v2, Lcom/huawei/videoengine/VideoCapture2Android$5;

    invoke-direct {v2, p0}, Lcom/huawei/videoengine/VideoCapture2Android$5;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 322
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
