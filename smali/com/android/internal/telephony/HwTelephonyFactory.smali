.class public Lcom/android/internal/telephony/HwTelephonyFactory;
.super Ljava/lang/Object;
.source "HwTelephonyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;
    .locals 1

    .line 8
    invoke-static {}, Lcom/android/internal/telephony/HwChrServiceManagerImpl;->getDefault()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;
    .locals 1

    .line 12
    invoke-static {}, Lcom/android/internal/telephony/HwVolteChrManagerImpl;->getDefault()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v0

    return-object v0
.end method
