.class public Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;
.super Ljava/lang/Object;
.source "HwMMTelFeature.java"

# interfaces
.implements Lcom/huawei/ims/ImsServiceClassTracker$InComingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/feature/HwMMTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/feature/HwMMTelFeature;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/feature/HwMMTelFeature;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/feature/HwMMTelFeature;

    .line 45
    iput-object p1, p0, Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;->this$0:Lcom/huawei/ims/feature/HwMMTelFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyIncomingCall(Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "c"    # Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 52
    const-class v0, Landroid/telephony/ims/compat/feature/MmTelFeature;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;->this$0:Lcom/huawei/ims/feature/HwMMTelFeature;

    invoke-virtual {v1, p1, p2}, Lcom/huawei/ims/feature/HwMMTelFeature;->notifyIncomingCall(Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 59
    const-class v0, Landroid/telephony/ims/compat/feature/MmTelFeature;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;->this$0:Lcom/huawei/ims/feature/HwMMTelFeature;

    invoke-virtual {v1, p1, p2}, Lcom/huawei/ims/feature/HwMMTelFeature;->notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
