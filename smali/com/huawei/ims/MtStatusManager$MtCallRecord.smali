.class Lcom/huawei/ims/MtStatusManager$MtCallRecord;
.super Ljava/lang/Object;
.source "MtStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/MtStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MtCallRecord"
.end annotation


# static fields
.field public static final STATE_CANCELLED:I = 0x4

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_INVITED:I = 0x2

.field public static final STATE_RANG:I = 0x3


# instance fields
.field private mInviteTime:J

.field private mRingOrHangTime:J

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 337
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    .line 338
    iput-wide v1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    .line 339
    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 340
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "st"    # I

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 343
    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    if-ne v3, p1, :cond_0

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    .line 345
    iput v3, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    goto :goto_0

    .line 347
    :cond_0
    iput-wide v1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    .line 348
    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 350
    :goto_0
    iput-wide v1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    .line 351
    return-void
.end method

.method static synthetic access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J
    .locals 2
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 326
    iget-wide v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    .param p1, "x1"    # J

    .line 326
    iput-wide p1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J
    .locals 2
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 326
    iget-wide v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    .param p1, "x1"    # J

    .line 326
    iput-wide p1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 326
    iget v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    return v0
.end method


# virtual methods
.method public setHang(J)V
    .locals 1
    .param p1, "time"    # J

    .line 359
    iput-wide p1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    .line 360
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 361
    return-void
.end method

.method public setRing(J)V
    .locals 1
    .param p1, "time"    # J

    .line 354
    iput-wide p1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    .line 355
    const/4 v0, 0x3

    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 356
    return-void
.end method
