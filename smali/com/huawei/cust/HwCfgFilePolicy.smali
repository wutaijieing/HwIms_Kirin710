.class public Lcom/huawei/cust/HwCfgFilePolicy;
.super Ljava/lang/Object;
.source "HwCfgFilePolicy.java"


# static fields
.field private static CFG_DIRS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/cust/HwCfgFilePolicy;->CFG_DIRS:[Ljava/lang/String;

    .line 11
    const-string v0, "CUST_POLICY_DIRS"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 13
    :cond_0
    const-string v0, "HwCfgFilePolicy"

    const-string v1, "CUST_POLICY_DIRS not set, abusing default one."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const-string v0, "/system/emui:/system/global:/system/etc:/oem:/data/cust:/cust_spec"

    .line 16
    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/cust/HwCfgFilePolicy;->CFG_DIRS:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCfgFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 4

    .line 19
    const-string v0, "ERROR"

    .line 20
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 22
    :pswitch_0
    nop

    .line 24
    :pswitch_1
    nop

    .line 26
    :pswitch_2
    nop

    .line 28
    :pswitch_3
    nop

    .line 30
    :pswitch_4
    nop

    .line 32
    :pswitch_5
    nop

    .line 34
    :pswitch_6
    nop

    .line 36
    :pswitch_7
    const-string v0, "CLOUD_APN"

    .line 38
    :goto_0
    const-string v1, "HwCfgFilePolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requested invalid file type! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string p1, "HwCfgFilePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requested config file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object p1, Lcom/huawei/cust/HwCfgFilePolicy;->CFG_DIRS:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 42
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    return-object v3

    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 46
    :cond_1
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
