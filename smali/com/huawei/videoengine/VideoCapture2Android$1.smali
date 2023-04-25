.class Lcom/huawei/videoengine/VideoCapture2Android$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/VideoCapture2Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/VideoCapture2Android;


# direct methods
.method constructor <init>(Lcom/huawei/videoengine/VideoCapture2Android;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .locals 10

    .line 101
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 102
    if-nez v0, :cond_0

    .line 104
    const-string p1, "hme_engine_java"

    const-string v0, "#ROI# detect_mode is null !!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 107
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 108
    if-nez v1, :cond_1

    .line 110
    const-string p1, "hme_engine_java"

    const-string v0, "#ROI# ts is null !!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/huawei/videoengine/VideoCapture2Android;->access$002(Lcom/huawei/videoengine/VideoCapture2Android;J)J

    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 116
    const-string p1, "hme_engine_java"

    const-string v0, "#ROI# DETECT_MODE is OFF !!!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 120
    :cond_2
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    .line 121
    array-length v0, p1

    .line 122
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    array-length v2, p1

    invoke-static {v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$102(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 123
    const/4 v1, 0x4

    if-lez v0, :cond_3

    .line 124
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    mul-int v3, v1, v0

    new-array v3, v3, [I

    invoke-static {v2, v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$202(Lcom/huawei/videoengine/VideoCapture2Android;[I)[I

    .line 126
    :cond_3
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$300(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v3

    div-int/2addr v2, v3

    .line 127
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$500(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v3

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v4}, Lcom/huawei/videoengine/VideoCapture2Android;->access$600(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v4

    div-int/2addr v3, v4

    .line 128
    :goto_0
    if-lez v0, :cond_4

    .line 129
    array-length v4, p1

    sub-int/2addr v4, v0

    .line 130
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v5}, Lcom/huawei/videoengine/VideoCapture2Android;->access$200(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v5

    mul-int v6, v1, v4

    aget-object v7, p1, v4

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    div-int/2addr v7, v2

    aput v7, v5, v6

    .line 131
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v5}, Lcom/huawei/videoengine/VideoCapture2Android;->access$200(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    aget-object v8, p1, v4

    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    div-int/2addr v8, v3

    aput v8, v5, v7

    .line 132
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v5}, Lcom/huawei/videoengine/VideoCapture2Android;->access$200(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v5

    add-int/lit8 v7, v6, 0x2

    aget-object v8, p1, v4

    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    aget-object v9, p1, v4

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v2

    aput v8, v5, v7

    .line 133
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v5}, Lcom/huawei/videoengine/VideoCapture2Android;->access$200(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v5

    add-int/lit8 v6, v6, 0x3

    aget-object v7, p1, v4

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    aget-object v4, p1, v4

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v4

    div-int/2addr v7, v3

    aput v7, v5, v6

    .line 134
    add-int/lit8 v0, v0, -0x1

    .line 135
    goto :goto_0

    .line 136
    :cond_4
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 142
    invoke-direct {p0, p3}, Lcom/huawei/videoengine/VideoCapture2Android$1;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 143
    return-void
.end method
