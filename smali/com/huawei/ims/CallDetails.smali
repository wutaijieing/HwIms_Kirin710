.class public Lcom/huawei/ims/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0xb

.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_TYPE_SMS:I = 0x5

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_PAUSE:I = 0x6

.field public static final CALL_TYPE_VT_RESUME:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1

.field public static final CALL_TYPE_VT_UPGRADE_CANCEL:I = 0x8

.field public static final EXTRAS_CODEC:Ljava/lang/String; = "Codec"

.field public static final EXTRAS_HANDOVER_INFORMATION:Ljava/lang/String; = "handoverInfo"

.field public static final EXTRAS_IS_CONFERENCE_URI:Ljava/lang/String; = "isConferenceUri"

.field public static final EXTRAS_PARENT_CALL_ID:Ljava/lang/String; = "parentCallId"

.field public static final EXTRA_TYPE_LTE_TO_IWLAN_HO_FAIL:I = 0x1

.field public static final MEDIA_ID_UNKNOWN:I = -0x1

.field private static final NUMBERMARKINFO_NUMBER:Ljava/lang/String; = "numbermarkinfo_number"

.field public static final VIDEO_PAUSE_STATE_PAUSED:I = 0x1

.field public static final VIDEO_PAUSE_STATE_RESUMED:I = 0x2


# instance fields
.field public callMediaId:I

.field public call_domain:I

.field public call_type:I

.field public callsubstate:I

