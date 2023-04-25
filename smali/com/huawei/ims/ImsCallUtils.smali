.class public Lcom/huawei/ims/ImsCallUtils;
.super Ljava/lang/Object;
.source "ImsCallUtils.java"


# static fields
.field public static final BUSY_REJECT_CAUSE:I = 0x0

.field private static final DEVICE_TYPE_TABLET:Ljava/lang/String; = "tablet"

.field private static final HW_CDMA_VOLTE_ISIM:Ljava/lang/String; = "ro.config.hw_cdma_volte_isim"

.field private static final HW_VTLTE_ON:Ljava/lang/String; = "ro.config.hw_vtlte_on"

.field public static final IMS_DOMAIN_LTE:I = 0x0

.field public static final IMS_DOMAIN_UNKNOWN:I = 0x2

.field public static final IMS_DOMAIN_WIFI:I = 0x1

.field public static final IS_DUAL_IMS_AVAILABLE:Z

.field public static final IS_TABLET:Z

.field private static final IS_VILTE_ENHANCEMENT_SUPPORTED:Z

.field private static final IS_VOWIFI_PROP__ON:Z

.field public static final NO_REJECT_CAUSE:I = -0x1

.field private static final PRODUCT_CHARACTERISTICS:Ljava/lang/String; = "ro.build.characteristics"

.field private static TAG:Ljava/lang/String; = null

.field public static final USER_REJECT_CAUSE:I = 0x1

.field private static final mIsCdmaVolteISIM:Z

.field private static final mIsVtLteSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    const-string v0, "ImsCallUtils"

    sput-object v0, Lcom/huawei/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/android/ims/HwImsManager;->isDualImsAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    .line 39
    const-string v0, "ro.config.hw_vtlte_on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallUtils;->mIsVtLteSupported:Z

    .line 40
    const-string v0, "ro.config.hw_vilte_enhancement"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_VILTE_ENHANCEMENT_SUPPORTED:Z

    .line 43
    const-string v0, "ro.config.hw_cdma_volte_isim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallUtils;->mIsCdmaVolteISIM:Z

    .line 48
    const-string v0, "tablet"

    const-string v2, "ro.build.characteristics"

    const-string v3, "default"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_TABLET:Z

    .line 50
    const-string v0, "ro.vendor.config.hw_vowifi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_VOWIFI_PROP__ON:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canVideoPause(Lcom/huawei/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "conn"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 101
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static convertCallTypeToVideoState(I)I
    .locals 2
    .param p0, "callType"    # I

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "videoState":I
    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 214
    :pswitch_0
    const/4 v0, 0x3

    .line 215
    goto :goto_0

    .line 208
    :pswitch_1
    const/4 v0, 0x2

    .line 209
    goto :goto_0

    .line 211
    :pswitch_2
    const/4 v0, 0x1

    .line 212
    goto :goto_0

    .line 205
    :pswitch_3
    const/4 v0, 0x0

    .line 206
    goto :goto_0

    .line 222
    :cond_0
    const/16 v0, 0x8

    .line 223
    goto :goto_0

    .line 218
    :cond_1
    :pswitch_4
    const/4 v0, 0x4

    .line 219
    nop

    .line 231
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static convertImsErrorToUiError(I)I
    .locals 2
    .param p0, "error"    # I

    .line 271
    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    .line 272
    const/4 v0, 0x4

    return v0

    .line 273
    :cond_0
    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const/16 v1, 0x10

    if-ne p0, v1, :cond_1

    goto :goto_0

    .line 276
    :cond_1
    if-ne p0, v0, :cond_2

    .line 277
    const/16 v0, 0x64

    return v0

    .line 278
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 279
    const/16 v0, 0x65

    return v0

    .line 280
    :cond_3
    const/4 v1, 0x3

    if-ne p0, v1, :cond_4

    .line 281
    const/16 v0, 0x66

    return v0

    .line 284
    :cond_4
    return v0

    .line 274
    :cond_5
    :goto_0
    return v0
.end method

