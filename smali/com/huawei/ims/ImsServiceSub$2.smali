.class Lcom/huawei/ims/ImsServiceSub$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsServiceSub;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 633
    iput-object p1, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 636
    if-nez p2, :cond_0

    .line 637
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v1, "the intent is null"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 638
    return-void

    .line 641
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 644
    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 645
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, "airplane mode on"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 646
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, "UNREGISTERED"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$300(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 648
    invoke-static {v3}, Lcom/huawei/ims/ImsServiceSub;->access$402(Z)Z

    goto/16 :goto_1

    .line 653
    :cond_1
    const-string v1, "android.intent.action.ACTION_SWITCH_DUAL_CARDS_SLOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 654
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v2, "UNREGISTERED"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$300(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 656
    :cond_2
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 658
    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_3

    .line 659
    const-string v1, "subscription"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 660
    .local v1, "intentSubId":I
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v4, v4, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    if-eq v1, v4, :cond_3

    .line 661
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v3, "ACTION_CARRIER_CONFIG_CHANGED is not for this sub, return"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 662
    return-void

    .line 666
    .end local v1    # "intentSubId":I
    :cond_3
    const-string v1, "carrierConfigChangeState"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_4

    move v2, v3

    nop

    :cond_4
    move v1, v2

    .line 668
    .local v1, "isCarrierConfigLoaded":Z
    if-eqz v1, :cond_5

    sget-boolean v2, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v2, :cond_5

    .line 669
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsServiceSub;->getDMUSER()V

    goto :goto_0

    .line 671
    :cond_5
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v3, "carrier config is not loaded or the card is not verizon!"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 675
    :goto_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsServiceSub;->handleSimRecordsLoaded()V

    .line 677
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string v3, "carrier config changed "

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 678
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$500(Lcom/huawei/ims/ImsServiceSub;)V

    .line 680
    .end local v1    # "isCarrierConfigLoaded":Z
    goto/16 :goto_1

    .line 683
    :cond_6
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_8

    .line 686
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v1, v1, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v1

    .line 687
    .local v1, "mainSlot":I
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mainSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "intent sub ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "subscription"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "intent phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "phone"

    .line 688
    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 687
    invoke-static {v3, v4}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 690
    const-string v3, "subscription"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 691
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$600(Lcom/huawei/ims/ImsServiceSub;)V

    .line 694
    .end local v1    # "mainSlot":I
    :cond_7
    goto :goto_1

    :cond_8
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 695
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->access$700(Lcom/huawei/ims/ImsServiceSub;)V

    goto :goto_1

    .line 699
    :cond_9
    const-string v1, "com.android.server.dm.BROADCAST_DMSYNCSERVICE_TO_IMS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 700
    const-string v1, "type"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 701
    .local v1, "type":I
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, "data":Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v3, v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$800(Lcom/huawei/ims/ImsServiceSub;ILjava/lang/String;)V

    .line 703
    .end local v1    # "type":I
    .end local v2    # "data":Ljava/lang/String;
    goto :goto_1

    .line 706
    :cond_a
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 709
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isVolteLowbatteryEndcall()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 711
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1, p2}, Lcom/huawei/ims/ImsServiceSub;->access$1000(Lcom/huawei/ims/ImsServiceSub;Landroid/content/Intent;)V

    .line 715
    :cond_b
    :goto_1
    return-void
.end method
