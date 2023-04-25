.class public Lcom/huawei/sci/SciSimcard;
.super Ljava/lang/Object;
.source "SciSimcard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getCardImsi(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public static init()V
    .locals 1

    .line 20
    const-string v0, "simcard"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    const-string v0, "scisimcard"

    invoke-static {v0}, Lcom/huawei/sci/SciSys;->loadLib(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/huawei/sci/SciSimcard;->simcardInit()I

    .line 24
    return-void
.end method

.method public static native initCard(Ljava/lang/String;)I
.end method

.method public static native setSupportAkaFlag()I
.end method

.method private static native simcardInit()I
.end method

.method public static native uninitCard()I
.end method
