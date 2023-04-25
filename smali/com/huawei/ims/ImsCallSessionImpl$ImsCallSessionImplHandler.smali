.class Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;
.super Landroid/os/Handler;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsCallSessionImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 700
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 701
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 705
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->access$000(Lcom/huawei/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 710
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 909
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled EVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 866
    :pswitch_0
    const/4 v0, 0x0

    .line 868
    .local v0, "causeCode":I
    const/4 v2, 0x0

    .line 870
    .local v2, "message":Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 871
    .local v3, "ar":Landroid/os/AsyncResult;
    if-eqz v3, :cond_2

    .line 872
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 875
    const/4 v0, 0x0

    .line 876
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    const-string v5, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsCallSessionImpl;->access$1300(Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 879
    :cond_1
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    .line 880
    .local v4, "failCausePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 881
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 882
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, Ljava/lang/String;

    .line 888
    .end local v4    # "failCausePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/HwVolteChrManager;->setRemoteCauseCode(I)V

    .line 891
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before Fail Cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsCallSessionImpl;->access$1400(Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/String;)V

    .line 892
    const/16 v4, 0x486f

    if-ne v0, v4, :cond_3

    const-string v4, "Call completed elsewhere"

    .line 893
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 894
    const/16 v0, 0x3f6

    goto :goto_1

    .line 896
    :cond_3
    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->convertRilCauseCodeToImsCode(I)I

    move-result v0

    .line 899
    :goto_1
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v4, v0, v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$1500(Lcom/huawei/ims/ImsCallSessionImpl;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 900
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last IMS Call Fail Cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "Message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsCallSessionImpl;->access$1400(Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/String;)V

    .line 903
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v1, v4

    .line 905
    .local v1, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v4}, Lcom/huawei/ims/ImsCallSessionImpl;->access$300(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 906
    goto/16 :goto_3

    .line 861
    .end local v0    # "causeCode":I
    .end local v1    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->access$1200(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 862
    goto/16 :goto_3

    .line 855
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->access$100(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->access$200(Lcom/huawei/ims/ImsCallSessionImpl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->restartRild(Landroid/os/Message;)V

    .line 857
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerHangupFailedEvent()V

    .line 859
    goto/16 :goto_3

    .line 852
    :pswitch_3
    goto/16 :goto_3

    .line 848
    :pswitch_4
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->access$1100(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 849
    goto/16 :goto_3

    .line 846
    :pswitch_5
    goto/16 :goto_3

    .line 828
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 829
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_c

    .line 830
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallSessionImpl;->access$1002(Lcom/huawei/ims/ImsCallSessionImpl;Z)Z

    .line 831
    const-string v2, "ImsCallSessionImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RINGBACK_TONE, playTone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v4}, Lcom/huawei/ims/ImsCallSessionImpl;->access$1000(Lcom/huawei/ims/ImsCallSessionImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$800(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/DriverCallIms;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$800(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/DriverCallIms;

    move-result-object v2

    iget-object v2, v2, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v3, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v2, v3, :cond_c

    .line 835
    new-instance v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 836
    .local v2, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v3}, Lcom/huawei/ims/ImsCallSessionImpl;->access$1000(Lcom/huawei/ims/ImsCallSessionImpl;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 837
    iput v1, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 840
    :cond_4
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->access$300(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 841
    .end local v2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    goto/16 :goto_3

    .line 725
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 726
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_5

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    .line 727
    const-string v2, "ImsCallSessionImpl"

    const-string v3, "Add Participant error"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$300(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Add Participant Failed"

    invoke-direct {v3, v1, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 732
    :cond_5
    if-eqz v0, :cond_c

    .line 733
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->access$300(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionInviteParticipantsRequestDelivered()V

    goto/16 :goto_3

    .line 814
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 815
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_6

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_6

    .line 816
    const-string v2, "ImsCallSessionImpl"

    const-string v3, "Deflect error"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$300(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Deflect Failed"

    invoke-direct {v3, v1, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionDeflectFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 821
    :cond_6
    const-string v1, "ImsCallSessionImpl"

    const-string v2, "Deflect success"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    if-eqz v0, :cond_c

    .line 823
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->access$300(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionDeflected()V

    goto/16 :goto_3

    .line 806
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 807
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_c

    .line 808
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$300(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "User Rejected"

    const/16 v5, 0x8f

    invoke-direct {v3, v5, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionStartFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 810
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v1, v5}, Lcom/huawei/ims/ImsCallSessionImpl;->access$502(Lcom/huawei/ims/ImsCallSessionImpl;I)I

    goto/16 :goto_3

    .line 772
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 773
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_7

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 774
    const-string v2, "ImsCallSessionImpl"

    const-string v3, "Conference error"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$300(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Conference Failed"

    invoke-direct {v3, v1, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 779
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$600(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsServiceClassTracker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huawei/ims/ImsServiceClassTracker;->setConfInProgress(Z)V

    goto :goto_2

    .line 781
    :cond_7
    if-eqz v0, :cond_a

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_a

    .line 782
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$300(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v3}, Lcom/huawei/ims/ImsCallSessionImpl;->access$700(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionMergeComplete(Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;)V

    .line 787
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$800(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/DriverCallIms;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$800(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/DriverCallIms;

    move-result-object v2

    iget-object v2, v2, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v3, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v2, v3, :cond_8

    .line 790
    const-string v2, "ImsCallSessionImpl"

    const-string v3, "EVENT_CONFERENCE: DriverCallIms State is HOLDING"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_8
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 796
    const-string v2, "ImsCallSessionImpl"

    const-string v3, "notifyCallSessionMerged"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$900(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 799
    :cond_9
    const-string v2, "ImsCallSessionImpl"

    const-string v3, "Conference in progress"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 801
    :cond_a
    const-string v2, "ImsCallSessionImpl"

    const-string v3, "EVENT_CONFERENCE: shouldn\'t reach here"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :goto_2
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    iput-boolean v1, v2, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 804
    goto/16 :goto_3

    .line 763
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 764
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_c

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_c

    .line 765
    const-string v2, "ImsCallSessionImpl"

    const-string v3, "Resume error"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$300(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Resume Failed"

    invoke-direct {v3, v1, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 754
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 755
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_c

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_c

    .line 756
    const-string v2, "ImsCallSessionImpl"

    const-string v3, "Hold error"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$300(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Hold Failed"

    invoke-direct {v3, v1, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 747
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 748
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_b

    .line 749
    const-string v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hangup error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_b
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    const/16 v2, 0x1f5

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$502(Lcom/huawei/ims/ImsCallSessionImpl;I)I

    .line 752
    goto :goto_3

    .line 738
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 739
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_c

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_c

    .line 740
    const-string v2, "ImsCallSessionImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accept error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2, v1}, Lcom/huawei/ims/ImsCallSessionImpl;->access$402(Lcom/huawei/ims/ImsCallSessionImpl;Z)Z

    goto :goto_3

    .line 712
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 713
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_c

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_c

    .line 714
    const-string v1, "ImsCallSessionImpl"

    const-string v2, "Dial error"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->access$100(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 719
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->access$100(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->access$200(Lcom/huawei/ims/ImsCallSessionImpl;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->getLastCallFailCause(Landroid/os/Message;)V

    .line 912
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_c
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
