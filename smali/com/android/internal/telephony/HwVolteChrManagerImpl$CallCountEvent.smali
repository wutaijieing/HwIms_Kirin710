.class public final enum Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;
.super Ljava/lang/Enum;
.source "HwVolteChrManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HwVolteChrManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallCountEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

.field public static final enum CSRedial:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

.field public static final enum Connected:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

.field public static final enum DropCallNW:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

.field public static final enum DropCallUE:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

.field public static final enum Mo:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

.field public static final enum MoFailNW:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

.field public static final enum MoFailUE:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

.field public static final enum Mt:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

.field public static final enum MtFailNW:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

.field public static final enum MtFailUE:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

.field public static final enum SRVCCFail:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

.field public static final enum SRVCCSuccess:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 63
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    const-string v1, "Mo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->Mo:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    const-string v1, "Mt"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->Mt:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    .line 65
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    const-string v1, "Connected"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->Connected:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    .line 66
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    const-string v1, "MoFailUE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->MoFailUE:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    const-string v1, "MoFailNW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->MoFailNW:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    const-string v1, "MtFailUE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->MtFailUE:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    const-string v1, "MtFailNW"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->MtFailNW:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    const-string v1, "DropCallUE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->DropCallUE:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    const-string v1, "DropCallNW"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->DropCallNW:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    const-string v1, "SRVCCSuccess"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->SRVCCSuccess:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    const-string v1, "SRVCCFail"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->SRVCCFail:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    const-string v1, "CSRedial"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->CSRedial:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    .line 62
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->Mo:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->Mt:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->Connected:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->MoFailUE:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->MoFailNW:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->MtFailUE:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->MtFailNW:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->DropCallUE:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->DropCallNW:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->SRVCCSuccess:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->SRVCCFail:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->CSRedial:Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    aput-object v1, v0, v13

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->$VALUES:[Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;
    .locals 1

    .line 62
    const-class v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;
    .locals 1

    .line 62
    sget-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->$VALUES:[Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;

    return-object v0
.end method
