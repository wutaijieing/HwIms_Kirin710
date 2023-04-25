.class Lcom/huawei/videoengine/VideoCapture2Android$6;
.super Ljava/lang/Object;
.source "VideoCapture2Android.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I
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

    .line 605
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 11

    .line 608
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1400(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1400(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/FpsStatistic;->add()V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1500(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v1

    if-nez v1, :cond_1

    .line 615
    monitor-exit v0

    return-void

    .line 617
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 618
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 620
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1500(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 621
    :try_start_1
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 622
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/FpsStatistic;->add()V

    .line 625
    :cond_2
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 627
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2002(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 628
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2102(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 630
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2100(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 632
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v3

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v4, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v5, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 633
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2300(Lcom/huawei/videoengine/VideoCapture2Android;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 634
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v7

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 635
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2500(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    move-result-object v8

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2100(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v9

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 636
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v10

    .line 632
    invoke-static/range {v2 .. v10}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2600(Lcom/huawei/videoengine/VideoCapture2Android;[F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V

    .line 637
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2100(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 638
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v2

    .line 637
    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 639
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FullFrameRect;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2700(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 640
    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v3

    .line 641
    invoke-static {}, Lcom/huawei/videoengine/GlUtil;->getIDENTITY_MATRIX()[F

    move-result-object v4

    .line 639
    invoke-virtual {v0, v2, v3, v4}, Lcom/huawei/videoengine/FullFrameRect;->drawFrame(I[F[F)V

    .line 643
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->swapBuffers()Z

    .line 644
    const-string v0, "draw done"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_3
    const-string v0, "hme_engine_java"

    const-string v2, "PreView SF W or H is 0"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_4
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 654
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2900(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 655
    :try_start_2
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object p1

    if-nez p1, :cond_5

    .line 657
    monitor-exit v0

    goto/16 :goto_1

    .line 659
    :cond_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 662
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$800(Lcom/huawei/videoengine/VideoCapture2Android;)J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 663
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3000(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v7

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$600(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v8

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v9

    .line 662
    invoke-virtual/range {v2 .. v9}, Lcom/huawei/videoengine/VideoCapture2Android;->nDropEncFrame(JIIIII)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 664
    goto/16 :goto_1

    .line 666
    :cond_6
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2900(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 668
    :try_start_3
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    if-nez v0, :cond_7

    .line 670
    monitor-exit p1

    goto/16 :goto_1

    .line 678
    :cond_7
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3100(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 679
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3100(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/FpsStatistic;->add()V

    .line 682
    :cond_8
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 685
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3202(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 686
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3302(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 688
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3200(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3300(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 690
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v3

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v4, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v5, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 691
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v7

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 692
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3500(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    move-result-object v8

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3300(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v9

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3200(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v10

    .line 690
    invoke-static/range {v2 .. v10}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2600(Lcom/huawei/videoengine/VideoCapture2Android;[F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V

    .line 693
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 694
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 695
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getHeight()I

    move-result v2

    .line 693
    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 696
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FullFrameRect;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2700(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v1

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 697
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v2

    .line 698
    invoke-static {}, Lcom/huawei/videoengine/GlUtil;->getIDENTITY_MATRIX()[F

    move-result-object v3

    .line 696
    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/videoengine/FullFrameRect;->drawFrame(I[F[F)V

    .line 699
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->swapBuffers()Z

    .line 700
    const-string v0, "draw done"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 708
    monitor-exit p1

    goto :goto_1

    .line 704
    :cond_9
    const-string v0, "hme_engine_java"

    const-string v1, "encode SF W or H is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    monitor-exit p1

    .line 711
    :goto_1
    return-void

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 659
    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 651
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 617
    :catchall_3
    move-exception p1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method
