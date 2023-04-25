.class public final enum Lcom/huawei/ims/DriverCallIms$State;
.super Ljava/lang/Enum;
.source "DriverCallIms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/DriverCallIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/DriverCallIms$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/DriverCallIms$State;

.field public static final enum ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

.field public static final enum ALERTING:Lcom/huawei/ims/DriverCallIms$State;

.field public static final enum DIALING:Lcom/huawei/ims/DriverCallIms$State;

.field public static final enum END:Lcom/huawei/ims/DriverCallIms$State;

.field public static final enum HOLDING:Lcom/huawei/ims/DriverCallIms$State;

.field public static final enum INCOMING:Lcom/huawei/ims/DriverCallIms$State;

.field public static final enum WAITING:Lcom/huawei/ims/DriverCallIms$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 30
    new-instance v0, Lcom/huawei/ims/DriverCallIms$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    .line 31
    new-instance v0, Lcom/huawei/ims/DriverCallIms$State;

    const-string v1, "HOLDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    .line 32
    new-instance v0, Lcom/huawei/ims/DriverCallIms$State;

    const-string v1, "DIALING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    .line 33
    new-instance v0, Lcom/huawei/ims/DriverCallIms$State;

    const-string v1, "ALERTING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    .line 34
    new-instance v0, Lcom/huawei/ims/DriverCallIms$State;

    const-string v1, "INCOMING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/huawei/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    .line 35
    new-instance v0, Lcom/huawei/ims/DriverCallIms$State;

    const-string v1, "WAITING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/huawei/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->WAITING:Lcom/huawei/ims/DriverCallIms$State;

    .line 36
    new-instance v0, Lcom/huawei/ims/DriverCallIms$State;

    const-string v1, "END"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/huawei/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/huawei/ims/DriverCallIms$State;

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->WAITING:Lcom/huawei/ims/DriverCallIms$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    aput-object v1, v0, v8

    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->$VALUES:[Lcom/huawei/ims/DriverCallIms$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/DriverCallIms$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lcom/huawei/ims/DriverCallIms$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/DriverCallIms$State;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/DriverCallIms$State;
    .locals 1

    .line 29
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->$VALUES:[Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v0}, [Lcom/huawei/ims/DriverCallIms$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/DriverCallIms$State;

    return-object v0
.end method