.method public static convertRilCauseCodeToImsCode(I)I
    .locals 1
    .param p0, "causeCode"    # I

    .line 293
    move v0, p0

    .line 295
    .local v0, "cause":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 377
    :sswitch_0
    const/16 v0, 0xbb9

    .line 378
    goto :goto_0

    .line 373
    :sswitch_1
    const/16 v0, 0x44c

    .line 374
    goto :goto_0

    .line 363
    :sswitch_2
    const/16 v0, 0x169

    .line 364
    goto :goto_0

    .line 359
    :sswitch_3
    const/16 v0, 0x161

    .line 360
    goto :goto_0

    .line 355
    :sswitch_4
    const/16 v0, 0x160

    .line 356
    goto :goto_0

    .line 351
    :sswitch_5
    const/16 v0, 0x15f

    .line 352
    goto :goto_0

    .line 347
    :sswitch_6
    const/16 v0, 0x153

    .line 348
    goto :goto_0

    .line 343
    :sswitch_7
    const/16 v0, 0x152

    .line 344
    goto :goto_0

    .line 338
    :sswitch_8
    const/16 v0, 0x151

    .line 339
    goto :goto_0

    .line 334
    :sswitch_9
    const/16 v0, 0x150

    .line 335
    goto :goto_0

    .line 330
    :sswitch_a
    const/16 v0, 0x14e

    .line 331
    goto :goto_0

    .line 324
    :sswitch_b
    const/16 v0, 0x155

    .line 325
    goto :goto_0

    .line 319
    :sswitch_c
    const/16 v0, 0x14f

    .line 320
    goto :goto_0

    .line 315
    :sswitch_d
    const/16 v0, 0x154

    .line 316
    goto :goto_0

    .line 309
    :sswitch_e
    const/16 v0, 0x14d

    .line 310
    goto :goto_0

    .line 305
    :sswitch_f
    const/16 v0, 0x14c

    .line 306
    goto :goto_0

    .line 301
    :sswitch_10
    const/16 v0, 0x14b

    .line 302
    goto :goto_0

    .line 368
    :sswitch_11
    const/16 v0, 0x15

    .line 369
    goto :goto_0

    .line 297
    :sswitch_12
    const/16 v0, 0x1fe

    .line 298
    nop

    .line 383
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0xf1 -> :sswitch_11
        0x4990 -> :sswitch_10
        0x4993 -> :sswitch_f
        0x4994 -> :sswitch_e
        0x4996 -> :sswitch_d
        0x4998 -> :sswitch_c
        0x499a -> :sswitch_b
        0x499f -> :sswitch_a
        0x49a0 -> :sswitch_a
        0x49a4 -> :sswitch_a
        0x49e0 -> :sswitch_9
        0x49e4 -> :sswitch_8
        0x49e6 -> :sswitch_7
        0x49e7 -> :sswitch_6
        0x49e8 -> :sswitch_d
        0x49f5 -> :sswitch_5
        0x49f7 -> :sswitch_4
        0x49f8 -> :sswitch_3
        0x4a58 -> :sswitch_7
        0x4a5b -> :sswitch_2
        0x4a5c -> :sswitch_b
        0x4a5e -> :sswitch_d
        0x4c1b -> :sswitch_1
        0x4c1c -> :sswitch_0
    .end sparse-switch
.end method

.method public static convertToInternalCallType(I)I
    .locals 4
    .param p0, "imsCallProfileCallType"    # I

    .line 235
    const/16 v0, 0xa

    .line 236
    .local v0, "internalCallType":I
    packed-switch p0, :pswitch_data_0

    .line 257
    sget-object v1, Lcom/huawei/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToInternalCallType invalid calltype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :pswitch_0
    const/4 v0, 0x4

    .line 247
    goto :goto_0

    .line 254
    :pswitch_1
    const/4 v0, 0x2

    .line 255
    goto :goto_0

    .line 249
    :pswitch_2
    const/4 v0, 0x1

    .line 250
    goto :goto_0

    .line 243
    :pswitch_3
    const/4 v0, 0x3

    .line 244
    goto :goto_0

    .line 239
    :pswitch_4
    const/4 v0, 0x0

    .line 240
    nop

    .line 260
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToVideoProfile(II)Landroid/telecom/VideoProfile;
    .locals 2
    .param p0, "callType"    # I
    .param p1, "callQuality"    # I

    .line 264
    new-instance v0, Landroid/telecom/VideoProfile;

    .line 265
    invoke-static {p0}, Lcom/huawei/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 267
    .local v0, "videoCallProfile":Landroid/telecom/VideoProfile;
    return-object v0
.end method

.method public static convertVideoStateToCallType(I)I
    .locals 2
    .param p0, "videoState"    # I

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "callType":I
    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    const/4 v0, 0x4

    .line 187
    goto :goto_0

    .line 183
    :pswitch_1
    const/4 v0, 0x3

    .line 184
    goto :goto_0

    .line 177
    :pswitch_2
    const/4 v0, 0x2

    .line 178
    goto :goto_0

    .line 180
    :pswitch_3
    const/4 v0, 0x1

    .line 181
    goto :goto_0

    .line 174
    :pswitch_4
    const/4 v0, 0x0

    .line 175
    goto :goto_0

    .line 190
    :cond_0
    const/16 v0, 0x8

    .line 191
    nop

    .line 198
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getImsCallRejectCause(I)I
    .locals 1
    .param p0, "reason"    # I

    .line 442
    const/4 v0, -0x1

    .line 443
    .local v0, "cause":I
    packed-switch p0, :pswitch_data_0

    .line 451
    const/4 v0, -0x1

    goto :goto_0

    .line 448
    :pswitch_0
    const/4 v0, 0x1

    .line 449
    goto :goto_0

    .line 445
    :pswitch_1
    const/4 v0, 0x0

    .line 446
    nop

    .line 454
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x208
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v0, "stroedKey":Ljava/lang/StringBuilder;
    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSubId(I)I
    .locals 4
    .param p0, "currentSubId"    # I

    .line 400
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    .line 401
    .local v0, "subId":I
    invoke-static {p0}, Lcom/huawei/ims/ImsCallUtils;->isValidSubId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    sget-object v1, Lcom/huawei/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubId: invalid subId, subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return v0

    .line 405
    :cond_0
    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_1

    .line 406
    move v0, p0

    .line 408
    :cond_1
    return v0
