.class Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;
.super Landroid/os/Handler;
.source "ImsServiceSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsServiceSubHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsServiceSub;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0

    .line 1281
    iput-object p1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    .line 1282
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1283
    return-void
.end method

.method private broadcastSpeechCodecNotification(I)V
    .locals 5
    .param p1, "speechCodec"    # I

    .line 2069
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v0, v0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 2070
    .local v0, "subId":I
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastSpeechCodecNotification speechCodec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2071
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v1, v1, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "EVSBroadcastReceiverPkg"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2072
    .local v1, "pkgName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.intent.action.AUDIO_QUALITY_SET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2073
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2074
    const-string v3, "AUDIO_QUALITY_TYPE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2075
    const-string v3, "subscription"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2076
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v3, v3, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const-string v4, "com.huawei.ims.permission.AUDIO_QUALITY_GET"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2077
    return-void
.end method

.method private createRegCallBackThread(I)V
    .locals 3
    .param p1, "registrationState"    # I

    .line 1291
    new-instance v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler$1;-><init>(Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;I)V

    .line 1342
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "ImsServiceSubRegCallbackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1343
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1344
    return-void
.end method

.method private detectImsRegisterState(II)I
    .locals 3
    .param p1, "dataRegState"    # I
    .param p2, "rilRat"    # I

    .line 2430
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter detectImsRegisterState, dataRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rilRat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2433
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2434
    return v0

    .line 2437
    :cond_0
    const/16 v1, 0xe

    if-ne p2, v1, :cond_1

    .line 2440
    const/4 v0, 0x3

    return v0

    .line 2443
    :cond_1
    return v0
.end method

.method private getPhoneId(Lcom/android/internal/telephony/Connection;)I
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .line 2392
    const/4 v0, -0x1

    .line 2393
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2394
    .local v1, "call":Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 2395
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 2396
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2397
    if-eqz v2, :cond_0

    .line 2398
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 2402
    :cond_0
    return v0
.end method

