.class Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;
.super Landroid/os/Handler;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsCallModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsCallModificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallModification;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallModification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallModification;

    .line 508
    iput-object p1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private clearMultiTaskRetryCount()I
    .locals 3

    .line 611
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing MultiTaskRetryCount from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallModification;->access$600(Lcom/huawei/ims/ImsCallModification;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->access$000(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->access$602(Lcom/huawei/ims/ImsCallModification;I)I

    move-result v0

    return v0
.end method

.method private handleModifyCallActionMessage(Landroid/os/Message;I)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "actionType"    # I

    .line 636
    if-nez p1, :cond_0

    .line 637
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string v1, "msg is null during handleModifyCallActionMessage"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->access$500(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 638
    return-void

    .line 640
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 641
    .local v0, "ar":Landroid/os/AsyncResult;
    if-nez v0, :cond_1

    .line 642
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string v2, "ar is null during handleModifyCallActionMessage"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallModification;->access$500(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 643
    return-void

    .line 646
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 648
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string v2, "videocall error during handleModifyCallActionMessage"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallModification;->access$500(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 650
    :cond_2
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 652
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_3

    .line 655
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 657
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 658
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 660
    :cond_3
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 661
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallModification;->access$100(Lcom/huawei/ims/ImsCallModification;)V

    .line 662
    return-void
.end method

.method private onAvpRetry(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 594
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string v1, "EVENT_AVP_UPGRADE received"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->access$000(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 595
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 596
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 597
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 598
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 599
    .local v1, "shouldNotifyUser":Z
    if-eqz v1, :cond_0

    .line 600
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string v3, "AVP Retry error when Voice call was upgraded to video call"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallModification;->access$500(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string v3, "AVP Retry error when Video call was dialed"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallModification;->access$500(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 606
    .end local v1    # "shouldNotifyUser":Z
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 607
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallModification;->access$100(Lcom/huawei/ims/ImsCallModification;)V

    .line 608
    return-void
.end method

.method private onModifyCallInitiateDone(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 540
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string v1, "EVENT_MODIFY_CALL_INITIATE_DONE received"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->access$000(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 542
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->handleModifyCallActionMessage(Landroid/os/Message;I)V

    .line 544
    return-void
.end method

.method private onModifyCallUpgradeCancelDone(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 623
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string v1, "EVENT_MODIFY_CALL_UPGRADE_CANCEL_DONE received"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->access$000(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 624
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->handleModifyCallActionMessage(Landroid/os/Message;I)V

    .line 625
    return-void
.end method

.method private onVideoPauseDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 548
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string v1, "EVENT_VIDEO_PAUSE_DONE received"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->access$000(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 549
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 550
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_4

    .line 551
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 554
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallModification;->access$200(Lcom/huawei/ims/ImsCallModification;)Lcom/huawei/ims/ImsCallModification$CallModify;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallModification;->access$200(Lcom/huawei/ims/ImsCallModification;)Lcom/huawei/ims/ImsCallModification$CallModify;

    move-result-object v2

    iget-object v2, v2, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v2, v2, Lcom/huawei/ims/CallDetails;->call_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallModification;->access$302(Lcom/huawei/ims/ImsCallModification;Z)Z

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 559
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 560
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallModification;->access$100(Lcom/huawei/ims/ImsCallModification;)V

    goto :goto_1

    .line 564
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallModification;->access$400(Lcom/huawei/ims/ImsCallModification;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 565
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string v2, "Error during video pause so retry"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallModification;->access$500(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    iget-object v2, v2, Lcom/huawei/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 568
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallModification;->access$608(Lcom/huawei/ims/ImsCallModification;)I

    goto :goto_1

    .line 570
    :cond_3
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string v2, "Video Pause retry limit reached."

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallModification;->access$000(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 571
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 572
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 573
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallModification;->access$100(Lcom/huawei/ims/ImsCallModification;)V

    goto :goto_1

    .line 577
    :cond_4
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string v2, "Error EVENT_VIDEO_PAUSE_DONE ar is null"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallModification;->access$500(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 579
    :goto_1
    return-void
.end method

.method private onVideoPauseRetry()V
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_VIDEO_PAUSE_RETRY received mMultiTaskRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallModification;->access$600(Lcom/huawei/ims/ImsCallModification;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->access$000(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallModification;->access$700(Lcom/huawei/ims/ImsCallModification;)Lcom/huawei/ims/ImsCallModification$PauseState;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/ImsCallModification$PauseState;->NONE:Lcom/huawei/ims/ImsCallModification$PauseState;

    if-ne v0, v1, :cond_0

    .line 584
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallModification;->access$200(Lcom/huawei/ims/ImsCallModification;)Lcom/huawei/ims/ImsCallModification$CallModify;

    move-result-object v1

    iget-object v1, v1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->access$800(Lcom/huawei/ims/ImsCallModification;I)V

    goto :goto_0

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string v1, "User pressed home/resume during retry so sending out new multitask request"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->access$000(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 588
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 589
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallModification;->access$100(Lcom/huawei/ims/ImsCallModification;)V

    .line 591
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 511
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 531
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->onModifyCallUpgradeCancelDone(Landroid/os/Message;)V

    .line 532
    goto :goto_0

    .line 524
    :pswitch_1
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->onVideoPauseRetry()V

    .line 525
    goto :goto_0

    .line 519
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string v1, "EVENT_MODIFY_CALL_CONFIRM_DONE received"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->access$000(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 521
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallModification;->access$100(Lcom/huawei/ims/ImsCallModification;)V

    .line 522
    goto :goto_0

    .line 516
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->onVideoPauseDone(Landroid/os/Message;)V

    .line 517
    goto :goto_0

    .line 513
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->onModifyCallInitiateDone(Landroid/os/Message;)V

    .line 514
    goto :goto_0

    .line 527
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->onAvpRetry(Landroid/os/Message;)V

    .line 528
    nop

    .line 537
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
