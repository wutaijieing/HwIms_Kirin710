.class public interface abstract Lcom/huawei/ims/ImsServiceClassTracker$InComingListener;
.super Ljava/lang/Object;
.source "ImsServiceClassTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsServiceClassTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InComingListener"
.end annotation


# virtual methods
.method public abstract notifyIncomingCall(Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
.end method

.method public abstract notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
.end method
