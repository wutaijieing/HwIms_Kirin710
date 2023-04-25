.class Lcom/huawei/ims/HwImsUtImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsUtImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 1945
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1948
    if-nez p2, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v1, "onReceive intent is null"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->access$600(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1951
    return-void

    .line 1954
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1956
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1959
    const-string v1, "com.hisi.mapcon.servicefailed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    .line 1962
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsUtImpl;->access$700(Lcom/huawei/ims/HwImsUtImpl;)I

    move-result v1

    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->access$800()I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 1963
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive com.hisi.mapcon.servicefailed, but not for this sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    .line 1964
    invoke-static {v3}, Lcom/huawei/ims/HwImsUtImpl;->access$700(Lcom/huawei/ims/HwImsUtImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", current SubId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->access$800()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", return."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1963
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1965
    return-void

    .line 1968
    :cond_1
    const-string v1, "serviceType"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1969
    .local v1, "serviceType":I
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v4}, Lcom/huawei/ims/HwImsUtImpl;->access$900(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v4

    .line 1971
    .local v4, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle UT data connection vowifi conntion begin fail and serviceType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1973
    sget-boolean v5, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v5, :cond_7

    if-ne v2, v1, :cond_7

    if-nez v4, :cond_2

    goto/16 :goto_1

    .line 1977
    :cond_2
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v6, v4, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-eq v5, v6, :cond_3

    .line 1978
    return-void

    .line 1980
    :cond_3
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->access$1000(Lcom/huawei/ims/HwImsUtImpl;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1981
    return-void

    .line 1983
    :cond_4
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->access$1102(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 1985
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5, v3}, Lcom/huawei/ims/HwImsUtImpl;->access$1200(Lcom/huawei/ims/HwImsUtImpl;Z)V

    .line 1987
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->access$1300(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1989
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->access$1400(Lcom/huawei/ims/HwImsUtImpl;)I

    move-result v5

    iget-object v6, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v6}, Lcom/huawei/ims/HwImsUtImpl;->access$1500(Lcom/huawei/ims/HwImsUtImpl;)I

    move-result v6

    const/4 v7, 0x6

    if-ge v5, v6, :cond_6

    .line 1991
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->access$1408(Lcom/huawei/ims/HwImsUtImpl;)I

    .line 1992
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v5, v4, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 1993
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v6, "received ACTION_MAPCON_SERVICE_FAILED,retry tunnel setup."

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1994
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->access$1600(Lcom/huawei/ims/HwImsUtImpl;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1996
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->access$1700(Lcom/huawei/ims/HwImsUtImpl;Z)I

    .line 1999
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->access$1102(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2001
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->access$1800(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 2002
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->access$1900(Lcom/huawei/ims/HwImsUtImpl;)V

    goto :goto_0

    .line 2004
    :cond_5
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->access$1402(Lcom/huawei/ims/HwImsUtImpl;I)I

    .line 2006
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v3, "handle UT data connection received ACTION_MAPCON_SERVICE_FAILED,tunnel setup fail."

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 2008
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->access$1800(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 2009
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->access$2000(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 2010
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v2, v7}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    goto :goto_0

    .line 2014
    :cond_6
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->access$1402(Lcom/huawei/ims/HwImsUtImpl;I)I

    .line 2016
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v3, "handle UT data connection received ACTION_MAPCON_SERVICE_FAILED,tunnel setup fail."

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 2018
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->access$1800(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 2019
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->access$2000(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 2020
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v2, v7}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 2024
    .end local v1    # "serviceType":I
    .end local v4    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :goto_0
    goto :goto_2

    .line 1974
    .restart local v1    # "serviceType":I
    .restart local v4    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_7
    :goto_1
    return-void

    .line 2024
    .end local v1    # "serviceType":I
    .end local v4    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_8
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2025
    const-string v1, "networkInfo"

    .line 2026
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 2028
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->access$2100(Lcom/huawei/ims/HwImsUtImpl;Landroid/net/NetworkInfo;)V

    .line 2030
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    goto :goto_2

    :cond_9
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2033
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->access$2202(Lcom/huawei/ims/HwImsUtImpl;Z)Z

    .line 2035
    const-string v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2037
    .local v1, "isAirplaneModeOn":Z
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAirModeOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 2039
    if-eqz v1, :cond_a

    .line 2041
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->access$2300(Lcom/huawei/ims/HwImsUtImpl;I)V

    .line 2046
    .end local v1    # "isAirplaneModeOn":Z
    :cond_a
    goto :goto_2

    :cond_b
    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2047
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v1, p2}, Lcom/huawei/ims/HwImsUtImpl;->access$2400(Lcom/huawei/ims/HwImsUtImpl;Landroid/content/Intent;)V

    .line 2054
    :goto_2
    return-void

    .line 2050
    :cond_c
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v2, "intent not support"

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->access$600(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 2052
    return-void
.end method
