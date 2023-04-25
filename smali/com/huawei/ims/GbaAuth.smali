.class public Lcom/huawei/ims/GbaAuth;
.super Landroid/os/Handler;
.source "GbaAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/GbaAuth$GbaStatus;,
        Lcom/huawei/ims/GbaAuth$GbaResult;,
        Lcom/huawei/ims/GbaAuth$AkaResult;,
        Lcom/huawei/ims/GbaAuth$AuthResp;,
        Lcom/huawei/ims/GbaAuth$KSNAF_STATE;,
        Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;,
        Lcom/huawei/ims/GbaAuth$AuthSyncfail;,
        Lcom/huawei/ims/GbaAuth$AuthRespChallenge;,
        Lcom/huawei/ims/GbaAuth$DataValue;,
        Lcom/huawei/ims/GbaAuth$UiccGbaType;,
        Lcom/huawei/ims/GbaAuth$KsNafElem;,
        Lcom/huawei/ims/GbaAuth$BtidElem;
    }
.end annotation


# static fields
.field public static final AUTH_RESP_FAIL:I = 0x1

.field public static final AUTH_RESP_SUCCESS:I = 0x0

.field public static final AUTH_RESP_SYNC_FAIL:I = 0x2

.field public static final AUTH_RESP_UNSUPPORTED:I = 0x3

.field private static final DEBUG:Z = false

.field public static final DEFAULT_LIFETIME_IN_MINUTE:I = 0x1e

.field public static final EFAIL:I = 0x1

.field public static final EVENT_NOTIFY_BP_UPDATE:I = 0x7

.field public static final EVENT_NOTIFY_GBA_KSNAF:I = 0x8

.field public static final EVENT_NOTIFY_UICC_AUTH:I = 0x6

.field public static final EVENT_REQUEST_GET_UICC_FILE_DONE:I = 0x4

.field public static final EVENT_REQUEST_UICC_AUTH_DONE:I = 0x1

.field public static final EVENT_REQUEST_UICC_BOOTSTRAP_DONE:I = 0x2

.field public static final EVENT_REQUEST_UICC_FILE_UPDATE_DONE:I = 0x3

.field public static final EVENT_REQUEST_UICC_KS_NAF_DONE:I = 0x5

.field public static final GBA_LIFETIME_PROTECT_IN_MINUTE:I = 0x5

.field public static final GBA_ME:I = 0x0

.field public static final GBA_U:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GbaAuth"

.field private static MAX_AUTH_COUNTS:I

.field private static MAX_BOOTSTRAP_COUNTS:I

.field public static final SUCCESS:I


# instance fields
.field private mAsyncSign:Ljava/lang/Object;

.field private mAuthCountsTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBootstrapCountsTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBtidTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/huawei/ims/GbaAuth$BtidElem;",
            ">;"
        }
    .end annotation
.end field

.field private mCm:Lcom/huawei/ims/ImsRIL;

.field private mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

.field private mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

.field private mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

.field private mKsNafTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/huawei/ims/GbaAuth$KsNafElem;",
            ">;"
        }
    .end annotation
.end field

.field private mKsnafEncodedByBase64:Z

.field private mNafIdHexString:Ljava/lang/String;

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    const/4 v0, 0x4

    sput v0, Lcom/huawei/ims/GbaAuth;->MAX_AUTH_COUNTS:I

    .line 199
    sput v0, Lcom/huawei/ims/GbaAuth;->MAX_BOOTSTRAP_COUNTS:I

    return-void
.end method

