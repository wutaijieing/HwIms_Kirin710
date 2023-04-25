.class public Lcom/huawei/ims/ImsServiceClassTracker;
.super Ljava/lang/Object;
.source "ImsServiceClassTracker.java"

# interfaces
.implements Lcom/huawei/ims/ImsCallSessionImpl$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;,
        Lcom/huawei/ims/ImsServiceClassTracker$InComingListener;,
        Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.volte.incoming_call"

.field public static final CONF_URI_DC_NUMBER:Ljava/lang/String; = "Conference Call"

.field private static final DEFAULT_INCOMING_CALL_SIZE:I = 0x1

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"

.field public static final EXTRA_USSD:Ljava/lang/String; = "android:ussd"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceClassTracker"

.field private static currentMaxServiceId:I


# instance fields
.field private mCallList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/ims/ICallListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mContext:Landroid/content/Context;

.field public mFeatureCapabilityListener:Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;

.field public mIncomingCallListener:Lcom/huawei/ims/ImsServiceClassTracker$InComingListener;

.field private mIsVtSupportedGlobally:Z

.field private mPendingSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field public mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private mServiceClass:I

.field private mServiceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/huawei/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    return-void
.end method

.method public constructor <init>(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p3, "ci"    # Lcom/huawei/ims/ImsRIL;
    .param p4, "context"    # Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    .line 106
    iput p1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mServiceClass:I

    .line 107
    iput-object p2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 108
    invoke-static {}, Lcom/huawei/ims/ImsServiceClassTracker;->createServiceId()I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mServiceId:I

    .line 109
    iput-object p3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 110
    iput-object p4, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    .line 115
    invoke-static {}, Lcom/huawei/ims/vt/CameraController;->getInstance()Lcom/huawei/ims/vt/CameraController;

    move-result-object v0

    .line 116
    .local v0, "cameraController":Lcom/huawei/ims/vt/CameraController;
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsServiceClassTracker;->addListener(Lcom/huawei/ims/ICallListListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method private createInComingBundle(Ljava/lang/String;ZZLcom/huawei/ims/DriverCallIms$State;)Landroid/os/Bundle;
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isUssd"    # Z
    .param p3, "isUnknown"    # Z
    .param p4, "state"    # Lcom/huawei/ims/DriverCallIms$State;

    .line 893
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 894
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android:imsCallID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v1, "android:ussd"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 896
    const-string v1, "android:isUnknown"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 897
    return-object v0
.end method

.method private static createServiceId()I
    .locals 1

    .line 152
    sget v0, Lcom/huawei/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/huawei/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    return v0
.end method

.method private endCallSession(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 4
    .param p1, "callSession"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 394
    if-eqz p1, :cond_3

    .line 395
    const-string v0, "ImsServiceClassTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v0, Lcom/huawei/ims/DriverCallIms;

    invoke-direct {v0}, Lcom/huawei/ims/DriverCallIms;-><init>()V

    .line 398
    .local v0, "dc_end":Lcom/huawei/ims/DriverCallIms;
    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    iput-object v1, v0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 399
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallDetails()Lcom/huawei/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 401
    iget-object v1, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    if-nez v1, :cond_0

    .line 402
    new-instance v1, Lcom/huawei/ims/CallDetails;

    invoke-direct {v1}, Lcom/huawei/ims/CallDetails;-><init>()V

    iput-object v1, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 405
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call_type  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v2, v2, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 409
    .local v1, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v1, :cond_1

    .line 410
    const-string v2, "oi"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 411
    const-string v2, "cna"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 412
    const-string v2, "oir"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/DriverCallIms;->numberPresentation:I

    .line 413
    const-string v2, "cnap"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    .line 417
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCall()Lcom/huawei/ims/DriverCallIms;

    move-result-object v2

    .line 418
    .local v2, "dc_source":Lcom/huawei/ims/DriverCallIms;
    if-eqz v2, :cond_2

    .line 419
    iget v3, v2, Lcom/huawei/ims/DriverCallIms;->radioTechFromRilImsCall:I

    iput v3, v0, Lcom/huawei/ims/DriverCallIms;->radioTechFromRilImsCall:I

    .line 422
    :cond_2
    invoke-virtual {p1, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverCallIms;)V

    .line 424
    .end local v0    # "dc_end":Lcom/huawei/ims/DriverCallIms;
    .end local v1    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local v2    # "dc_source":Lcom/huawei/ims/DriverCallIms;
    :cond_3
    return-void
.end method

.method private getMptySession()Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 5

    .line 445
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 447
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 449
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 450
    .local v3, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 451
    monitor-exit v0

    return-object v3

    .line 453
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v3    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_0
    goto :goto_0

    .line 454
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    monitor-exit v0

    .line 455
    const/4 v0, 0x0

    return-object v0

    .line 454
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasIncomingCall(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;)Z"
        }
    .end annotation

    .line 380
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 381
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/DriverCallIms;

    .line 382
    .local v1, "dc":Lcom/huawei/ims/DriverCallIms;
    if-eqz v1, :cond_0

    sget-object v3, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    iget-object v4, v1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_0

    .line 383
    const-string v0, "ImsServiceClassTracker"

    const-string v3, "has incoming call"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return v2

    .line 388
    .end local v1    # "dc":Lcom/huawei/ims/DriverCallIms;
    :cond_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 901
    const-string v0, "ImsServiceClassTracker"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 905
    const-string v0, "ImsServiceClassTracker"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void
.end method

.method private notifyCallAdded(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 835
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 837
    .local v0, "mCallListListenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 838
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ICallListListener;

    .line 839
    .local v2, "listener":Lcom/huawei/ims/ICallListListener;
    invoke-interface {v2, p1}, Lcom/huawei/ims/ICallListListener;->onCallSessionAdded(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 841
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/ICallListListener;
    :cond_0
    return-void
.end method

.method private notifyCallRemoved(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 858
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 860
    .local v0, "mCallListListenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 861
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ICallListListener;

    .line 862
    .local v2, "listener":Lcom/huawei/ims/ICallListListener;
    invoke-interface {v2, p1}, Lcom/huawei/ims/ICallListListener;->onCallSessionRemoved(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 860
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 864
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/ICallListListener;
    :cond_0
    return-void
.end method

.method private processDialingAndIncomingConflict(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .line 366
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->hasIncomingCall(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 369
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 370
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 371
    .local v3, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    const-string v4, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found incoming call when dialing, end dialing call, session = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceClassTracker;->endCallSession(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 369
    .end local v3    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 375
    .end local v1    # "size":I
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 377
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addCall(Ljava/lang/Integer;Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 844
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 846
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 847
    .local v1, "current_callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v1, :cond_0

    .line 848
    const-string v2, "ImsServiceClassTracker"

    const-string v3, "Ims dial exception, end phantom call first."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceClassTracker;->endCallSession(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 852
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    .end local v1    # "current_callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsServiceClassTracker;->notifyCallAdded(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 855
    return-void

    .line 853
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method addListener(Lcom/huawei/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/ICallListListener;

    .line 801
    if-eqz p1, :cond_1

    .line 807
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 810
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListener error: Duplicate listener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    .line 812
    :goto_0
    return-void

    .line 802
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 7
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 599
    new-instance v6, Lcom/huawei/ims/ImsCallSessionImpl;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/huawei/ims/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceClassTracker;)V

    .line 600
    .local v0, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v0, p0}, Lcom/huawei/ims/ImsCallSessionImpl;->addListener(Lcom/huawei/ims/ImsCallSessionImpl$Listener;)V

    .line 601
    iget-boolean v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 602
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 603
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    monitor-exit v1

    .line 605
    return-object v0

    .line 604
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public findSessionByMediaId(I)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 5
    .param p1, "mediaId"    # I

    .line 683
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 685
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 686
    .local v3, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 687
    monitor-exit v0

    return-object v3

    .line 689
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_0
    goto :goto_0

    .line 690
    :cond_1
    monitor-exit v0

    .line 691
    const/4 v0, 0x0

    return-object v0

    .line 690
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallSession(Ljava/lang/String;)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 616
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    move-object v0, v2

    .line 617
    monitor-exit v1

    .line 618
    return-object v0

    .line 617
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getCallSessionByState(Lcom/huawei/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 6
    .param p1, "state"    # Lcom/huawei/ims/DriverCallIms$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/ims/DriverCallIms$State;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    if-nez p1, :cond_0

    return-object v0

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 665
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 666
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 667
    .local v4, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v4}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 668
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v4    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_1
    goto :goto_0

    .line 671
    :cond_2
    monitor-exit v1

    .line 674
    return-object v0

    .line 671
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getServiceClass()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mServiceClass:I

    return v0
.end method

.method public getServiceId()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mServiceId:I

    return v0
.end method

.method public handleCalls(Ljava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    move-object v7, p0

    .line 189
    move-object/from16 v8, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 194
    .local v9, "dcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/huawei/ims/DriverCallIms;>;"
    const/4 v0, 0x0

    .line 195
    .local v0, "dcListSize":I
    if-eqz v8, :cond_0

    .line 196
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 198
    .end local v0    # "dcListSize":I
    .local v10, "dcListSize":I
    :cond_0
    move v10, v0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    if-ge v11, v10, :cond_12

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/huawei/ims/DriverCallIms;

    .line 202
    .local v12, "dc":Lcom/huawei/ims/DriverCallIms;
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_1

    iget-boolean v0, v12, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    if-eqz v0, :cond_1

    iget-object v0, v12, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v2, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_1

    .line 203
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    const-string v2, "HwIms"

    iget-object v3, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsRIL;->getCHRReportPhoneId()I

    move-result v3

    const/4 v4, 0x2

    const-string v5, "ImsRadioResponse"

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 209
    :cond_1
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 210
    iget-object v2, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 211
    :try_start_0
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 212
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 214
    .local v3, "s":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v4, v12, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_2

    .line 217
    const-string v4, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found match dialing call session in temp list, s = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v4, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index in call list is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget v4, v12, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4, v3}, Lcom/huawei/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 221
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 223
    .end local v3    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_2
    goto :goto_1

    .line 224
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_3
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 226
    :cond_4
    :goto_2
    iget-object v2, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 227
    :try_start_1
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v3, v12, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsCallSessionImpl;

    move-object v1, v0

    .line 228
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 229
    if-eqz v1, :cond_5

    .line 233
    invoke-virtual {v1, v12}, Lcom/huawei/ims/ImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverCallIms;)V

    .line 310
    move-object v14, v1

    goto/16 :goto_7

    .line 235
    :cond_5
    const/4 v13, 0x0

    .line 236
    .local v13, "isUnknown":Z
    iget-object v0, v12, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v2, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_6

    .line 239
    goto/16 :goto_8

    .line 241
    :cond_6
    new-instance v0, Lcom/huawei/ims/ImsCallSessionImpl;

    iget-object v2, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v12, v2, v3, v7}, Lcom/huawei/ims/ImsCallSessionImpl;-><init>(Lcom/huawei/ims/DriverCallIms;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceClassTracker;)V

    move-object v14, v0

    .line 242
    .end local v1    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .local v14, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v14, v7}, Lcom/huawei/ims/ImsCallSessionImpl;->addListener(Lcom/huawei/ims/ImsCallSessionImpl$Listener;)V

    .line 243
    iget-boolean v0, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    invoke-virtual {v14, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 244
    iget-boolean v0, v12, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    if-eqz v0, :cond_9

    .line 246
    iget-object v0, v12, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_7

    iget-object v0, v12, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->WAITING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_f

    .line 249
    :cond_7
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_8

    .line 250
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    const-string v1, "HwIms"

    iget-object v2, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRIL;->getCHRReportPhoneId()I

    move-result v2

    const-string v3, "ImsServiceClassTracker"

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 254
    :cond_8
    const-string v0, "ImsServiceClassTracker"

    const-string v1, "MT Call creating a new call session"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget v3, v12, Lcom/huawei/ims/DriverCallIms;->index:I

    const/4 v4, 0x0

    iget-object v5, v12, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    iget-object v6, v12, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    move-object v1, v7

    move-object v2, v14

    invoke-virtual/range {v1 .. v6}, Lcom/huawei/ims/ImsServiceClassTracker;->sendIncomingCallIntent(Lcom/huawei/ims/ImsCallSessionImpl;IZLcom/huawei/ims/DriverCallIms$State;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 258
    :cond_9
    iget-boolean v0, v12, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_c

    iget-object v0, v12, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_c

    .line 259
    const-string v0, "ImsServiceClassTracker"

    const-string v1, "Conference Call creating a new call session"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x1

    .line 262
    .end local v13    # "isUnknown":Z
    .local v1, "isUnknown":Z
    iget-object v2, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 263
    :try_start_2
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 264
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 266
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 267
    .local v4, "oldSession":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v4}, Lcom/huawei/ims/ImsCallSessionImpl;->isConfInProgress()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 268
    const-string v5, "ImsServiceClassTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Set New Session as Id "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v4, v14}, Lcom/huawei/ims/ImsCallSessionImpl;->setNewSession(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 270
    invoke-virtual {v4, v14}, Lcom/huawei/ims/ImsCallSessionImpl;->reportNewConferenceCallSession(Lcom/huawei/ims/ImsCallSessionImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 272
    const/4 v1, 0x0

    .line 273
    goto :goto_4

    .line 275
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v4    # "oldSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_a
    goto :goto_3

    .line 276
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    .end local v1    # "isUnknown":Z
    .restart local v13    # "isUnknown":Z
    :cond_b
    :goto_4
    move v13, v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 277
    iget v0, v12, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0, v14}, Lcom/huawei/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 278
    invoke-virtual {v14, v12}, Lcom/huawei/ims/ImsCallSessionImpl;->updateConfSession(Lcom/huawei/ims/DriverCallIms;)V

    .line 279
    if-eqz v13, :cond_f

    .line 280
    const-string v0, "ImsServiceClassTracker"

    const-string v1, "Phantom conference call Scenario"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 276
    :catchall_1
    move-exception v0

    move v1, v13

    goto :goto_5

    .end local v13    # "isUnknown":Z
    .restart local v1    # "isUnknown":Z
    :catchall_2
    move-exception v0

    :goto_5
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 282
    .end local v1    # "isUnknown":Z
    .restart local v13    # "isUnknown":Z
    :cond_c
    iget-object v0, v12, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_f

    .line 283
    const-string v0, "ImsServiceClassTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MO phantom Call Scenario. State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 286
    iget-object v1, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 287
    :try_start_5
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 288
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 289
    .local v2, "s":Lcom/huawei/ims/ImsCallSessionImpl;
    iget v3, v12, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/huawei/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 291
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v2    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 292
    iget-object v2, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 293
    :try_start_6
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v1, v12, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsCallSessionImpl;

    move-object v14, v0

    .line 294
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 295
    if-eqz v14, :cond_d

    .line 296
    invoke-virtual {v14, v12}, Lcom/huawei/ims/ImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverCallIms;)V

    .line 299
    :cond_d
    const-string v0, "ImsServiceClassTracker"

    const-string v1, "MO phantom Call matched."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 294
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 291
    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 301
    :cond_e
    const/4 v13, 0x1

    .line 305
    :cond_f
    :goto_6
    if-eqz v13, :cond_10

    .line 306
    iget v3, v12, Lcom/huawei/ims/DriverCallIms;->index:I

    const/4 v4, 0x1

    iget-object v5, v12, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    iget-object v6, v12, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    move-object v1, v7

    move-object v2, v14

    invoke-virtual/range {v1 .. v6}, Lcom/huawei/ims/ImsServiceClassTracker;->sendIncomingCallIntent(Lcom/huawei/ims/ImsCallSessionImpl;IZLcom/huawei/ims/DriverCallIms$State;Ljava/lang/String;)V

    .line 310
    .end local v13    # "isUnknown":Z
    :cond_10
    :goto_7
    iget-object v0, v12, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_11

    .line 311
    iget v0, v12, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .end local v12    # "dc":Lcom/huawei/ims/DriverCallIms;
    .end local v14    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_11
    :goto_8
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .line 228
    .end local v0    # "i":I
    .local v1, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .restart local v11    # "i":I
    .restart local v12    # "dc":Lcom/huawei/ims/DriverCallIms;
    :catchall_5
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    .line 319
    .end local v1    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v11    # "i":I
    .end local v12    # "dc":Lcom/huawei/ims/DriverCallIms;
    :cond_12
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    if-eqz v8, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 320
    iget-object v1, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 321
    :try_start_a
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 322
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 326
    .restart local v2    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    const-string v3, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found match end call session in temp list, s = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v3, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index in call list is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/huawei/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 330
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 331
    .end local v2    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    goto :goto_9

    .line 332
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_13
    monitor-exit v1

    goto :goto_a

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0

    .line 337
    :cond_14
    :goto_a
    invoke-direct/range {p0 .. p1}, Lcom/huawei/ims/ImsServiceClassTracker;->processDialingAndIncomingConflict(Ljava/util/ArrayList;)V

    .line 340
    iget-object v1, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 341
    :try_start_b
    const-string v0, "ImsServiceClassTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCalls ,mCallList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 343
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 344
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 345
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    const-string v3, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dcMap.get(e.getValue().getCallId() =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_15

    .line 348
    const-string v3, "ImsServiceClassTracker"

    const-string v4, "end call handle"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v3, v7, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-direct {v7, v3}, Lcom/huawei/ims/ImsServiceClassTracker;->endCallSession(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 358
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-direct {v7, v3}, Lcom/huawei/ims/ImsServiceClassTracker;->notifyCallRemoved(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 360
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_15
    goto :goto_b

    .line 361
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_16
    monitor-exit v1

    .line 362
    return-void

    .line 361
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0
.end method

.method public handleHandover(Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;)V
    .locals 13
    .param p1, "handover"    # Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;

    .line 767
    const-string v0, "ImsServiceClassTracker"

    const-string v1, "in handleHandover"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;

    invoke-direct {v0}, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;-><init>()V

    .line 769
    .local v0, "response":Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    iget v1, p1, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    iput v1, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    .line 770
    iget v1, p1, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    iput v1, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    .line 771
    iget v1, p1, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    iput v1, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    .line 772
    iget-object v1, p1, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 773
    iget-object v1, p1, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    .line 775
    const-string v1, "ImsServiceClassTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " srcTech: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tarTech: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " extraType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mExtraType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ErrorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 779
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 780
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 781
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 782
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 783
    .local v4, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v4, :cond_0

    .line 784
    iget v6, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    iget v7, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    iget v8, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    iget v9, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mExtraType:I

    iget-object v10, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mExtraInfo:[B

    iget-object v11, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    iget-object v12, v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v5 .. v12}, Lcom/huawei/ims/ImsCallSessionImpl;->handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 788
    :cond_0
    const-string v5, "ImsServiceClassTracker"

    const-string v6, "No more call sessions found"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v4    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :goto_1
    goto :goto_0

    .line 791
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    monitor-exit v1

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public handleModifyCallRequest(Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 4
    .param p1, "cm"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 532
    if-eqz p1, :cond_1

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 535
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v3, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    move-object v0, v2

    .line 536
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsCallModification()Lcom/huawei/ims/ImsCallModification;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsCallModification;->onReceivedModifyCall(Lcom/huawei/ims/ImsCallModification$CallModify;)V

    goto :goto_0

    .line 540
    :cond_0
    const-string v1, "handleModifyCallRequest Error: callSession is null"

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    .line 542
    .end local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :goto_0
    goto :goto_1

    .line 536
    .restart local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 543
    .end local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_1
    const-string v0, "handleModifyCallRequest Error: Null Call Modify request "

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    .line 545
    :goto_1
    return-void
.end method

.method public handleModifyCallResult([I)V
    .locals 5
    .param p1, "modifyResult"    # [I

    .line 549
    if-eqz p1, :cond_7

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 554
    :cond_0
    const/4 v0, 0x0

    .line 555
    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 556
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    move-object v0, v2

    .line 557
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    if-nez v0, :cond_1

    .line 560
    const-string v1, "ImsServiceClassTracker"

    const-string v2, "handleModifyCallResult error: callsession is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void

    .line 564
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getState()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 565
    const-string v1, "ImsServiceClassTracker"

    const-string v2, "handleModifyCallResult error: callsession State.INVALID"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void

    .line 570
    :cond_2
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v1

    .line 572
    .local v1, "currentCallState":Lcom/huawei/ims/DriverCallIms$State;
    const/4 v2, 0x1

    aget v3, p1, v2

    if-eqz v3, :cond_3

    .line 573
    const-string v3, "ImsServiceClassTracker"

    const-string v4, "modify failed!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsCallModification()Lcom/huawei/ims/ImsCallModification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    goto :goto_0

    .line 576
    :cond_3
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsRIL;->isSupportVideoRingTones()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v3, v1, :cond_4

    sget-object v3, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v3, v1, :cond_5

    .line 579
    :cond_4
    const-string v3, "ImsServiceClassTracker"

    const-string v4, "ims video ring tones, clear pendingModify!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsCallModification()Lcom/huawei/ims/ImsCallModification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 584
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v3

    .line 585
    .local v3, "imsVideoCallProviderImpl":Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
    if-eqz v3, :cond_6

    .line 586
    aget v2, p1, v2

    invoke-virtual {v3, v2}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->handleModifyCallResult(I)V

    .line 589
    :cond_6
    return-void

    .line 557
    .end local v1    # "currentCallState":Lcom/huawei/ims/DriverCallIms$State;
    .end local v3    # "imsVideoCallProviderImpl":Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 550
    .end local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_7
    :goto_1
    const-string v0, "ImsServiceClassTracker"

    const-string v1, "invalid params when handleModifyCallResult"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void
.end method

.method public handleOnHoldTone(Z)V
    .locals 5
    .param p1, "startOnHoldLocalTone"    # Z

    .line 741
    const-string v0, "ImsServiceClassTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnHoldTone startOnHoldLocalTone= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v0, 0x0

    .line 744
    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 745
    return-void

    .line 748
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 749
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 750
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 751
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 752
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 753
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/ImsCallSessionImpl;

    move-object v0, v4

    .line 754
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->handleOnHoldTone(Z)V

    .line 755
    goto :goto_1

    .line 757
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_1
    goto :goto_0

    .line 758
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    if-nez v0, :cond_3

    .line 760
    const-string v1, "ImsServiceClassTracker"

    const-string v2, "No call session found for number: "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_3
    return-void

    .line 758
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public handleSuppSvcUnsol(Lcom/huawei/ims/HwImsSuppServiceNotification;)V
    .locals 12
    .param p1, "info"    # Lcom/huawei/ims/HwImsSuppServiceNotification;

    .line 703
    if-nez p1, :cond_0

    .line 704
    const-string v0, "ImsServiceClassTracker"

    const-string v1, "handleSuppSvcUnsol info == null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return-void

    .line 707
    :cond_0
    const-string v0, "ImsServiceClassTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSuppSvcUnsol callId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->callId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v2, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->callId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 713
    .local v1, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget v3, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->notificationType:I

    if-ne v3, v2, :cond_2

    .line 714
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 715
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 716
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 717
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 718
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/ImsCallSessionImpl;

    move-object v1, v5

    .line 719
    goto :goto_1

    .line 721
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_1
    goto :goto_0

    .line 724
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 725
    const/4 v3, 0x0

    .line 726
    .local v3, "startOnHoldLocalTone":Z
    new-instance v11, Landroid/telephony/ims/ImsSuppServiceNotification;

    iget v5, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->notificationType:I

    iget v6, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->code:I

    iget v7, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->index:I

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->number:Ljava/lang/String;

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v4, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->number:Ljava/lang/String;

    aput-object v4, v10, v2

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    move-object v2, v11

    .line 729
    .local v2, "suppServiceInfo":Landroid/telephony/ims/ImsSuppServiceNotification;
    const-string v4, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSuppSvcUnsol suppNotification= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " startOnHoldLocalTone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/ImsCallSessionImpl;->updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V

    .line 732
    .end local v2    # "suppServiceInfo":Landroid/telephony/ims/ImsSuppServiceNotification;
    .end local v3    # "startOnHoldLocalTone":Z
    goto :goto_2

    .line 733
    :cond_3
    const-string v2, "ImsServiceClassTracker"

    const-string v3, "No call session found for number: "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    .end local v1    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :goto_2
    monitor-exit v0

    .line 736
    return-void

    .line 735
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleTtyModeChangeUnsol(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 631
    const/4 v0, 0x0

    .line 634
    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 635
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 636
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 637
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 638
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/ImsCallSessionImpl;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 639
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/ImsCallSessionImpl;

    move-object v0, v4

    .line 640
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyTtyModeChange(I)V

    .line 641
    goto :goto_1

    .line 643
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_0
    goto :goto_0

    .line 644
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    if-nez v0, :cond_2

    .line 647
    const-string v1, "ImsServiceClassTracker"

    const-string v2, "No Active call session found for TTY mode change"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_2
    return-void

    .line 644
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public haveCall()Z
    .locals 3

    .line 867
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 870
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 871
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    monitor-exit v0

    return v2

    .line 873
    :cond_1
    monitor-exit v0

    .line 874
    return v2

    .line 873
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCallSessionHold(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "mtHold"    # Z

    .line 515
    return-void
.end method

.method public onCallSessionMerged()V
    .locals 0

    .line 528
    return-void
.end method

.method public onCallSessionResumed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "mtResume"    # Z

    .line 520
    return-void
.end method

.method public onCallSessionStarted(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 524
    return-void
.end method

.method public onClosed(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 6
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 464
    const-string v0, "ImsServiceClassTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosed for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 469
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 471
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    const-string v3, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " session is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 474
    const-string v3, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing session on close "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v3

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_0

    .line 478
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCall()Lcom/huawei/ims/DriverCallIms;

    move-result-object v3

    .line 479
    .local v3, "dc_end":Lcom/huawei/ims/DriverCallIms;
    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    iput-object v4, v3, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call_type  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v5, v5, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p1, v3}, Lcom/huawei/ims/ImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverCallIms;)V

    .line 484
    .end local v3    # "dc_end":Lcom/huawei/ims/DriverCallIms;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 485
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceClassTracker;->notifyCallRemoved(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 487
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_1
    goto/16 :goto_0

    .line 488
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 491
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 492
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 493
    :try_start_1
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 494
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 495
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 496
    .local v2, "s":Lcom/huawei/ims/ImsCallSessionImpl;
    if-ne v2, p1, :cond_4

    .line 498
    const-string v3, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing session on close "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 500
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceClassTracker;->notifyCallRemoved(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 502
    .end local v2    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_4
    goto :goto_2

    .line 503
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_5
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 505
    :cond_6
    :goto_3
    return-void
.end method

.method public onDisconnected(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .line 460
    return-void
.end method

.method public onNotifyCallResumed()V
    .locals 2

    .line 428
    const-string v0, "ImsServiceClassTracker"

    const-string v1, "onNotifyCallResumed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceClassTracker;->getMptySession()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 430
    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {v0, v0, v1}, Lcom/huawei/ims/ImsCallSessionImpl;->invokeCallResume(Lcom/huawei/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    .line 433
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsServiceClassTracker;->setConfInProgress(Z)V

    .line 434
    return-void
.end method

.method public onUnsolCallModify(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 509
    return-void
.end method

.method removeListener(Lcom/huawei/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/ICallListListener;

    .line 820
    if-eqz p1, :cond_1

    .line 826
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 829
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeListener error: Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    .line 831
    :goto_0
    return-void

    .line 821
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "removeListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendIncomingCallIntent(Lcom/huawei/ims/ImsCallSessionImpl;IZLcom/huawei/ims/DriverCallIms$State;Ljava/lang/String;)V
    .locals 3
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "index"    # I
    .param p3, "isUnknown"    # Z
    .param p4, "state"    # Lcom/huawei/ims/DriverCallIms$State;
    .param p5, "number"    # Ljava/lang/String;

    .line 880
    const-string v0, "ImsServiceClassTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIncomingCallIntent, mIncomingCallListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mIncomingCallListener:Lcom/huawei/ims/ImsServiceClassTracker$InComingListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mIncomingCallListener:Lcom/huawei/ims/ImsServiceClassTracker$InComingListener;

    if-nez v0, :cond_0

    .line 882
    const-string v0, "ImsServiceClassTracker"

    const-string v1, "mIncomingCallListener = null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return-void

    .line 886
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/huawei/ims/ImsServiceClassTracker;->createInComingBundle(Ljava/lang/String;ZZLcom/huawei/ims/DriverCallIms$State;)Landroid/os/Bundle;

    move-result-object v0

    .line 887
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mIncomingCallListener:Lcom/huawei/ims/ImsServiceClassTracker$InComingListener;

    invoke-interface {v1, p1, v0}, Lcom/huawei/ims/ImsServiceClassTracker$InComingListener;->notifyIncomingCall(Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 888
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 889
    return-void
.end method

.method public setConfInProgress(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 437
    const-string v0, "ImsServiceClassTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfInProgress value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceClassTracker;->getMptySession()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 439
    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_0

    .line 440
    iput-boolean p1, v0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 442
    :cond_0
    return-void
.end method

.method public updateVtCapability(Z)V
    .locals 4
    .param p1, "isVtEnabled"    # Z

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVtCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 175
    iput-boolean p1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    .line 176
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 179
    .local v3, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v3, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 180
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    goto :goto_0

    .line 181
    :cond_0
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
