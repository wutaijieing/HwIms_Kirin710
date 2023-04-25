.class Lcom/huawei/ims/ImsRILRequest;
.super Ljava/lang/Object;
.source "ImsRIL.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RILJ_IMS"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:I

.field private static sPool:Lcom/huawei/ims/ImsRILRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mClientId:Ljava/lang/String;

.field mNext:Lcom/huawei/ims/ImsRILRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mWakeLockType:I

.field mWorkSource:Landroid/os/WorkSource;

.field mp:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 119
    const/4 v0, 0x0

    sput v0, Lcom/huawei/ims/ImsRILRequest;->sNextSerial:I

    .line 120
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/huawei/ims/ImsRILRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 121
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/huawei/ims/ImsRILRequest;->sPoolSync:Ljava/lang/Object;

    .line 122
    const/4 v1, 0x0

    sput-object v1, Lcom/huawei/ims/ImsRILRequest;->sPool:Lcom/huawei/ims/ImsRILRequest;

    .line 123
    sput v0, Lcom/huawei/ims/ImsRILRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/huawei/ims/ImsRILRequest;
    .locals 5
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    sget-object v1, Lcom/huawei/ims/ImsRILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    sget-object v2, Lcom/huawei/ims/ImsRILRequest;->sPool:Lcom/huawei/ims/ImsRILRequest;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 152
    sget-object v2, Lcom/huawei/ims/ImsRILRequest;->sPool:Lcom/huawei/ims/ImsRILRequest;

    move-object v0, v2

    .line 153
    iget-object v2, v0, Lcom/huawei/ims/ImsRILRequest;->mNext:Lcom/huawei/ims/ImsRILRequest;

    sput-object v2, Lcom/huawei/ims/ImsRILRequest;->sPool:Lcom/huawei/ims/ImsRILRequest;

    .line 154
    iput-object v3, v0, Lcom/huawei/ims/ImsRILRequest;->mNext:Lcom/huawei/ims/ImsRILRequest;

    .line 155
    sget v2, Lcom/huawei/ims/ImsRILRequest;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/huawei/ims/ImsRILRequest;->sPoolSize:I

    .line 157
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    if-nez v0, :cond_1

    .line 160
    new-instance v1, Lcom/huawei/ims/ImsRILRequest;

    invoke-direct {v1}, Lcom/huawei/ims/ImsRILRequest;-><init>()V

    move-object v0, v1

    .line 163
    .end local v0    # "rr":Lcom/huawei/ims/ImsRILRequest;
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    :cond_1
    move-object v2, v0

    sget-object v4, Lcom/huawei/ims/ImsRILRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v4

    .line 164
    :try_start_1
    sget v0, Lcom/huawei/ims/ImsRILRequest;->sNextSerial:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/huawei/ims/ImsRILRequest;->sNextSerial:I

    iput v0, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    .line 165
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    iput p0, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    .line 167
    iput-object p1, v2, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, v2, Lcom/huawei/ims/ImsRILRequest;->mp:Landroid/os/Parcel;

    .line 170
    const/4 v0, -0x1

    iput v0, v2, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    .line 171
    iput-object v3, v2, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 174
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 175
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Message target must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_3
    :goto_0
    iget-object v0, v2, Lcom/huawei/ims/ImsRILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, v2, Lcom/huawei/ims/ImsRILRequest;->mp:Landroid/os/Parcel;

    iget v1, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    return-object v2

    .line 165
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 157
    .end local v2    # "rr":Lcom/huawei/ims/ImsRILRequest;
    .restart local v0    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method static obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;
    .locals 4
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    invoke-static {p0, p1}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 188
    if-eqz p2, :cond_0

    .line 189
    iput-object p2, v0, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/ImsRILRequest;->mClientId:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_0
    const-string v1, "RILJ_IMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null workSource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return-object v0
.end method

.method static resetSerial()V
    .locals 2

    .line 217
    sget-object v0, Lcom/huawei/ims/ImsRILRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/huawei/ims/ImsRILRequest;->sNextSerial:I

    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 4
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 245
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 247
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    const-string v1, "RILJ_IMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    .line 248
    invoke-static {v3}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 253
    iget-object v1, p0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsRILRequest;->mp:Landroid/os/Parcel;

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/huawei/ims/ImsRILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/ImsRILRequest;->mp:Landroid/os/Parcel;

    .line 260
    :cond_1
    return-void
.end method

.method release()V
    .locals 3

    .line 203
    sget-object v0, Lcom/huawei/ims/ImsRILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    sget v1, Lcom/huawei/ims/ImsRILRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 205
    sget-object v1, Lcom/huawei/ims/ImsRILRequest;->sPool:Lcom/huawei/ims/ImsRILRequest;

    iput-object v1, p0, Lcom/huawei/ims/ImsRILRequest;->mNext:Lcom/huawei/ims/ImsRILRequest;

    .line 206
    sput-object p0, Lcom/huawei/ims/ImsRILRequest;->sPool:Lcom/huawei/ims/ImsRILRequest;

    .line 207
    sget v1, Lcom/huawei/ims/ImsRILRequest;->sPoolSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/huawei/ims/ImsRILRequest;->sPoolSize:I

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    .line 210
    :cond_0
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 227
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "sn":Ljava/lang/String;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "s":I
    :goto_0
    rsub-int/lit8 v4, v3, 0x4

    if-ge v2, v4, :cond_0

    .line 232
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
