.class public final enum Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;
.super Ljava/lang/Enum;
.source "HwVolteChrManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HwVolteChrManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallEndReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

.field public static final enum CALL_END_NORMAL:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

.field public static final enum CALL_FAIL_NW:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

.field public static final enum CALL_FAIL_UE:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 78
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    const-string v1, "CALL_END_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;->CALL_END_NORMAL:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    const-string v1, "CALL_FAIL_UE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;->CALL_FAIL_UE:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    const-string v1, "CALL_FAIL_NW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;->CALL_FAIL_NW:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;->CALL_END_NORMAL:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;->CALL_FAIL_UE:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;->CALL_FAIL_NW:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;->$VALUES:[Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;
    .locals 1

    .line 77
    const-class v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;->$VALUES:[Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;

    return-object v0
.end method
