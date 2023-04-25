.class public Lcom/android/ims/HwImsManager;
.super Ljava/lang/Object;
.source "HwImsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWfcMode(Landroid/content/Context;I)I
    .locals 0

    .line 12
    invoke-static {p0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static isDualImsAvailable()Z
    .locals 1

    .line 8
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isWfcEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
