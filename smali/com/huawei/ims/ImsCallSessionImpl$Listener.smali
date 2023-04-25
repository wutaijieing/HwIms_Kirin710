.class public interface abstract Lcom/huawei/ims/ImsCallSessionImpl$Listener;
.super Ljava/lang/Object;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCallSessionHold(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
.end method

.method public abstract onCallSessionMerged()V
.end method

.method public abstract onCallSessionResumed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
.end method

.method public abstract onCallSessionStarted(Lcom/huawei/ims/ImsCallSessionImpl;)V
.end method

.method public abstract onClosed(Lcom/huawei/ims/ImsCallSessionImpl;)V
.end method

.method public abstract onDisconnected(Lcom/huawei/ims/ImsCallSessionImpl;)V
.end method

.method public abstract onUnsolCallModify(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsCallModification$CallModify;)V
.end method