.end method

.method public static isAvpRetryDialing(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/DriverCallIms;)Z
    .locals 8
    .param p0, "conn"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .line 125
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 126
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v1

    .line 127
    .local v1, "currCallState":Lcom/huawei/ims/DriverCallIms$State;
    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v2, v2, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 128
    .local v2, "nextCallType":I
    iget-object v3, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 130
    .local v3, "nextCallState":Lcom/huawei/ims/DriverCallIms$State;
    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v1, v4, :cond_1

    .line 132
    :cond_0
    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    .line 134
    .local v4, "dialingAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsCallModification()Lcom/huawei/ims/ImsCallModification;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    move v5, v6

    nop

    :cond_2
    return v5
.end method

.method public static isAvpRetryUpgrade(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/DriverCallIms;)Z
    .locals 8
    .param p0, "conn"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .line 142
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 143
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v1

    .line 144
    .local v1, "currCallState":Lcom/huawei/ims/DriverCallIms$State;
    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v2, v2, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 145
    .local v2, "nextCallType":I
    iget-object v3, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 147
    .local v3, "nextCallState":Lcom/huawei/ims/DriverCallIms$State;
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    sget-object v6, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v1, v6, :cond_0

    .line 149
    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v3, v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    .line 151
    .local v6, "upgradeAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsCallModification()Lcom/huawei/ims/ImsCallModification;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    move v4, v5

    nop

    :cond_1
    return v4
.end method

.method public static isCdmaVoLTEAndISIM()Z
    .locals 1

    .line 459
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->mIsCdmaVolteISIM:Z

    return v0
.end method

.method public static isVTUpgradeCallType(III)Z
    .locals 3
    .param p0, "curCallType"    # I
    .param p1, "destCallType"    # I
    .param p2, "callType"    # I

    .line 392
    const/4 v0, 0x1

    if-nez p0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    if-eq p2, v0, :cond_0

    if-eq p2, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidRilModifyCallType(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 67
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isValidServiceSubIndex(I)Z
    .locals 1
    .param p0, "index"    # I

    .line 428
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidSubId(I)Z
    .locals 1
    .param p0, "subId"    # I

    .line 412
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoCall(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 56
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isVideoCallTypeWithDir(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 158
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isVideoCallTypeWithoutDir(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 167
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoPaused(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/DriverCallIms;)Z
    .locals 8
    .param p0, "conn"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .line 82
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 83
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v1

    .line 84
    .local v1, "currCallState":Lcom/huawei/ims/DriverCallIms$State;
    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v2, v2, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 85
    .local v2, "nextCallType":I
    iget-object v3, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 87
    .local v3, "nextCallState":Lcom/huawei/ims/DriverCallIms$State;
    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v1, v4, :cond_0

    .line 89
    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 91
    .local v4, "isHoldingPaused":Z
    :goto_0
    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v1, v7, :cond_1

    .line 93
    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v3, v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    .line 95
    .local v7, "isActivePaused":Z
    :goto_1
    if-nez v4, :cond_3

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v5, v6

    :goto_3
    return v5
.end method

.method public static isVideoResumed(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/DriverCallIms;)Z
    .locals 5
    .param p0, "conn"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .line 109
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 110
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v1

    .line 111
    .local v1, "currCallState":Lcom/huawei/ims/DriverCallIms$State;
    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v2, v2, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 112
    .local v2, "nextCallType":I
    iget-object v3, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 114
    .local v3, "nextCallState":Lcom/huawei/ims/DriverCallIms$State;
    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v1, v4, :cond_0

    .line 116
    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 114
    :goto_0
    return v4
.end method

.method public static isVilteEnhancementSupported()Z
    .locals 1

    .line 433
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->mIsVtLteSupported:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_VILTE_ENHANCEMENT_SUPPORTED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVowifiPropOn()Z
    .locals 1

    .line 388
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_VOWIFI_PROP__ON:Z

    return v0
.end method
