.class public Landroid/telephony/HwTelephonyManager;
.super Ljava/lang/Object;
.source "HwTelephonyManager.java"


# static fields
.field private static final INSTANCE:Landroid/telephony/HwTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Landroid/telephony/HwTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/HwTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/HwTelephonyManager;->INSTANCE:Landroid/telephony/HwTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static getDefault()Landroid/telephony/HwTelephonyManager;
    .locals 1

    .line 14
    sget-object v0, Landroid/telephony/HwTelephonyManager;->INSTANCE:Landroid/telephony/HwTelephonyManager;

    return-object v0
.end method


# virtual methods
.method public getCardType(I)I
    .locals 0

    .line 24
    const/4 p1, 0x0

    return p1
.end method

.method public getDefault4GSlotId()I
    .locals 3

    .line 18
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 19
    const-string v1, "HwTelephonyManager"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return v0
.end method

.method public isCTSimCard(I)Z
    .locals 0

    .line 28
    const/4 p1, 0x0

    return p1
.end method