.method private handleBatteryStatus(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2008
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2009
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->access$3300(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$3202(Lcom/huawei/ims/ImsServiceSub;I)I

    goto :goto_0

    .line 2011
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error EVENT_SEND_BATTERY_STATUS AsyncResult ar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2013
    :goto_0
    return-void
.end method

.method private handleExtendMethod(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1863
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1886
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "handleMessage EVENT_VOWIFI_REG_ERR_REPORT,Do Nothing"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1887
    goto :goto_0

    .line 1882
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "handleMessage EVENT_UNSOL_VOWIF_REG_ERR_REPORT"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1883
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleUnsolVoWiFiRegErrReport(Landroid/os/Message;)V

    .line 1884
    goto :goto_0

    .line 1865
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1866
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceSub;->handleImsRegMode(Landroid/os/AsyncResult;)V

    .line 1867
    goto :goto_0

    .line 1875
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleSetSmsConfig(Landroid/os/Message;)V

    .line 1876
    goto :goto_0

    .line 1878
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleGetDMUserData(Landroid/os/Message;)V

    .line 1879
    goto :goto_0

    .line 1870
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$3000(Lcom/huawei/ims/ImsServiceSub;)V

    .line 1871
    nop

    .line 1893
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleGetDMParamsDone(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 2511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2513
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.providers.dm"

    const-string v3, "com.android.providers.dm.DmReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2514
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2516
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2517
    .local v2, "cmdType":I
    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2518
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 2519
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 2520
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetDMParamsDone success !type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2521
    const-string v4, "data"

    iget-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2523
    :cond_0
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetDMParamsDone fail !type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2525
    :goto_0
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v4, v4, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2526
    return-void
.end method

.method private handleGetDMUserData(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1996
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1997
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1998
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v1, v1, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v2, v2, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    const-string v3, "dm_user_ims_value"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1999
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, "handleGetDMUserData success."

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_0

    .line 2001
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, "handleGetDMUserData fail!"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2003
    :goto_0
    return-void
.end method

.method private handleHandover(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1412
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "handleHandover"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1413
    const/4 v0, 0x0

    .line 1414
    .local v0, "handover":Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 1415
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;

    .line 1417
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->access$1500(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1418
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 1419
    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceClassTracker;->handleHandover(Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;)V

    .line 1425
    .end local v1    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    goto :goto_0

    .line 1422
    .restart local v1    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1423
    return-void

    .line 1427
    .end local v1    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncResult exception in handleHandover- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1430
    :goto_0
    return-void
.end method

.method private handleImsDMCN()V
    .locals 7

    .line 1942
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "EVENT_IMS_DMCN "

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1943
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1947
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/huawei/ims/HwImsConfigImpl;->isATT:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1950
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.providers.dm"

    const-string v3, "com.android.providers.dm.DmReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1948
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.rcsserviceapplication"

    const-string v3, "com.huawei.rcs.service.RcsGlobalBroadcastReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    .local v1, "component":Landroid/content/ComponentName;
    :goto_1
    nop

    .line 1952
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1955
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1956
    const-string v2, "type"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1959
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v2, v2, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1960
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1961
    .local v3, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 1962
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1963
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v6, "EVENT_IMS_DMCN, queryBroadcastReceivers done"

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1965
    :cond_2
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 1972
    :cond_3
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v6, "EVENT_IMS_DMCN, send BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1973
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v5, v5, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1974
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5, v4}, Lcom/huawei/ims/ImsServiceSub;->access$3102(Lcom/huawei/ims/ImsServiceSub;I)I

    goto :goto_3

    .line 1966
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v4}, Lcom/huawei/ims/ImsServiceSub;->access$3108(Lcom/huawei/ims/ImsServiceSub;)I

    .line 1967
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_IMS_DMCN, no receiver of BROADCAST_DMSYNCSERVICE_TO_IMS found, try again later, count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v6}, Lcom/huawei/ims/ImsServiceSub;->access$3100(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1968
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v4}, Lcom/huawei/ims/ImsServiceSub;->access$3100(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_5

    .line 1969
    const/16 v4, 0x3f8

    const-wide/16 v5, 0x7d0

    invoke-virtual {p0, v4, v5, v6}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1977
    :cond_5
    :goto_3
    return-void
.end method

.method private handleImsStateDone(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 2081
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2084
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2085
    const/4 v1, 0x0

    .line 2087
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 2088
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 2091
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_2

    .line 2092
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v4, "Radio is not available"

    invoke-static {v3, v4}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2094
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v3, v2}, Lcom/huawei/ims/ImsServiceSub;->access$2102(Lcom/huawei/ims/ImsServiceSub;I)I

    .line 2099
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v3}, Lcom/huawei/ims/ImsServiceSub;->access$1500(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2100
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->createRegCallBackThread(I)V

    .line 2101
    goto :goto_0

    .line 2103
    :cond_1
    return-void

    .line 2108
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_10

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_10

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    array-length v1, v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_10

    .line 2110
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 2112
    .local v1, "responseArray":[I
    aget v3, v1, v2

    .line 2113
    .local v3, "imsRegisterState":I
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS registration state is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2116
    const-string v4, "UNREGISTERED"

    .line 2117
    .local v4, "imsState":Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->access$2100(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v5

    .line 2120
    .local v5, "oldState":I
    iget-object v6, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v6, v3}, Lcom/huawei/ims/ImsServiceSub;->access$3600(Lcom/huawei/ims/ImsServiceSub;I)V

    .line 2122
    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    .line 2124
    const-string v4, "REGISTERED"

    .line 2129
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v7}, Lcom/huawei/ims/ImsServiceSub;->access$3700(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v7

    .line 2131
    .local v7, "optimize":Z
    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v8}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v8}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 2134
    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v8}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 2135
    .local v8, "defPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v8, :cond_3

    .line 2137
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    .line 2139
    .local v9, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v10

    .line 2140
    .local v10, "dataRegState":I
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v11

    .line 2141
    .local v11, "rilRat":I
    invoke-direct {p0, v10, v11}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->detectImsRegisterState(II)I

    move-result v12

    if-nez v12, :cond_3

    .line 2142
    const-string v4, "UNREGISTERED"

    .line 2150
    .end local v8    # "defPhone":Lcom/android/internal/telephony/Phone;
    .end local v9    # "serviceState":Landroid/telephony/ServiceState;
    .end local v10    # "dataRegState":I
    .end local v11    # "rilRat":I
    :cond_3
    if-nez v5, :cond_5

    .line 2152
    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$402(Z)Z

    .line 2157
    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v8}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v8}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsConfigImpl;->isIMPUConfigured()Z

    move-result v8

    if-nez v8, :cond_4

    .line 2160
    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v9, "get IMPU from modem"

    invoke-static {v8, v9}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2161
    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v8, v8, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    const/16 v9, 0x11

    invoke-virtual {p0, v9}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lcom/huawei/ims/ImsRIL;->getImsImpu(ILandroid/os/Message;)V

    .line 2167
    :cond_4
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$2800(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2169
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$2800(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCallWaitingToImsSdk()V

    .line 2177
    :cond_5
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v2, v2, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 2178
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "volte_vt_enabled"

    .line 2177
    invoke-static {v2, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2180
    const-string v2, "REGISTERED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2181
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v2, v2, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 2182
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2183
    invoke-static {}, Lcom/huawei/ims/ImsServiceSub;->access$3800()[Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v8, v8, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    aget-object v6, v6, v8

    invoke-static {}, Lcom/huawei/ims/ImsServiceSub;->access$3900()I

    move-result v8

    .line 2181
    invoke-static {v2, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2187
    .end local v7    # "optimize":Z
    :cond_6
    goto/16 :goto_2

    .line 2189
    :cond_7
    invoke-static {}, Lcom/huawei/ims/ImsServiceSub;->access$4000()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2192
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mEmergencyUnderWifi:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v9}, Lcom/huawei/ims/ImsServiceSub;->access$1400(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2194
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v7}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v7}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/ims/HwImsConfigImpl;->getIsEmergencyUnderWifi()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v7, v7, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v7, v7, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x3fc

    .line 2195
    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    .line 2196
    invoke-static {v7}, Lcom/huawei/ims/ImsServiceSub;->access$1400(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2197
    :cond_9
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v8, "sos pending, not disable vowifi capability."

    invoke-static {v7, v8}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_1

    .line 2199
    :cond_a
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v7}, Lcom/huawei/ims/ImsServiceSub;->access$1100(Lcom/huawei/ims/ImsServiceSub;)Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 2200
    const-string v7, "UNREGISTERED"

    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    .line 2209
    :cond_b
    :goto_1
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v7}, Lcom/huawei/ims/ImsServiceSub;->access$1600(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "before check ims reg fail, mfirstReg is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/ims/ImsServiceSub;->access$400()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2211
    :cond_c
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v7}, Lcom/huawei/ims/ImsServiceSub;->access$4100(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-eq v5, v6, :cond_d

    invoke-static {}, Lcom/huawei/ims/ImsServiceSub;->access$400()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2212
    :cond_d
    iget-object v6, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v6, v6, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v7, v7, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v8, 0x11170

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2213
    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$402(Z)Z

    .line 2224
    :cond_e
    :goto_2
    const-string v2, "REGISTERED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2225
    .local v2, "imsRegState":I
    iget-object v6, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v6}, Lcom/huawei/ims/ImsServiceSub;->access$1500(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2226
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->createRegCallBackThread(I)V

    .line 2227
    goto :goto_3

    .line 2228
    .end local v1    # "responseArray":[I
    .end local v2    # "imsRegState":I
    .end local v3    # "imsRegisterState":I
    .end local v4    # "imsState":Ljava/lang/String;
    .end local v5    # "oldState":I
    :cond_f
    goto :goto_4

    .line 2229
    :cond_10
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, "IMS State query failed!"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2231
    :goto_4
    return-void
.end method

.method private handleLtePDCPInfo(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2462
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2466
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleLtePDCPInfo([I)V

    .line 2467
    return-void

    .line 2463
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "LTE_PDCP_INFO report failed!"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2464
    return-void
.end method

.method private handleLtePDCPInfo([I)V
    .locals 9
    .param p1, "ret"    # [I

    .line 2479
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2480
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v1, v0

    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-long v3, v0

    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v5, v0

    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v7, v0

    invoke-static/range {v1 .. v8}, Lcom/huawei/vtproxy/ImsThinClient;->setBuffInfo(JJJJ)I

    .line 2483
    :cond_0
    return-void
.end method

.method private handleLteRRCInfo(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2470
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2474
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleLteRRCInfo([I)V

    .line 2475
    return-void

    .line 2471
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "LTE_RRC_INFO report failed!"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2472
    return-void
.end method

.method private handleLteRRCInfo([I)V
    .locals 4
    .param p1, "ret"    # [I

    .line 2485
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2486
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/vtproxy/ImsThinClient;->setRlQualInfo(IIII)I

    .line 2488
    :cond_0
    return-void
.end method

.method private handleMtNewRingReport(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .line 2407
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMtNewRingReport("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2410
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$4200(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2411
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "handleMtNewRingReport: mMtStatusMgr is null"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2412
    return-void

    .line 2416
    :cond_0
    if-eqz p1, :cond_1

    .line 2417
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remote address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2421
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$4200(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->getPhoneId(Lcom/android/internal/telephony/Connection;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/MtStatusManager;->notifyRingCall(Ljava/lang/String;I)V

    .line 2425
    :cond_1
    return-void
.end method

.method private handleMtStatusReport(Lcom/huawei/ims/MtStatusReport;)V
    .locals 3
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;

    .line 2357
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMtStatusReport("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2360
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$4200(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2362
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "handleMtStatusReport: mMtStatusMgr is null"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2363
    return-void

    .line 2367
    :cond_0
    if-eqz p1, :cond_5

    .line 2368
    iget v0, p1, Lcom/huawei/ims/MtStatusReport;->call_status:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2369
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$4200(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    iget-object v2, p1, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huawei/ims/MtStatusManager;->isNeedNotifyImsCallStarted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2370
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, "close do-recovery"

    invoke-static {v0, v2}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2372
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$4200(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/MtStatusManager;->setIsBusy(Z)V

    .line 2375
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$4200(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/ims/MtStatusManager;->addIncomingCall(Lcom/huawei/ims/MtStatusReport;)V

    goto :goto_0

    .line 2376
    :cond_2
    iget v0, p1, Lcom/huawei/ims/MtStatusReport;->call_status:I

    if-ne v1, v0, :cond_4

    .line 2377
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$4200(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    iget-object v1, p1, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/MtStatusManager;->isNeedNotifyImsCallEnded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2378
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "open do-recovery"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2380
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$4200(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/MtStatusManager;->setIsBusy(Z)V

    .line 2383
    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$4200(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/ims/MtStatusManager;->addFailCall(Lcom/huawei/ims/MtStatusReport;)V

    goto :goto_0

    .line 2385
    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "status not supported. "

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2388
    :cond_5
    :goto_0
    return-void
.end method

.method private handleNetworkStateChanged(II)V
    .locals 6
    .param p1, "dataRegState"    # I
    .param p2, "rilRat"    # I

    .line 2300
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$2800(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2301
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2302
    .local v0, "isDataReg":Z
    :goto_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$2800(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/huawei/ims/HwImsUtImpl;->setIsDataReg(Z)V

    .line 2303
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$2800(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl;->isSIMCardCheckedByUT()Z

    move-result v2

    .line 2304
    .local v2, "isSIMCardCheckedByUT":Z
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleNetworkStateChanged: isSIMCardCheckedByUT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isDataReg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2306
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v3}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isUse403ForLocalCW()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 2307
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v3}, Lcom/huawei/ims/ImsServiceSub;->access$2800(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsUtImpl;->detectSimCardSubscriptionStatus()V

    .line 2312
    .end local v0    # "isDataReg":Z
    .end local v2    # "isSIMCardCheckedByUT":Z
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$3700(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v0

    .line 2313
    .local v0, "optimize":Z
    if-nez v0, :cond_2

    .line 2314
    return-void

    .line 2319
    :cond_2
    if-nez p2, :cond_3

    .line 2320
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PS abnormal, rat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2322
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isHangUpWhenLostNet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2324
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->hangupCallsWhenNoService()V

    .line 2332
    :cond_3
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2335
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->detectImsRegisterState(II)I

    move-result v2

    .line 2336
    .local v2, "imsRegistration":I
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After detect, ims register state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2337
    if-nez v2, :cond_4

    .line 2342
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v3}, Lcom/huawei/ims/ImsServiceSub;->access$1500(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2343
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->createRegCallBackThread(I)V

    .line 2344
    goto :goto_1

    .line 2346
    :cond_4
    const/4 v1, 0x3

    if-ne v1, v2, :cond_5

    .line 2347
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v3, v3, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/huawei/ims/ImsRIL;->getImsRegistrationState(Landroid/os/Message;)V

    .line 2352
    .end local v2    # "imsRegistration":I
    :cond_5
    return-void
.end method

.method private handleOnHoldTone(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1374
    const-string v0, "ImsServiceSub"

    const-string v1, "handleOnHoldTone..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 1377
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1378
    .local v0, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_0

    .line 1379
    return-void

    .line 1382
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v1, v1, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1383
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_5

    const-string v2, "support_hold_tone_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 1388
    :cond_1
    if-nez p1, :cond_2

    .line 1389
    return-void

    .line 1392
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    .line 1393
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1394
    .local v2, "startOnHoldLocalTone":Z
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v3}, Lcom/huawei/ims/ImsServiceSub;->access$1500(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1395
    .local v3, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v3, :cond_3

    .line 1396
    invoke-virtual {v3, v2}, Lcom/huawei/ims/ImsServiceClassTracker;->handleOnHoldTone(Z)V

    goto :goto_0

    .line 1398
    :cond_3
    const-string v4, "ImsServiceSub"

    const-string v5, "Message for non-registered service class"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    .end local v2    # "startOnHoldLocalTone":Z
    .end local v3    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    :goto_0
    goto :goto_1

    .line 1401
    :cond_4
    const-string v2, "ImsServiceSub"

    const-string v3, "AsyncResult exception in handleOnHoldTone."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :goto_1
    return-void

    .line 1384
    :cond_5
    :goto_2
    const-string v2, "ImsServiceSub"

    const-string v3, "handleOnHoldTone,current carrier not support holdtone"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    return-void
.end method

.method private handleReadDomainName(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1920
    const/4 v0, 0x0

    .line 1921
    .local v0, "domainName":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1922
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1923
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 1925
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$2800(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1926
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/huawei/ims/HwImsConfigImpl;->setDomainNameFromSIM(Ljava/lang/String;)V

    .line 1927
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$2800(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl;->setHomeDomainName()I

    .line 1929
    :cond_1
    return-void
.end method

.method private handleReadIsimIMPI(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1931
    const/4 v0, 0x0

    .line 1932
    .local v0, "impi":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1933
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1934
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 1936
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$2800(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1937
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/huawei/ims/HwImsConfigImpl;->setImpiFromSIM(Ljava/lang/String;)V

    .line 1938
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$2800(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpi()I

    .line 1940
    :cond_1
    return-void
.end method

.method private handleSetDMParamsDone(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 2492
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2494
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.providers.dm"

    const-string v3, "com.android.providers.dm.DmReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2497
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2498
    .local v2, "cmdType":I
    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2499
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 2500
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2501
    .local v4, "result":[I
    :goto_0
    iget-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 2502
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSetDMParamsDone  success!type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2503
    const-string v5, "ret"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 2505
    :cond_1
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSetDMParamsDone  fail!type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2506
    const-string v5, "ret"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2508
    :goto_1
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v5, v5, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2509
    return-void
.end method

.method private handleSetSmsConfig(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1980
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "EVENT_IMS_SET_SMS_CONFIG"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1981
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1982
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1983
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, "handleSetSmsConfig success! "

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_1

    .line 1985
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, "handleSetSmsConfig fail!"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1986
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v1, v1, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    const-string v2, "sms_ims_set_value"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1987
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v2, v2, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 1988
    .local v2, "smsImsSet":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1989
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v3, v3, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1991
    :cond_2
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v4, v4, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1994
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "smsImsSet":Z
    :goto_1
    return-void
.end method

.method private handleSrvStatusUpdate(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation

    .local p1, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ServiceStatus;>;"
    move-object/from16 v0, p0

    .line 1444
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1445
    .local v1, "updateListSize":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v1, :cond_1a

    .line 1446
    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/ServiceStatus;

    .line 1448
    .local v5, "update":Lcom/huawei/ims/ServiceStatus;
    if-eqz v5, :cond_19

    iget v6, v5, Lcom/huawei/ims/ServiceStatus;->type:I

    invoke-direct {v0, v6}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->isSrvTypeValid(I)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1449
    iget-object v6, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v6}, Lcom/huawei/ims/ImsServiceSub;->access$1600(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1450
    iget-object v6, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/huawei/ims/ServiceStatus;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/huawei/ims/ServiceStatus;->status:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " isValid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1453
    :cond_0
    const/4 v6, 0x0

    .line 1454
    .local v6, "srvSt":Lcom/huawei/ims/ServiceStatus;
    iget v7, v5, Lcom/huawei/ims/ServiceStatus;->type:I

    const/4 v8, 0x4

    const/16 v9, 0xb

    if-ne v7, v9, :cond_1

    .line 1455
    iget-object v7, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v7}, Lcom/huawei/ims/ImsServiceSub;->access$1700(Lcom/huawei/ims/ImsServiceSub;)[Lcom/huawei/ims/ServiceStatus;

    move-result-object v7

    aget-object v6, v7, v8

    goto :goto_1

    .line 1457
    :cond_1
    iget-object v7, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v7}, Lcom/huawei/ims/ImsServiceSub;->access$1700(Lcom/huawei/ims/ImsServiceSub;)[Lcom/huawei/ims/ServiceStatus;

    move-result-object v7

    iget v10, v5, Lcom/huawei/ims/ServiceStatus;->type:I

    aget-object v6, v7, v10

    .line 1459
    :goto_1
    iget-boolean v7, v5, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    iput-boolean v7, v6, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    .line 1460
    iget v7, v5, Lcom/huawei/ims/ServiceStatus;->type:I

    iput v7, v6, Lcom/huawei/ims/ServiceStatus;->type:I

    .line 1461
    iget-object v7, v5, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    if-eqz v7, :cond_2

    .line 1462
    iget-object v7, v5, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    array-length v7, v7

    new-array v7, v7, [B

    iput-object v7, v6, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    .line 1463
    iget-object v7, v5, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    iget-object v10, v5, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    array-length v10, v10

    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    iput-object v7, v6, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    .line 1465
    :cond_2
    iget-object v7, v5, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v7, :cond_19

    iget-object v7, v5, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    array-length v7, v7

    if-lez v7, :cond_19

    .line 1466
    iget-object v7, v5, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    array-length v7, v7

    new-array v7, v7, [Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    iput-object v7, v6, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    .line 1468
    iget-object v7, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v7}, Lcom/huawei/ims/ImsServiceSub;->access$1600(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1469
    iget-object v7, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Call Type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/huawei/ims/ServiceStatus;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "has num updates = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1471
    :cond_3
    iget-object v7, v6, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    .line 1473
    .local v7, "actSt":[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    iget-object v11, v5, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    array-length v11, v11

    if-ge v10, v11, :cond_19

    .line 1474
    iget-object v11, v5, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    aget-object v11, v11, v10

    .line 1476
    .local v11, "actUpdate":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    iget-object v12, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v12}, Lcom/huawei/ims/ImsServiceSub;->access$1600(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1477
    iget-object v12, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "StatusForAccessTech networkMode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " registered = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " status = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " restrictCause = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1482
    :cond_4
    new-instance v12, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v12}, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v12, v7, v10

    .line 1483
    aget-object v12, v7, v10

    iget v13, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    iput v13, v12, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 1484
    aget-object v12, v7, v10

    iget v13, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->registered:I

    iput v13, v12, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 1485
    iget v12, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ne v12, v13, :cond_5

    iget v12, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    if-eqz v12, :cond_5

    .line 1487
    aget-object v12, v7, v10

    iput v14, v12, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    goto :goto_3

    .line 1489
    :cond_5
    aget-object v12, v7, v10

    iget v15, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v15, v12, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 1491
    :goto_3
    aget-object v12, v7, v10

    iget v12, v12, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v12, v6, Lcom/huawei/ims/ServiceStatus;->status:I

    .line 1492
    aget-object v12, v7, v10

    iget v15, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    iput v15, v12, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 1493
    const/4 v12, -0x1

    .line 1494
    .local v12, "feature":I
    aget-object v15, v7, v10

    iget v15, v15, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v8, 0x12

    if-eq v15, v8, :cond_7

    aget-object v8, v7, v10

    iget v8, v8, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0x13

    if-ne v8, v15, :cond_6

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    move v8, v14

    .line 1496
    .local v8, "modeWifi":Z
    :goto_5
    aget-object v15, v7, v10

    iget v15, v15, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/4 v2, -0x1

    if-eq v15, v2, :cond_9

    aget-object v2, v7, v10

    iget v2, v2, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0xe

    if-ne v2, v15, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    move v2, v14

    .line 1498
    .local v2, "modeLte":Z
    :goto_7
    if-nez v8, :cond_b

    if-eqz v2, :cond_a

    goto :goto_9

    .line 1473
    .end local v2    # "modeLte":Z
    .end local v8    # "modeWifi":Z
    .end local v11    # "actUpdate":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    .end local v12    # "feature":I
    :cond_a
    :goto_8
    const/4 v13, 0x0

    goto/16 :goto_11

    .line 1499
    .restart local v2    # "modeLte":Z
    .restart local v8    # "modeWifi":Z
    .restart local v11    # "actUpdate":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    .restart local v12    # "feature":I
    :cond_b
    :goto_9
    iget v15, v5, Lcom/huawei/ims/ServiceStatus;->type:I

    if-nez v15, :cond_e

    .line 1500
    if-eqz v2, :cond_c

    .line 1501
    nop

    .line 1502
    const/4 v15, 0x0

    goto :goto_a

    :cond_c
    const/4 v15, 0x2

    :goto_a
    move v12, v15

    .line 1504
    iget-object v15, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    if-eqz v8, :cond_d

    aget-object v13, v7, v10

    iget v13, v13, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-ne v13, v14, :cond_d

    move v13, v14

    goto :goto_b

    :cond_d
    const/4 v13, 0x0

    :goto_b
    invoke-static {v15, v13}, Lcom/huawei/ims/ImsServiceSub;->access$1402(Lcom/huawei/ims/ImsServiceSub;Z)Z

    goto :goto_e

    .line 1507
    :cond_e
    iget v13, v5, Lcom/huawei/ims/ServiceStatus;->type:I

    if-ne v13, v9, :cond_10

    .line 1508
    if-eqz v2, :cond_f

    .line 1509
    nop

    .line 1510
    const/4 v13, 0x4

    goto :goto_c

    :cond_f
    const/4 v13, 0x5

    :goto_c
    move v12, v13

    goto :goto_e

    .line 1512
    :cond_10
    if-eqz v2, :cond_11

    .line 1513
    nop

    .line 1514
    move v13, v14

    goto :goto_d

    :cond_11
    const/4 v13, 0x3

    :goto_d
    move v12, v13

    .line 1517
    :goto_e
    iget-object v13, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v13, v13, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x3fc

    if-eqz v13, :cond_12

    iget-object v13, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v13, v13, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1518
    iget-object v13, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v13, v13, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 1519
    iget-object v13, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v9, "remove sos pending msg!"

    invoke-static {v13, v9}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1522
    :cond_12
    aget-object v9, v7, v10

    iget v9, v9, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v13, 0x2

    if-eq v9, v13, :cond_16

    aget-object v9, v7, v10

    iget v9, v9, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-ne v9, v14, :cond_13

    goto :goto_10

    .line 1542
    :cond_13
    aget-object v9, v7, v10

    iget v9, v9, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eqz v9, :cond_15

    aget-object v9, v7, v10

    iget v9, v9, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v13, 0x3

    if-ne v9, v13, :cond_14

    goto :goto_f

    .line 1551
    :cond_14
    aget-object v9, v7, v10

    iget v9, v9, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/16 v13, 0x8

    if-ne v9, v13, :cond_a

    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v9, v9, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    if-eqz v9, :cond_a

    .line 1552
    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v13, "current service status is sos pending !"

    invoke-static {v9, v13}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1553
    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v9, v9, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1554
    .local v9, "m":Landroid/os/Message;
    iget-object v13, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v13, v13, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x7530

    invoke-virtual {v13, v9, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v2    # "modeLte":Z
    .end local v8    # "modeWifi":Z
    .end local v9    # "m":Landroid/os/Message;
    .end local v11    # "actUpdate":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    .end local v12    # "feature":I
    goto/16 :goto_8

    .line 1545
    .restart local v2    # "modeLte":Z
    .restart local v8    # "modeWifi":Z
    .restart local v11    # "actUpdate":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    .restart local v12    # "feature":I
    :cond_15
    :goto_f
    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "disabledFeature = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1546
    if-eqz v8, :cond_a

    .line 1547
    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v9}, Lcom/huawei/ims/ImsServiceSub;->access$1100(Lcom/huawei/ims/ImsServiceSub;)Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 1548
    const-string v9, "UNREGISTERED"

    invoke-direct {v0, v9}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1525
    :cond_16
    :goto_10
    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "enabledFeature = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", mEmergencyUnderWifi = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v15}, Lcom/huawei/ims/ImsServiceSub;->access$1400(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ",getImsRegisterState() = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    .line 1526
    invoke-virtual {v15}, Lcom/huawei/ims/ImsServiceSub;->getImsRegisterState()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1525
    invoke-static {v9, v13}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1527
    if-eqz v8, :cond_18

    .line 1528
    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v9}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v9

    if-eqz v9, :cond_17

    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v9}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/ims/HwImsConfigImpl;->getIsEmergencyUnderWifi()Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    .line 1529
    invoke-static {v9}, Lcom/huawei/ims/ImsServiceSub;->access$1400(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v9}, Lcom/huawei/ims/ImsServiceSub;->getImsRegisterState()I

    move-result v9

    if-nez v9, :cond_17

    .line 1530
    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v13, "Emergency call under vowifi and ims is unregisterd, not notify vowifi state."

    invoke-static {v9, v13}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1532
    :cond_17
    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v9}, Lcom/huawei/ims/ImsServiceSub;->access$1100(Lcom/huawei/ims/ImsServiceSub;)Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 1533
    const-string v9, "REGISTERED"

    invoke-direct {v0, v9}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    .line 1534
    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v9, v14}, Lcom/huawei/ims/ImsServiceSub;->access$1202(Lcom/huawei/ims/ImsServiceSub;I)I

    goto/16 :goto_8

    .line 1537
    :cond_18
    if-eqz v2, :cond_a

    .line 1538
    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v9}, Lcom/huawei/ims/ImsServiceSub;->access$1100(Lcom/huawei/ims/ImsServiceSub;)Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 1539
    const-string v9, "UNREGISTERED"

    invoke-direct {v0, v9}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    .line 1540
    iget-object v9, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const/4 v13, 0x0

    invoke-static {v9, v13}, Lcom/huawei/ims/ImsServiceSub;->access$1202(Lcom/huawei/ims/ImsServiceSub;I)I

    .line 1473
    .end local v2    # "modeLte":Z
    .end local v8    # "modeWifi":Z
    .end local v11    # "actUpdate":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    .end local v12    # "feature":I
    :goto_11
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x4

    const/16 v9, 0xb

    goto/16 :goto_2

    .line 1445
    .end local v6    # "srvSt":Lcom/huawei/ims/ServiceStatus;
    .end local v7    # "actSt":[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    .end local v10    # "i":I
    :cond_19
    const/4 v13, 0x0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1562
    .end local v3    # "j":I
    .end local v5    # "update":Lcom/huawei/ims/ServiceStatus;
    :cond_1a
    move-object/from16 v4, p1

    return-void
.end method

.method private handleSrvccStateChanged([I)V
    .locals 2
    .param p1, "ret"    # [I

    .line 2452
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "handleSrvccStateChanged"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2453
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 2454
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 2455
    .local v0, "state":I
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/HwVolteChrManager;->notifySrvccState(I)V

    .line 2457
    .end local v0    # "state":I
    :cond_0
    return-void
.end method

.method private handleSuppSvc(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1352
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "handleSuppSvc"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1353
    const/4 v0, 0x0

    .line 1354
    .local v0, "supp_svc_unsol":Lcom/huawei/ims/HwImsSuppServiceNotification;
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 1355
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/huawei/ims/HwImsSuppServiceNotification;

    .line 1357
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->access$1500(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1358
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 1359
    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceClassTracker;->handleSuppSvcUnsol(Lcom/huawei/ims/HwImsSuppServiceNotification;)V

    .line 1365
    .end local v1    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    goto :goto_0

    .line 1362
    .restart local v1    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1363
    return-void

    .line 1367
    .end local v1    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, "AsyncResult exception in handleSuppSvc."

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1369
    :goto_0
    return-void
.end method

.method private handleUnsolSpeechInfo(I)V
    .locals 6
    .param p1, "speechCodec"    # I

    .line 2020
    sget-boolean v0, Lcom/huawei/ims/ImsServiceSub;->IS_AMR_WB_SHOW_HD_VOLTE:Z

    if-eqz v0, :cond_0

    .line 2021
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0, p1}, Lcom/huawei/ims/ImsServiceSub;->access$3400(Lcom/huawei/ims/ImsServiceSub;I)V

    .line 2032
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUnsolSpeechInfo speechCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2033
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->broadcastSpeechCodecNotification(I)V

    .line 2034
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2046
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->access$3500(Lcom/huawei/ims/ImsServiceSub;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0

    .line 2042
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->access$3500(Lcom/huawei/ims/ImsServiceSub;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "Codec=AMR_WB"

    aput-object v2, v1, v0

    .line 2043
    const/4 p1, 0x2

    .line 2044
    goto :goto_0

    .line 2036
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->access$3500(Lcom/huawei/ims/ImsServiceSub;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "Codec=AMR_NB"

    aput-object v2, v1, v0

    .line 2037
    nop

    .line 2050
    :goto_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current speechInfoCodec is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v3}, Lcom/huawei/ims/ImsServiceSub;->access$3500(Lcom/huawei/ims/ImsServiceSub;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2052
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2053
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2054
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setSpeechInfoCodec(I)V

    .line 2056
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2057
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSpeechInfoCodec()Ljava/lang/String;

    move-result-object v2

    .line 2058
    .local v2, "speechInfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAudioParameters speechInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2059
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2060
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 2061
    .local v3, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2064
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "speechInfo":Ljava/lang/String;
    .end local v3    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleUnsolVoWiFiRegErrReport(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1897
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1898
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 1899
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Lcom/huawei/ims/VoWiFiRegErrReport;

    if-eqz v1, :cond_1

    .line 1900
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/VoWiFiRegErrReport;

    .line 1901
    .local v1, "result":Lcom/huawei/ims/VoWiFiRegErrReport;
    iget v2, v1, Lcom/huawei/ims/VoWiFiRegErrReport;->errDomain:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1902
    new-instance v2, Landroid/content/Intent;

    const-string v3, "huawei.intent.action.IMS_REG_ERROR_REPORT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1903
    .local v2, "voWiFiReportIntent":Landroid/content/Intent;
    const-string v3, "errDomain"

    iget v4, v1, Lcom/huawei/ims/VoWiFiRegErrReport;->errDomain:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1904
    const-string v3, "errStage"

    iget v4, v1, Lcom/huawei/ims/VoWiFiRegErrReport;->errStage:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1905
    const-string v3, "failcause"

    iget v4, v1, Lcom/huawei/ims/VoWiFiRegErrReport;->failCause:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1906
    const-string v3, "failstring"

    iget-object v4, v1, Lcom/huawei/ims/VoWiFiRegErrReport;->failString:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1907
    const-string v3, "subscription"

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v4, v4, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v4}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1908
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v3, v3, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const-string v4, "com.huawei.ims.permission.GET_IMS_REG_ERROR_REPORT"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1910
    .end local v1    # "result":Lcom/huawei/ims/VoWiFiRegErrReport;
    .end local v2    # "voWiFiReportIntent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 1911
    :cond_1
    const-string v1, "ImsServiceSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUnsolVoWiFiRegErrReport ar.result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1914
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_UNSOL_VOWIF_REG_ERR_REPORT AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1916
    :goto_0
    return-void
.end method

.method private hangupCallsWhenNoService()V
    .locals 12

    .line 2235
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2236
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v1, :cond_0

    .line 2237
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, "get imsphone fails."

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2238
    return-void

    .line 2241
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2242
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    .line 2243
    .local v2, "foregroundCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    .line 2244
    .local v3, "ringingCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    .line 2246
    .local v4, "backgroundCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    const/4 v5, 0x0

    .line 2247
    .local v5, "isForegroundCallPresent":Z
    const/4 v6, 0x0

    .line 2248
    .local v6, "isBackgroundCallPresent":Z
    const/4 v7, 0x0

    .line 2250
    .local v7, "isRingCallPresent":Z
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z

    move-result v7

    .line 2251
    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z

    move-result v6

    .line 2252
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z

    move-result v5

    .line 2254
    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-eqz v7, :cond_2

    .line 2255
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v8

    invoke-interface {v8, v2, v3, v4}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerNoServiceDuringCallEvent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    .line 2260
    :cond_2
    if-eqz v7, :cond_3

    .line 2261
    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v9, "reject call since lost network."

    invoke-static {v8, v9}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2263
    :try_start_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2266
    goto :goto_0

    .line 2264
    :catch_0
    move-exception v8

    .line 2265
    .local v8, "e":Lcom/android/internal/telephony/CallStateException;
    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hangup ring call fails. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2269
    .end local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :goto_0
    if-eqz v6, :cond_4

    .line 2270
    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v9, "hang up bg call since lost network."

    invoke-static {v8, v9}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2272
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2275
    goto :goto_1

    .line 2273
    :catch_1
    move-exception v8

    .line 2274
    .restart local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hangup bg call fails. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2278
    .end local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 2279
    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v9, "hang up fg call since lost network."

    invoke-static {v8, v9}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2281
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2284
    goto :goto_2

    .line 2282
    :catch_2
    move-exception v8

    .line 2283
    .restart local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hangup fg call fails. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2286
    .end local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_5
    :goto_2
    return-void
.end method

.method private isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2289
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2290
    const/4 v0, 0x1

    return v0

    .line 2292
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSrvTypeValid(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 1433
    if-nez p1, :cond_0

    .line 1434
    const/4 v0, 0x1

    return v0

    .line 1436
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyImsVoWiFiState(Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    .line 1566
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v0, v0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 1568
    .local v0, "subId":I
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify IMS-VoWiFi state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sub is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1570
    const-string v1, "REGISTERED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1571
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->access$500(Lcom/huawei/ims/ImsServiceSub;)V

    .line 1574
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "huawei.intent.action.IMS_SERVICE_VOWIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1575
    .local v1, "imsVoWiFiStateIntent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1576
    const-string v2, "subscription"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1577
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v2, v2, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const-string v3, "com.huawei.ims.permission.GET_IMS_SERVICE_VOWIFI_STATE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1579
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$1500(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1580
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceClassTracker;>;"
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/ImsServiceClassTracker;

    iget-object v5, v5, Lcom/huawei/ims/ImsServiceClassTracker;->mFeatureCapabilityListener:Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->access$1800(Lcom/huawei/ims/ImsServiceSub;Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;)V

    .line 1581
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceClassTracker;>;"
    goto :goto_0

    .line 1582
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1587
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1589
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_c

    const/16 v1, 0x3fa

    if-eq v0, v1, :cond_b

    const/16 v1, 0x3fc

    const/4 v2, 0x1

    if-eq v0, v1, :cond_a

    const v1, 0x9c41

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    .line 1853
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleExtendMethod(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1835
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "EVENT_IMS_RADIO_ON"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1836
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$500(Lcom/huawei/ims/ImsServiceSub;)V

    .line 1837
    goto/16 :goto_1

    .line 1841
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1842
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleOnHoldTone(Landroid/os/AsyncResult;)V

    .line 1843
    goto/16 :goto_1

    .line 1795
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleImsDMCN()V

    .line 1796
    goto/16 :goto_1

    .line 1801
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleGetDMParamsDone(Landroid/os/Message;)V

    .line 1802
    goto/16 :goto_1

    .line 1798
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleSetDMParamsDone(Landroid/os/Message;)V

    .line 1799
    goto/16 :goto_1

    .line 1615
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1617
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleLteRRCInfo(Landroid/os/AsyncResult;)V

    .line 1618
    goto/16 :goto_1

    .line 1610
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1612
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleLtePDCPInfo(Landroid/os/AsyncResult;)V

    .line 1613
    goto/16 :goto_1

    .line 1783
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, " handleMessage (EVENT_UNSOl_SPEECH_INFO)"

    invoke-static {v0, v2}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1784
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1785
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1786
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1787
    .local v2, "intResult":[I
    aget v1, v2, v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleUnsolSpeechInfo(I)V

    .line 1788
    .end local v2    # "intResult":[I
    goto/16 :goto_1

    .line 1789
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_UNSOl_SPEECH_INFO exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1791
    goto/16 :goto_1

    .line 1766
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "EVENT_SRVCC_STATE_CHANGED"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1769
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$2900(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v0

    if-ne v2, v0, :cond_e

    .line 1771
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1772
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 1773
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleSrvccStateChanged([I)V

    goto/16 :goto_1

    .line 1775
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Srvcc exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1756
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "EVENT_IMS_CS_REDIAL"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1759
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$2900(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v0

    if-ne v2, v0, :cond_e

    .line 1761
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwVolteChrManager;->notifyCSRedial()V

    goto/16 :goto_1

    .line 1746
    :pswitch_a
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "EVENT_REGISTERED_TO_NETWORK"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1748
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$2800(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$2800(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->isAirModeResetCWInModem()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1749
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$2800(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCallWaitingToCs()V

    goto/16 :goto_1

    .line 1708
    :pswitch_b
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1709
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 1711
    .local v1, "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1712
    .local v2, "dataRegState":I
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1713
    .local v3, "rilRat":I
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED, dataRegState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Ril RAT is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1716
    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleNetworkStateChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1721
    .end local v1    # "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "dataRegState":I
    .end local v3    # "rilRat":I
    goto/16 :goto_1

    .line 1719
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v0

    .line 1720
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[error]parse message of EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED fail, exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1722
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 1735
    :pswitch_c
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "EVENT_MT_NEW_RING_REPORT"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1736
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1737
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 1738
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleMtNewRingReport(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1

    .line 1740
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_MT_NEW_RING_REPORT AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1742
    goto/16 :goto_1

    .line 1726
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "EVENT_MT_STATUS_REPORT"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1727
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1728
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 1729
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/MtStatusReport;

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleMtStatusReport(Lcom/huawei/ims/MtStatusReport;)V

    goto/16 :goto_1

    .line 1731
    :cond_3
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_MT_STATUS_REPORT AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1733
    goto/16 :goto_1

    .line 1849
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleReadIsimIMPI(Landroid/os/Message;)V

    .line 1850
    goto/16 :goto_1

    .line 1846
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleReadDomainName(Landroid/os/Message;)V

    .line 1847
    goto/16 :goto_1

    .line 1832
    :pswitch_10
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, " handleMessage (EVENT_IMS_SET_VT_CAPABILITY)"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1833
    goto/16 :goto_1

    .line 1641
    :pswitch_11
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "EVENT_IMS_REG_FAIL_DELAY"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1644
    .local v0, "imsphone":Lcom/android/internal/telephony/Phone;
    instance-of v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->access$2100(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v1

    if-eq v2, v1, :cond_4

    .line 1646
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerImsRegFailEvent(Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->access$402(Z)Z

    goto/16 :goto_1

    .line 1648
    :cond_4
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, "get imsphone fail, can\'t trigger Ims Reg Fail Event "

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1650
    goto/16 :goto_1

    .line 1699
    .end local v0    # "imsphone":Lcom/android/internal/telephony/Phone;
    :pswitch_12
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceSub;->handleImsGetImpuDone(Landroid/os/Message;)V

    .line 1700
    goto/16 :goto_1

    .line 1703
    :pswitch_13
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$2700(Lcom/huawei/ims/ImsServiceSub;)V

    .line 1704
    goto/16 :goto_1

    .line 1682
    :pswitch_14
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z

    if-nez v0, :cond_5

    .line 1684
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->handleSimRecordsLoaded()V

    goto :goto_0

    .line 1686
    :cond_5
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$2500(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1687
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, "main slot changed, handle sim records loaded."

    invoke-static {v0, v2}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1688
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->handleSimRecordsLoaded()V

    .line 1689
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$2502(Lcom/huawei/ims/ImsServiceSub;Z)Z

    .line 1694
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$2600(Lcom/huawei/ims/ImsServiceSub;)V

    .line 1696
    goto/16 :goto_1

    .line 1663
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1664
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7

    .line 1665
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$2300(Lcom/huawei/ims/ImsServiceSub;Lcom/huawei/ims/ImsCallModification$CallModify;)V

    goto/16 :goto_1

    .line 1667
    :cond_7
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_MODIFY_CALL AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1669
    goto/16 :goto_1

    .line 1621
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1622
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleHandover(Landroid/os/AsyncResult;)V

    .line 1623
    goto/16 :goto_1

    .line 1627
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1628
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleSuppSvc(Landroid/os/AsyncResult;)V

    .line 1629
    goto/16 :goto_1

    .line 1658
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1659
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lcom/huawei/ims/ImsServiceSub;->access$2200(Lcom/huawei/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1660
    goto/16 :goto_1

    .line 1592
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_19
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "Received event: EVENT_SRV_STATUS_UPDATE"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1593
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1594
    .local v0, "arResult":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_8

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 1595
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 1597
    .local v1, "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ServiceStatus;>;"
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleSrvStatusUpdate(Ljava/util/ArrayList;)V

    .line 1601
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$1900(Lcom/huawei/ims/ImsServiceSub;)V

    .line 1603
    .end local v1    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ServiceStatus;>;"
    goto/16 :goto_1

    .line 1604
    :cond_8
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, "IMS Service Status Update failed!"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1605
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->access$2000(Lcom/huawei/ims/ImsServiceSub;)V

    .line 1607
    goto/16 :goto_1

    .line 1636
    .end local v0    # "arResult":Landroid/os/AsyncResult;
    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleImsStateDone(Landroid/os/Message;)V

    .line 1637
    goto/16 :goto_1

    .line 1632
    :pswitch_1b
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v1, v1, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getImsRegistrationState(Landroid/os/Message;)V

    .line 1633
    goto/16 :goto_1

    .line 1654
    :pswitch_1c
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v1, v1, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getCurrentCalls(Landroid/os/Message;)V

    .line 1655
    goto/16 :goto_1

    .line 1820
    :cond_9
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "VT_FLOW_INFO_REPORT"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1822
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1824
    .local v0, "asyncresult":Landroid/os/AsyncResult;
    if-eqz v0, :cond_e

    .line 1825
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1826
    .local v1, "data":J
    invoke-static {}, Lcom/huawei/ims/vt/ImsMedia;->getInstance()Lcom/huawei/ims/vt/ImsMedia;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v4, v4, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-virtual {v3, v4, v1, v2}, Lcom/huawei/ims/vt/ImsMedia;->vtFlowInfoReport(IJ)V

    .line 1827
    .end local v1    # "data":J
    goto :goto_1

    .line 1813
    .end local v0    # "asyncresult":Landroid/os/AsyncResult;
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, " handleMessage (EVENT_VOWIFI_SOS_PENDING_TIMEOUT)"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1814
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->access$1100(Lcom/huawei/ims/ImsServiceSub;)Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 1815
    const-string v0, "UNREGISTERED"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    .line 1816
    goto :goto_1

    .line 1806
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, " handleMessage (EVENT_SEND_BATTERY_STATUS)"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1807
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1808
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleBatteryStatus(Landroid/os/AsyncResult;)V

    .line 1809
    goto :goto_1

    .line 1671
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1672
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_d

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_d

    .line 1673
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$2400(Lcom/huawei/ims/ImsServiceSub;[I)V

    goto :goto_1

    .line 1675
    :cond_d
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_MODIFY_RESULT AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1677
    nop

    .line 1858
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_e
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3ed
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
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x44c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
