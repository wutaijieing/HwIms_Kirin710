.class public Lcom/android/internal/telephony/HwModemCapability;
.super Ljava/lang/Object;
.source "HwModemCapability.java"


# static fields
.field private static MODEM_CAP:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HwModemCapability"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    const-string v0, "persist.radio.modem.cap"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HwModemCapability;->MODEM_CAP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertChar2Int(C)I
    .locals 2

    .line 36
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    .line 37
    sub-int/2addr p0, v0

    return p0

    .line 39
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    .line 40
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 42
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v1, 0x46

    if-le p0, v1, :cond_2

    goto :goto_0

    .line 45
    :cond_2
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 43
    :cond_3
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static isCapabilitySupport(I)Z
    .locals 4

    .line 13
    nop

    .line 14
    div-int/lit8 v0, p0, 0x4

    .line 15
    rem-int/lit8 v1, p0, 0x4

    .line 16
    const/4 v2, 0x0

    if-ltz p0, :cond_4

    const/16 v3, 0x168

    if-lt p0, v3, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/HwModemCapability;->MODEM_CAP:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 20
    const-string p0, "persist.radio.modem.cap"

    const-string v3, ""

    invoke-static {p0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/HwModemCapability;->MODEM_CAP:Ljava/lang/String;

    .line 23
    :cond_1
    :try_start_0
    sget-object p0, Lcom/android/internal/telephony/HwModemCapability;->MODEM_CAP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/HwModemCapability;->convertChar2Int(C)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    .line 25
    rsub-int/lit8 v0, v1, 0x3

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/2addr p0, v0

    if-gtz p0, :cond_2

    .line 26
    nop

    .line 28
    const/4 v1, 0x0

    :cond_2
    return v1

    .line 32
    :cond_3
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string v0, "HwModemCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCapabilitySupport "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    return v2

    .line 17
    :cond_4
    :goto_1
    return v2
.end method