.field public extras:[Ljava/lang/String;

.field public localAbility:[Lcom/huawei/ims/ServiceStatus;

.field private mVideoPauseState:I

.field public peerAbility:[Lcom/huawei/ims/ServiceStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    .line 189
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/ims/CallDetails;->mVideoPauseState:I

    .line 195
    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 196
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/ims/CallDetails;->call_domain:I

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 198
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "callDomain"    # I
    .param p3, "extraparams"    # [Ljava/lang/String;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    .line 189
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/ims/CallDetails;->mVideoPauseState:I

    .line 201
    iput p1, p0, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 202
    iput p2, p0, Lcom/huawei/ims/CallDetails;->call_domain:I

    .line 203
    iput-object p3, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 204
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/CallDetails;)V
    .locals 1
    .param p1, "srcCall"    # Lcom/huawei/ims/CallDetails;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    .line 189
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/ims/CallDetails;->mVideoPauseState:I

    .line 207
    if-eqz p1, :cond_0

    .line 208
    iget v0, p1, Lcom/huawei/ims/CallDetails;->call_type:I

    iput v0, p0, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 209
    iget v0, p1, Lcom/huawei/ims/CallDetails;->call_domain:I

    iput v0, p0, Lcom/huawei/ims/CallDetails;->call_domain:I

    .line 210
    iget v0, p1, Lcom/huawei/ims/CallDetails;->callsubstate:I

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 211
    iget v0, p1, Lcom/huawei/ims/CallDetails;->callMediaId:I

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    .line 212
    iget-object v0, p1, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 213
    iget-object v0, p1, Lcom/huawei/ims/CallDetails;->localAbility:[Lcom/huawei/ims/ServiceStatus;

    iput-object v0, p0, Lcom/huawei/ims/CallDetails;->localAbility:[Lcom/huawei/ims/ServiceStatus;

    .line 214
    iget-object v0, p1, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    iput-object v0, p0, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    .line 216
    :cond_0
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;)V
    .locals 1
    .param p1, "imsCallDetails"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    .line 189
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/ims/CallDetails;->mVideoPauseState:I

    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    iput v0, p0, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 221
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    iput v0, p0, Lcom/huawei/ims/CallDetails;->call_domain:I

    .line 223
    :cond_0
    return-void
.end method

.method private addExtra(Ljava/lang/String;)V
    .locals 2
    .param p1, "extra"    # Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 275
    :cond_0
    return-void
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 278
    .local p0, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 280
    .local v0, "extras":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 281
    const/4 v1, 0x0

    return-object v1

    .line 286
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 290
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 291
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 292
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 317
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 318
    aget-object v2, p1, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "currKey":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    const/4 v0, 0x1

    aget-object v0, v2, v0

    return-object v0

    .line 316
    .end local v2    # "currKey":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoPauseState()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/huawei/ims/CallDetails;->mVideoPauseState:I

    return v0
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .line 345
    iget v0, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setExtras([Ljava/lang/String;)V
    .locals 0
    .param p1, "extraparams"    # [Ljava/lang/String;

    .line 267
    iput-object p1, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p1, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/huawei/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setValueForKeyInExtras([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 328
    if-eqz p1, :cond_1

    .line 329
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 330
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 331
    aget-object v2, p1, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "currKey":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    const/4 v3, 0x1

    aput-object p3, v2, v3

    .line 329
    .end local v2    # "currKey":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v1    # "i":I
    :cond_1
    return-object p1
.end method

.method public setVideoPauseState(I)V
    .locals 0
    .param p1, "videoPauseState"    # I

    .line 301
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 304
    :pswitch_0
    iput p1, p0, Lcom/huawei/ims/CallDetails;->mVideoPauseState:I

    .line 305
    nop

    .line 309
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 353
    const-string v0, ""

    .local v0, "extrasResult":Ljava/lang/String;
    const-string v1, ""

    .local v1, "localSrvAbility":Ljava/lang/String;
    const-string v2, ""

    .line 354
    .local v2, "peerSrvAbility":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 355
    .local v3, "stringBuffer":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 356
    iget-object v4, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v6, v4

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v4, v7

    .line 358
    .local v8, "s":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 359
    const-string v9, "numbermarkinfo_number"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 360
    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 361
    .local v9, "before":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 362
    .local v10, "after":Ljava/lang/String;
    invoke-static {v10, v5}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 363
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 365
    .end local v9    # "before":Ljava/lang/String;
    .end local v10    # "after":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    .end local v8    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_3
    iget-object v4, p0, Lcom/huawei/ims/CallDetails;->localAbility:[Lcom/huawei/ims/ServiceStatus;

    if-eqz v4, :cond_6

    .line 373
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 374
    .local v4, "buf":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/huawei/ims/CallDetails;->localAbility:[Lcom/huawei/ims/ServiceStatus;

    array-length v7, v6

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    .line 375
    .local v9, "srv":Lcom/huawei/ims/ServiceStatus;
    if-eqz v9, :cond_4

    .line 376
    const-string v10, "isValid = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v10, v9, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v10, " type = "

    .line 377
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v10, v9, Lcom/huawei/ims/ServiceStatus;->type:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v10, " status = "

    .line 378
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v10, v9, Lcom/huawei/ims/ServiceStatus;->status:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 379
    iget-object v10, v9, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v10, :cond_4

    .line 380
    iget-object v10, v9, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    array-length v11, v10

    move v12, v5

    :goto_2
    if-ge v12, v11, :cond_4

    aget-object v13, v10, v12

    .line 381
    .local v13, "at":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    const-string v14, " accTechStatus "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 380
    .end local v13    # "at":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 374
    .end local v9    # "srv":Lcom/huawei/ims/ServiceStatus;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 386
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    .end local v4    # "buf":Ljava/lang/StringBuffer;
    :cond_6
    iget-object v4, p0, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    if-eqz v4, :cond_9

    .line 390
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 391
    .restart local v4    # "buf":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    array-length v7, v6

    move v8, v5

    :goto_3
    if-ge v8, v7, :cond_8

    aget-object v9, v6, v8

    .line 392
    .restart local v9    # "srv":Lcom/huawei/ims/ServiceStatus;
    if-eqz v9, :cond_7

    .line 393
    const-string v10, "isValid = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v10, v9, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v10, " type = "

    .line 394
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v10, v9, Lcom/huawei/ims/ServiceStatus;->type:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v10, " status = "

    .line 395
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v10, v9, Lcom/huawei/ims/ServiceStatus;->status:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 396
    iget-object v10, v9, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v10, :cond_7

    .line 397
    iget-object v10, v9, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    array-length v11, v10

    move v12, v5

    :goto_4
    if-ge v12, v11, :cond_7

    aget-object v13, v10, v12

    .line 398
    .restart local v13    # "at":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    const-string v14, " accTechStatus "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 397
    .end local v13    # "at":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 391
    .end local v9    # "srv":Lcom/huawei/ims/ServiceStatus;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 403
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 406
    .end local v4    # "buf":Ljava/lang/StringBuffer;
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/ims/CallDetails;->call_domain:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " callSubState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " videoPauseState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/ims/CallDetails;->mVideoPauseState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mediaId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Local Ability "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Peer Ability "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public update(Lcom/huawei/ims/CallDetails;)Z
    .locals 8
    .param p1, "update"    # Lcom/huawei/ims/CallDetails;

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "hasChanged":Z
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 228
    return v1

    .line 230
    :cond_0
    iget v2, p0, Lcom/huawei/ims/CallDetails;->call_type:I

    iget v3, p1, Lcom/huawei/ims/CallDetails;->call_type:I

    if-eq v2, v3, :cond_1

    .line 231
    iget v2, p1, Lcom/huawei/ims/CallDetails;->call_type:I

    iput v2, p0, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 232
    const/4 v0, 0x1

    .line 234
    :cond_1
    iget v2, p0, Lcom/huawei/ims/CallDetails;->call_domain:I

    iget v3, p1, Lcom/huawei/ims/CallDetails;->call_domain:I

    if-eq v2, v3, :cond_2

    .line 235
    iget v2, p1, Lcom/huawei/ims/CallDetails;->call_domain:I

    iput v2, p0, Lcom/huawei/ims/CallDetails;->call_domain:I

    .line 236
    const/4 v0, 0x1

    .line 238
    :cond_2
    iget v2, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    iget v3, p1, Lcom/huawei/ims/CallDetails;->callsubstate:I

    if-eq v2, v3, :cond_3

    .line 239
    iget v2, p1, Lcom/huawei/ims/CallDetails;->callsubstate:I

    iput v2, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 240
    const/4 v0, 0x1

    .line 243
    :cond_3
    iget-object v2, p1, Lcom/huawei/ims/CallDetails;->localAbility:[Lcom/huawei/ims/ServiceStatus;

    iput-object v2, p0, Lcom/huawei/ims/CallDetails;->localAbility:[Lcom/huawei/ims/ServiceStatus;

    .line 244
    iget-object v2, p1, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    iput-object v2, p0, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    .line 246
    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "hasChanged":Z
    :goto_0
    iget-object v3, p1, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 247
    iget-object v3, p1, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "currKeyValuePair":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 249
    iget-object v4, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v3, v1

    invoke-virtual {p0, v4, v5}, Lcom/huawei/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "oldVal":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 251
    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 252
    iget-object v6, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v7, v3, v1

    aget-object v5, v3, v5

    invoke-virtual {p0, v6, v7, v5}, Lcom/huawei/ims/CallDetails;->setValueForKeyInExtras([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 254
    const/4 v2, 0x1

    goto :goto_1

    .line 257
    :cond_4
    const/4 v2, 0x1

    .line 258
    iget-object v5, p1, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {p0, v5}, Lcom/huawei/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    .line 246
    .end local v3    # "currKeyValuePair":[Ljava/lang/String;
    .end local v4    # "oldVal":Ljava/lang/String;
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "i":I
    :cond_6
    invoke-virtual {p1}, Lcom/huawei/ims/CallDetails;->getVideoPauseState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/CallDetails;->setVideoPauseState(I)V

    .line 263
    return v2
.end method
