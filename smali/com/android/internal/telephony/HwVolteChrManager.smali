.class public interface abstract Lcom/android/internal/telephony/HwVolteChrManager;
.super Ljava/lang/Object;
.source "HwVolteChrManager.java"


# virtual methods
.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract notifyCSRedial()V
.end method

.method public abstract notifySrvccState(I)V
.end method

.method public abstract setRemoteCauseCode(I)V
.end method

.method public abstract setSrvccFlag(Z)V
.end method

.method public abstract triggerAnswerFailedEvent(I)V
.end method

.method public abstract triggerHangupFailedEvent()V
.end method

.method public abstract triggerImsRegFailEvent(Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
.end method

.method public abstract triggerMtCallFailEvent(JJII)V
.end method

.method public abstract triggerNoServiceDuringCallEvent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
.end method

.method public abstract updateCallLog(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/internal/telephony/imsphone/ImsPhone;)V
.end method

.method public abstract updateMtCallLog(I)V
.end method
