.class public Lcom/huawei/ims/ServiceStatus;
.super Ljava/lang/Object;
.source "ServiceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    }
.end annotation


# static fields
.field public static final CALL_TYPE_CS_VS_RX:I = 0x6

.field public static final CALL_TYPE_CS_VS_TX:I = 0x5

.field public static final CALL_TYPE_PS_VS_RX:I = 0x8

.field public static final CALL_TYPE_PS_VS_TX:I = 0x7

.field public static final CALL_TYPE_SMS:I = 0xa

.field public static final CALL_TYPE_UNKNOWN:I = 0x9

.field public static final CALL_TYPE_UT:I = 0xb

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1

.field public static final RADIO_TECH_1xRTT:I = 0x6

.field public static final RADIO_TECH_ANY:I = -0x1

.field public static final RADIO_TECH_EDGE:I = 0x2

.field public static final RADIO_TECH_EHRPD:I = 0xd

.field public static final RADIO_TECH_EVDO_0:I = 0x7

.field public static final RADIO_TECH_EVDO_A:I = 0x8

.field public static final RADIO_TECH_EVDO_B:I = 0xc

.field public static final RADIO_TECH_GPRS:I = 0x1

.field public static final RADIO_TECH_GSM:I = 0x10

.field public static final RADIO_TECH_HSDPA:I = 0x9

.field public static final RADIO_TECH_HSPA:I = 0xb

.field public static final RADIO_TECH_HSPAP:I = 0xf

.field public static final RADIO_TECH_HSUPA:I = 0xa

.field public static final RADIO_TECH_IS95A:I = 0x4

.field public static final RADIO_TECH_IS95B:I = 0x5

.field public static final RADIO_TECH_IWLAN:I = 0x13

.field public static final RADIO_TECH_LTE:I = 0xe

.field public static final RADIO_TECH_TD_SCDMA:I = 0x11

.field public static final RADIO_TECH_UMTS:I = 0x3

.field public static final RADIO_TECH_UNKNOWN:I = 0x0

.field public static final RADIO_TECH_WIFI:I = 0x12

.field public static final STATUS_DISABLED:I = 0x0

.field public static final STATUS_ENABLED:I = 0x2

.field public static final STATUS_NOT_SUPPORTED:I = 0x3

.field public static final STATUS_PARTIALLY_ENABLED:I = 0x1

.field public static final STATUS_SOS_PENDING:I = 0x8


# instance fields
.field public accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

.field public isValid:Z

.field public status:I

.field public type:I

.field public userdata:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    .line 74
    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/ServiceStatus;->type:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/ServiceStatus;->status:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    .line 80
    :cond_1
    return-void
.end method
