.class Lcom/huawei/ims/ImsServiceSub$3;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsServiceSub;->createFeatureCapabilityCallBackThread(Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsServiceSub;

.field final synthetic val$listener:Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsServiceSub;Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 1009
    iput-object p1, p0, Lcom/huawei/ims/ImsServiceSub$3;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iput-object p2, p0, Lcom/huawei/ims/ImsServiceSub$3;->val$listener:Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1013
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$3;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter createFeatureCapabilityCallBackThread.  mTelCapabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$3;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->access$1100(Lcom/huawei/ims/ImsServiceSub;)Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$3;->val$listener:Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$3;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->access$1100(Lcom/huawei/ims/ImsServiceSub;)Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$3;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " createFeatureCapabilityCallBackThread()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1018
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
