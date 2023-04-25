.class public Lcom/huawei/sci/SciSSConfCb;
.super Ljava/lang/Object;
.source "SciSSConfCb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciSSConfCb$Callback;
    }
.end annotation


# static fields
.field private static bsfSearchResult:I

.field private static bsfThread:Ljava/lang/Runnable;

.field private static callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

.field private static sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 9
    sput-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/huawei/sci/SciSSConfCb;->bsfSearchResult:I

    .line 14
    new-instance v0, Lcom/huawei/sci/SciSSConfCb$1;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfCb$1;-><init>()V

    sput-object v0, Lcom/huawei/sci/SciSSConfCb;->bsfThread:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 5
    sput p0, Lcom/huawei/sci/SciSSConfCb;->bsfSearchResult:I

    return p0
.end method

.method public static sciCbPostAuthReq(I[BZ)V
    .locals 4
    .param p0, "gbaType"    # I
    .param p1, "naf_id"    # [B
    .param p2, "forceGba"    # Z

    .line 73
    const-string v0, "SciSSConfCb"

    const-string v1, "sciCbPostAuthReq enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuthInfo;->setGbaType(I)V

    .line 76
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/sci/SciSSConfAuthInfo;->setNaf_id([B)V

    .line 80
    if-eqz p2, :cond_0

    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/sci/SciSSConfAuth;->deleteGBAKsnaf(I[B)I

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "SciSSConfCb"

    const-string v1, "deleteGBAKsnaf  failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/huawei/sci/SciSSConfCb;->sciGetKsNaf(I[BI)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    const-string v1, "SciSSConfCb"

    const-string v2, "continueSSConfService with failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v1, ""

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-static {v2, v2, v0, v1, v3}, Lcom/huawei/sci/SciSSConf;->continueSSConfService(IIILjava/lang/String;[B)I

    .line 92
    :cond_1
    return-void
.end method

.method public static sciCbPostBsfAuth([B[B)V
    .locals 4
    .param p0, "rand"    # [B
    .param p1, "autn"    # [B

    .line 210
    const-string v0, "SciSSConfCb"

    const-string v1, "sciCbPostBsfAuth enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    if-nez v0, :cond_0

    .line 214
    const-string v0, "SciSSConfCb"

    const-string v1, "sciCbPostBsfAuth the call back interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 218
    :cond_0
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuthInfo;->setRand([B)V

    .line 220
    new-instance v0, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;-><init>()V

    .line 221
    .local v0, "akaParams":Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;
    invoke-virtual {v0, p1}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->setAuth([B)V

    .line 222
    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->setRand([B)V

    .line 223
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuthInfo;->getGbaType()I

    move-result v1

    .line 225
    .local v1, "gbaType":I
    sget-object v2, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/huawei/sci/SciSSConfAuth;->triggerGBABootstrap(ILcom/huawei/sci/SciSSConfAuth$AkaAuthParams;Ljava/lang/Object;)I

    .line 226
    return-void
.end method

.method public static sciCbPostBsfResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "btid"    # Ljava/lang/String;
    .param p1, "lifeTime"    # Ljava/lang/String;

    .line 236
    const-string v0, "SciSSConfCb"

    const-string v1, "sciCbPostBsfResult enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    if-nez v0, :cond_0

    .line 240
    const-string v0, "SciSSConfCb"

    const-string v1, "sciCbPostBsfResult the call back interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 244
    :cond_0
    new-instance v0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;-><init>()V

    .line 245
    .local v0, "gbaParams":Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;
    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->setBtid(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, p1}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->setLifeTime(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuthInfo;->getRand()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->setRand([B)V

    .line 248
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuthInfo;->getGbaType()I

    move-result v1

    .line 250
    .local v1, "gbaType":I
    sget-object v2, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/huawei/sci/SciSSConfAuth;->triggerGBABpUpdate(ILcom/huawei/sci/SciSSConfAuth$GbaBpParams;Ljava/lang/Object;)I

    .line 251
    return-void
.end method

.method public static sciGetKsNaf(I[BI)Z
    .locals 8
    .param p0, "gbaType"    # I
    .param p1, "naf_id"    # [B
    .param p2, "times"    # I

    .line 103
    const-string v0, "SciSSConfCb"

    const-string v1, "sciGetKsNaf enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 106
    const-string v0, "SciSSConfCb"

    const-string v2, "sciGetKsNaf the call back interface is null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v1

    .line 110
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/sci/SciSSConfAuth;->getGBAKsnaf(I[B)Lcom/huawei/sci/SciSSConfAuth$GbaResult;

    move-result-object v0

    .line 112
    .local v0, "gbaResult":Lcom/huawei/sci/SciSSConfAuth$GbaResult;
    if-nez v0, :cond_1

    .line 114
    const-string v2, "SciSSConfCb"

    const-string v3, "sciGetKsNaf the gbaResult is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v1

    .line 118
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getStatus()I

    move-result v2

    .line 119
    .local v2, "iStatus":I
    const/4 v3, 0x0

    .line 121
    .local v3, "iResult":I
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getKsnaf()[B

    move-result-object v4

    if-nez v4, :cond_2

    .line 123
    const-string v4, "SciSSConfCb"

    const-string v5, "sciGetKsNaf the ks_naf is null."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-array v4, v1, [B

    invoke-virtual {v0, v4}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->setKsnaf([B)V

    .line 127
    :cond_2
    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 152
    const-string v4, "SciSSConfCb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sciGetKsNaf iResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v1

    .line 143
    :pswitch_0
    const/16 v4, 0xa

    if-le p2, v4, :cond_3

    .line 145
    const-string v4, "SciSSConfCb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sciGetKsNaf iResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v1

    .line 150
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/huawei/sci/SciSSConfCb;->waitToGetGBAKsnaf(I[BI)Z

    move-result v1

    return v1

    .line 138
    :pswitch_1
    new-instance v5, Ljava/lang/Thread;

    sget-object v6, Lcom/huawei/sci/SciSSConfCb;->bsfThread:Ljava/lang/Runnable;

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 140
    const-string v5, "SciSSConfCb"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SciSSConfCb.bsfThread.start iResult="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto :goto_0

    .line 134
    :pswitch_2
    invoke-static {p0, p1}, Lcom/huawei/sci/SciSSConfCb;->sciTriggerGBAKsNAF(I[B)Z

    move-result v5

    xor-int/2addr v5, v4

    move v3, v5

    .line 135
    goto :goto_0

    .line 130
    :pswitch_3
    const-string v5, "SciSSConfCb"

    const-string v6, "continueSSConfService with success."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getBtid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getKsnaf()[B

    move-result-object v6

    invoke-static {v1, v1, v2, v5, v6}, Lcom/huawei/sci/SciSSConf;->continueSSConfService(IIILjava/lang/String;[B)I

    move-result v3

    .line 132
    nop

    .line 156
    :goto_0
    if-nez v3, :cond_4

    move v1, v4

    nop

    :cond_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sciSSConfCbPostResult(III)V
    .locals 2
    .param p0, "ssType"    # I
    .param p1, "opType"    # I
    .param p2, "status"    # I

    .line 52
    const-string v0, "SciSSConfCb"

    const-string v1, "sciSSConfCbPostResult enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    invoke-interface {v0, p0, p1, p2}, Lcom/huawei/sci/SciSSConfCb$Callback;->sciSSConfCbPostResult(III)V

    goto :goto_0

    .line 60
    :cond_0
    const-string v0, "SciSSConfCb"

    const-string v1, "sciSSConfCbPostResult the call back interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-void
.end method

.method public static sciTriggerGBAKsNAF(I[B)Z
    .locals 4
    .param p0, "gbaType"    # I
    .param p1, "naf_id"    # [B

    .line 167
    const-string v0, "SciSSConfCb"

    const-string v1, "sciTriggerGBAKsNAF enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuthInfo;->getImpi()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "impi":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 172
    const-string v2, "SciSSConfCb"

    const-string v3, "triggerGBAKsNAF the impi is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v1

    .line 176
    :cond_0
    sget-object v2, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, p1, v0, v3}, Lcom/huawei/sci/SciSSConfAuth;->triggerGBAKsNAF(I[BLjava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public static setCallback(Lcom/huawei/sci/SciSSConfCb$Callback;)V
    .locals 0
    .param p0, "c"    # Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 30
    sput-object p0, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 31
    return-void
.end method

.method public static setSSConfAuth(Lcom/huawei/sci/SciSSConfAuth;)V
    .locals 0
    .param p0, "ssconfAuth"    # Lcom/huawei/sci/SciSSConfAuth;

    .line 40
    sput-object p0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    .line 41
    return-void
.end method

.method private static waitToGetGBAKsnaf(I[BI)Z
    .locals 3
    .param p0, "gbaType"    # I
    .param p1, "naf_id"    # [B
    .param p2, "times"    # I

    .line 188
    const-string v0, "SciSSConfCb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitTogetGBAKsnaf index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SciSSConfCb"

    const-string v2, "waitTogetGBAKsnaf InterruptedException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/huawei/sci/SciSSConfCb;->sciGetKsNaf(I[BI)Z

    move-result v0

    return v0
.end method