.method constructor <init>(Lcom/huawei/ims/ImsRIL;Lcom/huawei/ims/HwImsConfigImpl;I)V
    .locals 2
    .param p1, "cm"    # Lcom/huawei/ims/ImsRIL;
    .param p2, "imsConfigImpl"    # Lcom/huawei/ims/HwImsConfigImpl;
    .param p3, "subId"    # I

    .line 145
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCm:Lcom/huawei/ims/ImsRIL;

    .line 186
    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    .line 189
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/ims/GbaAuth;->mKsnafEncodedByBase64:Z

    .line 193
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    .line 194
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    .line 200
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    .line 201
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    .line 204
    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 205
    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    .line 206
    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 210
    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mNafIdHexString:Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lcom/huawei/ims/GbaAuth;->mCm:Lcom/huawei/ims/ImsRIL;

    .line 147
    new-instance v0, Lcom/huawei/ims/GbaAuthUtil;

    invoke-direct {v0, p0}, Lcom/huawei/ims/GbaAuthUtil;-><init>(Lcom/huawei/ims/GbaAuth;)V

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    .line 148
    iput p3, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    .line 149
    if-eqz p2, :cond_0

    .line 150
    invoke-virtual {p2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtKsnafEncodedByBase64()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/GbaAuth;->mKsnafEncodedByBase64:Z

    .line 152
    :cond_0
    return-void
.end method

.method private addAuthTimes(Ljava/lang/String;)V
    .locals 3
    .param p1, "nafId"    # Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 783
    .local v0, "authCounts":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before addAuthTimes, auth Counts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 785
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 786
    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    const-string v1, "after addAuthTimes, authCounts=1"

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 790
    return-void

    .line 793
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 794
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after addAuthTimes, authCounts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method private addBootstrapTimes(Ljava/lang/String;)V
    .locals 3
    .param p1, "nafId"    # Ljava/lang/String;

    .line 830
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 832
    .local v0, "bootstrapCounts":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before addBootstrapTimes, bootstrapCounts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 834
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 835
    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    const-string v1, "after addBootstrapTimes, bootstrapCounts=1"

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 838
    return-void

    .line 841
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 842
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after setBootstrapCounts, bootstrapCounts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method private generateKs([B[B)[B
    .locals 4
    .param p1, "ck"    # [B
    .param p2, "ik"    # [B

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter generateKs ck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ik="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 567
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 569
    .local v0, "ks":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 570
    array-length v1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leave generateKs, ks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 574
    return-object v0
.end method

.method private generateS([B[B[B)[B
    .locals 16
    .param p1, "rand"    # [B
    .param p2, "impi"    # [B
    .param p3, "nafId"    # [B

    move-object/from16 v0, p0

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter generateS rand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", impi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", nafId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    move-object/from16 v3, p3

    invoke-direct {v0, v3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-direct {v0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 596
    const/4 v1, 0x1

    new-array v4, v1, [B

    const/4 v5, 0x0

    aput-byte v1, v4, v5

    move-object v1, v4

    .line 597
    .local v1, "FC":[B
    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    .line 598
    .local v4, "P0":[B
    const/4 v6, 0x2

    new-array v6, v6, [B

    fill-array-data v6, :array_1

    .line 599
    .local v6, "L0":[B
    move-object/from16 v7, p1

    .line 600
    .local v7, "P1":[B
    array-length v8, v7

    int-to-short v8, v8

    invoke-static {v8}, Lcom/huawei/ims/GbaAuth;->shortToBytes(S)[B

    move-result-object v8

    .line 601
    .local v8, "L1":[B
    move-object v9, v2

    .line 602
    .local v9, "P2":[B
    array-length v10, v9

    int-to-short v10, v10

    invoke-static {v10}, Lcom/huawei/ims/GbaAuth;->shortToBytes(S)[B

    move-result-object v10

    .line 603
    .local v10, "L2":[B
    move-object v11, v3

    .line 604
    .local v11, "P3":[B
    array-length v12, v11

    int-to-short v12, v12

    invoke-static {v12}, Lcom/huawei/ims/GbaAuth;->shortToBytes(S)[B

    move-result-object v12

    .line 606
    .local v12, "L3":[B
    array-length v13, v1

    array-length v14, v4

    add-int/2addr v13, v14

    array-length v14, v6

    add-int/2addr v13, v14

    array-length v14, v7

    add-int/2addr v13, v14

    array-length v14, v8

    add-int/2addr v13, v14

    array-length v14, v9

    add-int/2addr v13, v14

    array-length v14, v10

    add-int/2addr v13, v14

    array-length v14, v11

    add-int/2addr v13, v14

    array-length v14, v12

    add-int/2addr v13, v14

    new-array v13, v13, [B

    .line 608
    .local v13, "S":[B
    array-length v14, v1

    invoke-static {v1, v5, v13, v5, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 609
    array-length v14, v1

    .line 610
    .local v14, "len":I
    array-length v15, v4

    invoke-static {v4, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 611
    array-length v15, v4

    add-int/2addr v14, v15

    .line 612
    array-length v15, v6

    invoke-static {v6, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 613
    array-length v15, v6

    add-int/2addr v14, v15

    .line 614
    array-length v15, v7

    invoke-static {v7, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 615
    array-length v15, v7

    add-int/2addr v14, v15

    .line 616
    array-length v15, v8

    invoke-static {v8, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 617
    array-length v15, v8

    add-int/2addr v14, v15

    .line 618
    array-length v15, v9

    invoke-static {v9, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 619
    array-length v15, v9

    add-int/2addr v14, v15

    .line 620
    array-length v15, v10

    invoke-static {v10, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 621
    array-length v15, v10

    add-int/2addr v14, v15

    .line 622
    array-length v15, v11

    invoke-static {v11, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 623
    array-length v15, v11

    add-int/2addr v14, v15

    .line 624
    array-length v15, v12

    invoke-static {v12, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 626
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "leave generateS, len="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v13

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", s="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 627
    return-object v13

    nop

    :array_0
    .array-data 1
        0x67t
        0x62t
        0x61t
        0x2dt
        0x6dt
        0x65t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x6t
    .end array-data
.end method

.method private getNafIdViaBtid([B)Ljava/lang/String;
    .locals 4
    .param p1, "btid"    # [B

    .line 874
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 875
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/GbaAuth$KsNafElem;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/GbaAuth$KsNafElem;

    .line 877
    .local v2, "value":Lcom/huawei/ims/GbaAuth$KsNafElem;
    iget-object v3, v2, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBTid:[B

    invoke-direct {p0, v3, p1}, Lcom/huawei/ims/GbaAuth;->isEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 878
    iget-object v3, v2, Lcom/huawei/ims/GbaAuth$KsNafElem;->mNafId:[B

    .line 880
    .local v3, "nafId":[B
    if-eqz v3, :cond_0

    .line 881
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 884
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/GbaAuth$KsNafElem;>;"
    .end local v2    # "value":Lcom/huawei/ims/GbaAuth$KsNafElem;
    .end local v3    # "nafId":[B
    :cond_0
    goto :goto_0

    .line 886
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleAuthExpire(Ljava/lang/String;)V
    .locals 1
    .param p1, "nafId"    # Ljava/lang/String;

    .line 770
    const-string v0, "enter handleAuthExpire"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 773
    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->removeKsNaf(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mNafIdHexString:Ljava/lang/String;

    .line 778
    return-void
.end method

.method private handleBootstrapExpire(Ljava/lang/String;)V
    .locals 1
    .param p1, "nafId"    # Ljava/lang/String;

    .line 822
    const-string v0, "enter handleBootstrapExpire"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 825
    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->removeBtid(Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    return-void
.end method

.method private handleTimeout()V
    .locals 7

    .line 917
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 919
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 920
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 922
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 923
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 925
    .local v3, "value":Lcom/huawei/ims/GbaAuth$BtidElem;
    iget-object v4, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mBTid:[B

    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->getNafIdViaBtid([B)Ljava/lang/String;

    move-result-object v4

    .line 927
    .local v4, "nafId":Ljava/lang/String;
    iget-object v5, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    if-nez v5, :cond_0

    .line 928
    const-string v5, "ks is null, AKA is fail"

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 930
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter handleTimeout, value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", lifetime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    .line 932
    invoke-static {v2, v6}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mBTid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mBTid:[B

    .line 933
    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mKs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    .line 934
    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 930
    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 937
    :goto_1
    iget-object v5, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    if-nez v5, :cond_1

    .line 938
    goto :goto_0

    .line 943
    :cond_1
    iget-boolean v5, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mbUsed:Z

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->isTimeout(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 946
    const-string v5, "time is up, remove it"

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 949
    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->resetAuthCounts(Ljava/lang/String;)V

    .line 952
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 954
    iget-object v5, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mBTid:[B

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->removeKsNaf([B)V

    .line 955
    goto/16 :goto_0

    .line 959
    :cond_2
    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->resetBootstrapCounts(Ljava/lang/String;)V

    .line 960
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Lcom/huawei/ims/GbaAuth$BtidElem;
    .end local v4    # "nafId":Ljava/lang/String;
    goto/16 :goto_0

    .line 961
    :cond_3
    return-void
.end method

.method private declared-synchronized handleUiccAuthDone(Lcom/huawei/ims/GbaAuth$AuthResp;)V
    .locals 5
    .param p1, "resp"    # Lcom/huawei/ims/GbaAuth$AuthResp;

    monitor-enter p0

    .line 661
    :try_start_0
    new-instance v0, Lcom/huawei/ims/GbaAuth$AkaResult;

    invoke-direct {v0}, Lcom/huawei/ims/GbaAuth$AkaResult;-><init>()V

    .line 663
    .local v0, "aka":Lcom/huawei/ims/GbaAuth$AkaResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUiccAuthDone mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 665
    iget v1, p1, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 700
    sget-object v1, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->AKA_ALGORITHM_FAILURE:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    iput-object v1, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mStatus:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    .line 702
    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    goto/16 :goto_0

    .line 679
    :cond_0
    iget-object v1, p1, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/GbaAuth$AuthSyncfail;

    .line 681
    .local v1, "as":Lcom/huawei/ims/GbaAuth$AuthSyncfail;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUTH_RESP_SYNC_FAIL auts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v4, v4, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 683
    sget-object v3, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->AKA_ALGORITHM_SYNC_FAILURE:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    iput-object v3, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mStatus:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    .line 684
    iget-object v3, v1, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iput-object v3, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 687
    iget-boolean v3, p0, Lcom/huawei/ims/GbaAuth;->mKsnafEncodedByBase64:Z

    if-eqz v3, :cond_1

    .line 688
    iget-object v3, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v4, v1, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v4, v4, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-static {v4, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    iput-object v2, v3, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 690
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auts, base64="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/ims/GbaAuth;->mKsnafEncodedByBase64:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v3, v3, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 694
    goto :goto_0

    .line 668
    .end local v1    # "as":Lcom/huawei/ims/GbaAuth$AuthSyncfail;
    :cond_2
    iget-object v1, p1, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;

    .line 671
    .local v1, "ch":Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v3, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v3, v3, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    iget-object v4, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v4, v4, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-direct {p0, v3, v4}, Lcom/huawei/ims/GbaAuth;->generateKs([B[B)[B

    move-result-object v3

    iput-object v3, v2, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v3, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v3, v3, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 673
    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 674
    sget-object v2, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->AKA_ALGORITHM_SUCCESS:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    iput-object v2, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mStatus:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    .line 675
    iget-object v2, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iput-object v2, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 677
    .end local v1    # "ch":Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
    nop

    .line 706
    :goto_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 707
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/huawei/ims/GbaAuth;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    monitor-exit p0

    return-void

    .line 660
    .end local v0    # "aka":Lcom/huawei/ims/GbaAuth$AkaResult;
    .end local v1    # "msg":Landroid/os/Message;
    .end local p1    # "resp":Lcom/huawei/ims/GbaAuth$AuthResp;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    throw p1
.end method

.method private hiddenPrivacyByteInfo([B)Ljava/lang/String;
    .locals 1
    .param p1, "array"    # [B

    .line 984
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hmacSha256([B[B)[B
    .locals 6
    .param p1, "key"    # [B
    .param p2, "data"    # [B

    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, "mac":Ljavax/crypto/Mac;
    const/4 v1, 0x0

    .line 640
    .local v1, "sKey":Ljavax/crypto/SecretKey;
    const/4 v2, 0x0

    .line 643
    .local v2, "hmacsha256":[B
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter hmacSha256 key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 643
    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 646
    const-string v3, "HMAC-SHA256"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    move-object v0, v3

    .line 647
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "HMAC-SHA256"

    invoke-direct {v3, p1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v1, v3

    .line 649
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 650
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    move-object v2, v3

    .line 652
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leave hmacSha256, ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    goto :goto_0

    .line 653
    :catch_0
    move-exception v3

    .line 654
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hmacSha256 Exception e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 657
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v2
.end method

.method private isAuthExpire(Ljava/lang/String;)Z
    .locals 4
    .param p1, "nafId"    # Ljava/lang/String;

    .line 746
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 747
    const-string v1, "nafId is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 749
    return v0

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 754
    .local v1, "authCounts":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAuthExpire, authCounts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 756
    if-nez v1, :cond_1

    .line 757
    return v0

    .line 760
    :cond_1
    sget v2, Lcom/huawei/ims/GbaAuth;->MAX_AUTH_COUNTS:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 761
    const-string v0, "Auth Expire!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 763
    const/4 v0, 0x1

    return v0

    .line 766
    :cond_2
    return v0
.end method

.method private isBootstrapExpire(Ljava/lang/String;)Z
    .locals 4
    .param p1, "nafId"    # Ljava/lang/String;

    .line 800
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 801
    const-string v1, "nafId is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 802
    return v0

    .line 805
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 807
    .local v1, "bootstrapCounts":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBootstrapExpire, bootstrapCounts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 809
    if-nez v1, :cond_1

    .line 810
    return v0

    .line 813
    :cond_1
    sget v2, Lcom/huawei/ims/GbaAuth;->MAX_BOOTSTRAP_COUNTS:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 814
    const-string v0, "Bootstrap Expire!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 815
    const/4 v0, 0x1

    return v0

    .line 818
    :cond_2
    return v0
.end method

.method private isBusy()Z
    .locals 2

    .line 899
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BP_UPDATE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isEqual([B[B)Z
    .locals 1
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .line 980
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private isTimeout(Ljava/util/Date;)Z
    .locals 3
    .param p1, "lifeTime"    # Ljava/util/Date;

    .line 905
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 907
    .local v0, "currDate":Ljava/util/Date;
    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTimeout, currDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lifeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 909
    const/4 v1, 0x1

    return v1

    .line 912
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GbaAuth["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GbaAuth["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[error] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GbaAuth["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void
.end method

.method private declared-synchronized notifyBpUpdate(Lcom/huawei/ims/GbaAuth$BtidElem;)V
    .locals 2
    .param p1, "btid"    # Lcom/huawei/ims/GbaAuth$BtidElem;

    monitor-enter p0

    .line 720
    :try_start_0
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-ne v0, v1, :cond_0

    .line 721
    const-string v0, "Gba status is null, notifyBpUpdate stop"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    monitor-exit p0

    return-void

    .line 725
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/ims/GbaAuth$BtidElem;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    monitor-exit p0

    return-void

    .line 719
    .end local p1    # "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    throw p1
.end method

.method private notifyKsNaf(Lcom/huawei/ims/GbaAuth$KsNafElem;)V
    .locals 2
    .param p1, "ksNaf"    # Lcom/huawei/ims/GbaAuth$KsNafElem;

    .line 729
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-ne v0, v1, :cond_0

    .line 730
    const-string v0, "Gba status is null, notifyKsNaf stop"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 731
    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/ims/GbaAuth$KsNafElem;Ljava/lang/Object;)V

    .line 735
    return-void
.end method

.method private notifyUiccAuth(Lcom/huawei/ims/GbaAuth$AkaResult;)V
    .locals 2
    .param p1, "aka"    # Lcom/huawei/ims/GbaAuth$AkaResult;

    .line 711
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-ne v0, v1, :cond_0

    .line 712
    const-string v0, "Gba status is null, notifyUiccAuth stop"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 713
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/ims/GbaAuth$AkaResult;Ljava/lang/Object;)V

    .line 717
    return-void
.end method

.method private removeBtid(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 965
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    return-void
.end method

.method private removeKsNaf(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 969
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    return-void
.end method

.method private removeKsNaf([B)V
    .locals 1
    .param p1, "btid"    # [B

    .line 974
    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->getNafIdViaBtid([B)Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "nafId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->removeKsNaf(Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method private resetAuthCounts(Ljava/lang/String;)V
    .locals 1
    .param p1, "nafId"    # Ljava/lang/String;

    .line 848
    const-string v0, "enter resetAuthCounts"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 850
    if-nez p1, :cond_0

    .line 851
    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    return-void
.end method

.method private resetBootstrapCounts(Ljava/lang/String;)V
    .locals 1
    .param p1, "nafId"    # Ljava/lang/String;

    .line 864
    const-string v0, "enter resetBootstrapCounts"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 866
    if-nez p1, :cond_0

    .line 867
    return-void

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    return-void
.end method

.method private restoreBtid(Ljava/lang/String;Lcom/huawei/ims/GbaAuth$BtidElem;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "btid"    # Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 632
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    return-void
.end method

.method private static shortToBytes(S)[B
    .locals 3
    .param p0, "n"    # S

    .line 554
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 556
    .local v0, "b":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 557
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 559
    return-object v0
.end method

.method private transByteArrayToHexString([B)Ljava/lang/String;
    .locals 1
    .param p1, "array"    # [B

    .line 890
    if-nez p1, :cond_0

    .line 891
    const/4 v0, 0x0

    return-object v0

    .line 894
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 543
    :try_start_0
    const-string v0, "enter clear"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 545
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 546
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 548
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 549
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    monitor-exit p0

    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    throw v0
.end method

.method public clearAuthCounts()V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mNafIdHexString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->resetAuthCounts(Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method declared-synchronized deleteGBAKsnaf(I[B)I
    .locals 5
    .param p1, "gbaType"    # I
    .param p2, "nafId"    # [B

    monitor-enter p0

    .line 1007
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter deleteGBAKsnaf, gbaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nafId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 1008
    const/4 v0, 0x0

    .line 1009
    .local v0, "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->transByteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, "nafIdHexString":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1011
    const-string v3, "nafId is null, deleteGBAKsnaf fail"

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    monitor-exit p0

    return v2

    .line 1015
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/GbaAuth$KsNafElem;

    move-object v0, v3

    .line 1016
    if-nez v0, :cond_1

    .line 1017
    const-string v3, "nafId is not in mKsNafTable, deleteGBAKsnaf fail"

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    monitor-exit p0

    return v2

    .line 1020
    :cond_1
    :try_start_2
    iget-object v3, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    if-eqz v3, :cond_3

    .line 1021
    iget v2, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;->mType:I

    if-eq v2, p1, :cond_2

    .line 1023
    const-string v2, "gba type is not equal in ksnaf, ingored"

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 1025
    :cond_2
    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->resetAuthCounts(Ljava/lang/String;)V

    .line 1026
    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->removeKsNaf(Ljava/lang/String;)V

    .line 1027
    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->removeBtid(Ljava/lang/String;)V

    .line 1028
    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->resetBootstrapCounts(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p0}, Lcom/huawei/ims/GbaAuth;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1030
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 1032
    :cond_3
    monitor-exit p0

    return v2

    .line 1006
    .end local v0    # "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    .end local v1    # "nafIdHexString":Ljava/lang/String;
    .end local p1    # "gbaType":I
    .end local p2    # "nafId":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    throw p1
.end method

.method declared-synchronized getGBAKsnaf(I[B)Lcom/huawei/ims/GbaAuth$GbaResult;
    .locals 8
    .param p1, "gbaType"    # I
    .param p2, "nafId"    # [B

    monitor-enter p0

    .line 437
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter getGBAKsnaf, gbaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nafId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    const/4 v1, 0x0

    .line 440
    .local v1, "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    new-instance v2, Lcom/huawei/ims/GbaAuth$GbaResult;

    invoke-direct {v2}, Lcom/huawei/ims/GbaAuth$GbaResult;-><init>()V

    .line 443
    .local v2, "gabRet":Lcom/huawei/ims/GbaAuth$GbaResult;
    invoke-direct {p0}, Lcom/huawei/ims/GbaAuth;->handleTimeout()V

    .line 446
    invoke-direct {p0}, Lcom/huawei/ims/GbaAuth;->isBusy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    sget-object v3, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_IS_COMPUTING:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    invoke-virtual {v3}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->getValue()I

    move-result v3

    iput v3, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    monitor-exit p0

    return-object v2

    .line 452
    :cond_0
    if-eqz p2, :cond_1

    .line 453
    :try_start_1
    iget-object v3, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/GbaAuth$KsNafElem;

    move-object v0, v3

    .line 457
    :cond_1
    if-nez v0, :cond_2

    .line 458
    sget-object v3, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    invoke-virtual {v3}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->getValue()I

    move-result v3

    iput v3, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    monitor-exit p0

    return-object v2

    .line 463
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBTid:[B

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/GbaAuth$BtidElem;

    move-object v1, v3

    .line 467
    iget-object v3, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    if-eqz v3, :cond_6

    .line 468
    iget v3, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;->mType:I

    if-eq v3, p1, :cond_3

    .line 469
    const-string v3, "gba type is not equal in ksnaf, ingored"

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 473
    :cond_3
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->transByteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, "nafIdHexString":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->isAuthExpire(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 476
    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->handleAuthExpire(Ljava/lang/String;)V

    .line 477
    sget-object v4, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    invoke-virtual {v4}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->getValue()I

    move-result v4

    iput v4, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 478
    monitor-exit p0

    return-object v2

    .line 481
    :cond_4
    :try_start_3
    iput-object v3, p0, Lcom/huawei/ims/GbaAuth;->mNafIdHexString:Ljava/lang/String;

    .line 483
    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->addAuthTimes(Ljava/lang/String;)V

    .line 486
    sget-object v4, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_VALID:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    invoke-virtual {v4}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->getValue()I

    move-result v4

    iput v4, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->status:I

    .line 487
    iget-object v4, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    iput-object v4, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->ksnaf:[B

    .line 492
    if-eqz v1, :cond_5

    .line 493
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/huawei/ims/GbaAuth$BtidElem;->mbUsed:Z

    .line 496
    :cond_5
    const-string v4, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 499
    .local v4, "sbtid":Ljava/lang/String;
    :try_start_4
    new-instance v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBTid:[B

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v5

    .line 502
    goto :goto_0

    .line 500
    :catch_0
    move-exception v5

    .line 501
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CString to UTF-8 fail, e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 503
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    iput-object v4, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->btid:Ljava/lang/String;

    .line 505
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ksnaf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", btid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBTid:[B

    .line 506
    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", nafid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;->mNafId:[B

    .line 507
    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 505
    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 509
    monitor-exit p0

    return-object v2

    .line 513
    .end local v3    # "nafIdHexString":Ljava/lang/String;
    .end local v4    # "sbtid":Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_8

    :try_start_6
    iget-object v3, v1, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    if-eqz v3, :cond_8

    .line 514
    iget v3, v1, Lcom/huawei/ims/GbaAuth$BtidElem;->mType:I

    if-eq v3, p1, :cond_7

    .line 515
    const-string v3, "gba type is not equal in btid, ingored"

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 517
    :cond_7
    sget-object v3, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_NEED_DERIVATION:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    invoke-virtual {v3}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->getValue()I

    move-result v3

    iput v3, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->status:I

    .line 518
    const-string v3, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 520
    .local v3, "sbtid":Ljava/lang/String;
    :try_start_7
    new-instance v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/huawei/ims/GbaAuth$BtidElem;->mBTid:[B

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v4

    .line 523
    goto :goto_1

    .line 521
    :catch_1
    move-exception v4

    .line 522
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CString to UTF-8 fail, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 524
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    iput-object v3, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->btid:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 525
    monitor-exit p0

    return-object v2

    .line 529
    .end local v3    # "sbtid":Ljava/lang/String;
    :cond_8
    :try_start_9
    sget-object v3, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    invoke-virtual {v3}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->getValue()I

    move-result v3

    iput v3, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->status:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 531
    monitor-exit p0

    return-object v2

    .line 436
    .end local v0    # "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    .end local v1    # "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    .end local v2    # "gabRet":Lcom/huawei/ims/GbaAuth$GbaResult;
    .end local p1    # "gbaType":I
    .end local p2    # "nafId":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    throw p1
.end method

.method declared-synchronized getGbaAuthUtil()Lcom/huawei/ims/GbaAuthUtil;
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 250
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 247
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/GbaAuth$KsNafElem;

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->notifyKsNaf(Lcom/huawei/ims/GbaAuth$KsNafElem;)V

    .line 248
    goto :goto_1

    .line 244
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/GbaAuth$BtidElem;

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->notifyBpUpdate(Lcom/huawei/ims/GbaAuth$BtidElem;)V

    .line 245
    goto :goto_1

    .line 241
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/GbaAuth$AkaResult;

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->notifyUiccAuth(Lcom/huawei/ims/GbaAuth$AkaResult;)V

    .line 242
    goto :goto_1

    .line 239
    :pswitch_3
    goto :goto_1

    .line 237
    :pswitch_4
    goto :goto_1

    .line 235
    :pswitch_5
    goto :goto_1

    .line 232
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/GbaAuth$AuthResp;

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->handleUiccAuthDone(Lcom/huawei/ims/GbaAuth$AuthResp;)V

    .line 233
    goto :goto_1

    .line 219
    :pswitch_7
    const/4 v0, 0x0

    .line 220
    .local v0, "resp":Lcom/huawei/ims/GbaAuth$AuthResp;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 221
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/huawei/ims/GbaAuth$AuthResp;

    goto :goto_0

    .line 224
    :cond_0
    const-string v2, "EVENT_REQUEST_UICC_AUTH_DONE err"

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 225
    new-instance v2, Lcom/huawei/ims/GbaAuth$AuthResp;

    invoke-direct {v2}, Lcom/huawei/ims/GbaAuth$AuthResp;-><init>()V

    move-object v0, v2

    .line 226
    const/4 v2, 0x1

    iput v2, v0, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    .line 228
    :goto_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->handleUiccAuthDone(Lcom/huawei/ims/GbaAuth$AuthResp;)V

    .line 230
    .end local v0    # "resp":Lcom/huawei/ims/GbaAuth$AuthResp;
    .end local v1    # "ar":Landroid/os/AsyncResult;
    nop

    .line 253
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 537
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset GBA to null, previous GBA status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 538
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    monitor-exit p0

    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    throw v0
.end method

.method declared-synchronized stringUtf8ToBytes(Ljava/lang/String;)[B
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    monitor-enter p0

    .line 162
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 163
    monitor-exit p0

    return-object v0

    .line 166
    :cond_0
    nop

    .line 169
    .local v0, "ret":[B
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 172
    goto :goto_0

    .line 161
    .end local v0    # "ret":[B
    .end local p1    # "str":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 170
    .restart local v0    # "ret":[B
    .restart local p1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stringUtf8ToBytes Exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 161
    .end local v0    # "ret":[B
    .end local p1    # "str":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    throw p1
.end method

.method declared-synchronized triggerGBABootstrap(I[B[BLjava/lang/Object;)I
    .locals 3
    .param p1, "gbaType"    # I
    .param p2, "rand"    # [B
    .param p3, "auth"    # [B
    .param p4, "asyncSign"    # Ljava/lang/Object;

    monitor-enter p0

    .line 256
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter triggerGBABootstrap gbaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", asyncSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-direct {p0, p3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 262
    iput-object p4, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    .line 264
    new-instance v0, Lcom/huawei/ims/GbaAuth$BtidElem;

    invoke-direct {v0}, Lcom/huawei/ims/GbaAuth$BtidElem;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 265
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput p1, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mType:I

    .line 268
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mbUsed:Z

    .line 271
    if-nez p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCm:Lcom/huawei/ims/ImsRIL;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p4}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p2, p3, v2}, Lcom/huawei/ims/ImsRIL;->requestUiccAuth([B[BLandroid/os/Message;)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCm:Lcom/huawei/ims/ImsRIL;

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p4}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p2, p3, v2}, Lcom/huawei/ims/ImsRIL;->requestUiccGbaBootstrap([B[BLandroid/os/Message;)V

    .line 281
    :goto_0
    const-string v0, "leave triggerGBABootstrap"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return v1

    .line 255
    .end local p1    # "gbaType":I
    .end local p2    # "rand":[B
    .end local p3    # "auth":[B
    .end local p4    # "asyncSign":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    throw p1
.end method

.method declared-synchronized triggerGBABpUpdate(I[B[BLjava/lang/String;Ljava/lang/Object;)I
    .locals 4
    .param p1, "gbaType"    # I
    .param p2, "rand"    # [B
    .param p3, "btid"    # [B
    .param p4, "lifetime"    # Ljava/lang/String;
    .param p5, "asyncSign"    # Ljava/lang/Object;

    monitor-enter p0

    .line 287
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter triggerGBABpUpdate, gbaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lifetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", asyncSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", btid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-direct {p0, p3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BP_UPDATE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 293
    iput-object p5, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput p1, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mType:I

    .line 296
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput-object p3, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mBTid:[B

    .line 297
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput-object p2, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mRand:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "df":Ljava/text/SimpleDateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 302
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    invoke-virtual {v0, p4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    .line 309
    invoke-virtual {v0, p4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 310
    .local v1, "expectLifeTime":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v1, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 311
    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->isTimeout(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v2, v2, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    iget-object v3, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v3, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v2, v3}, Ljava/util/Date;->setMinutes(I)V

    goto :goto_0

    .line 314
    :cond_0
    const-string v2, "enter triggerGBABpUpdate, expect lifeTime is timeout, use the lifetime from nework"

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    .end local v1    # "expectLifeTime":Ljava/util/Date;
    :goto_0
    goto :goto_1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[error] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v0, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 327
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 328
    .local v0, "currDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 329
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput-object v0, v1, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not parse the lifetime. set lifetime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v2, v2, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 333
    .end local v0    # "currDate":Ljava/util/Date;
    :cond_1
    if-nez p1, :cond_2

    .line 335
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/GbaAuth;->restoreBtid(Ljava/lang/String;Lcom/huawei/ims/GbaAuth$BtidElem;)V

    .line 337
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 338
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/GbaAuth;->sendMessage(Landroid/os/Message;)Z

    .line 340
    const-string v1, "leave triggerGBABpUpdate"

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 349
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    :try_start_3
    const-string v0, "leave triggerGBABpUpdate"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 350
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 286
    .end local p1    # "gbaType":I
    .end local p2    # "rand":[B
    .end local p3    # "btid":[B
    .end local p4    # "lifetime":Ljava/lang/String;
    .end local p5    # "asyncSign":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    throw p1
.end method

.method declared-synchronized triggerGBAKsNAF(I[B[BLjava/lang/Object;)I
    .locals 8
    .param p1, "gbaType"    # I
    .param p2, "nafId"    # [B
    .param p3, "impi"    # [B
    .param p4, "asyncSign"    # Ljava/lang/Object;

    monitor-enter p0

    .line 355
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter triggerGBAKsNAF, gbaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", asyncSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nafId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", impi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-direct {p0, p3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->transByteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "nafIdHexString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->isBootstrapExpire(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 366
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->handleBootstrapExpire(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit p0

    return v2

    .line 370
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->addBootstrapTimes(Ljava/lang/String;)V

    .line 373
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "naf":Ljava/lang/String;
    sget-object v3, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v3, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 375
    iput-object p4, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    .line 377
    if-nez p1, :cond_5

    .line 379
    iget-object v3, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/GbaAuth$KsNafElem;

    .line 382
    .local v3, "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    if-nez v3, :cond_1

    .line 383
    new-instance v4, Lcom/huawei/ims/GbaAuth$KsNafElem;

    invoke-direct {v4}, Lcom/huawei/ims/GbaAuth$KsNafElem;-><init>()V

    move-object v3, v4

    .line 384
    iput p1, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mType:I

    .line 385
    iput-object p2, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mNafId:[B

    .line 386
    iget-object v4, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v4, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mBTid:[B

    iput-object v4, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBTid:[B

    .line 389
    :cond_1
    sget-object v4, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DONE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v4, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 393
    iget-object v4, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v5, v5, Lcom/huawei/ims/GbaAuth$BtidElem;->mBTid:[B

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 395
    .local v4, "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    if-nez v4, :cond_2

    .line 399
    const-string v5, "leave triggerGBAKsNAF, btid get btid null"

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    monitor-exit p0

    return v2

    .line 404
    :cond_2
    :try_start_2
    iget-object v5, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    iget-object v6, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mRand:[B

    iget-object v7, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mNafId:[B

    invoke-direct {p0, v6, p3, v7}, Lcom/huawei/ims/GbaAuth;->generateS([B[B[B)[B

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/huawei/ims/GbaAuth;->hmacSha256([B[B)[B

    move-result-object v5

    .line 407
    .local v5, "ksnaf":[B
    if-nez v5, :cond_3

    .line 408
    const-string v6, "ksnaf is null, AKA is failed"

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    monitor-exit p0

    return v2

    .line 412
    :cond_3
    :try_start_3
    iget-boolean v2, p0, Lcom/huawei/ims/GbaAuth;->mKsnafEncodedByBase64:Z

    if-eqz v2, :cond_4

    .line 413
    const/4 v2, 0x2

    invoke-static {v5, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    iput-object v2, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    goto :goto_0

    .line 415
    :cond_4
    iput-object v5, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    .line 418
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ksnaf, base64="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/huawei/ims/GbaAuth;->mKsnafEncodedByBase64:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 421
    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 424
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {p0, v2}, Lcom/huawei/ims/GbaAuth;->sendMessage(Landroid/os/Message;)Z

    .line 426
    const-string v6, "leave triggerGBAKsNAF"

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 427
    const/4 v6, 0x0

    monitor-exit p0

    return v6

    .line 431
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    .end local v4    # "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    .end local v5    # "ksnaf":[B
    :cond_5
    :try_start_4
    sget-object v3, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v3, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 432
    monitor-exit p0

    return v2

    .line 354
    .end local v0    # "nafIdHexString":Ljava/lang/String;
    .end local v1    # "naf":Ljava/lang/String;
    .end local p1    # "gbaType":I
    .end local p2    # "nafId":[B
    .end local p3    # "impi":[B
    .end local p4    # "asyncSign":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    throw p1
.end method
