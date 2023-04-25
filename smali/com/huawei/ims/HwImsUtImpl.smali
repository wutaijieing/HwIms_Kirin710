.class public Lcom/huawei/ims/HwImsUtImpl;
.super Lcom/huawei/ims/ImsUtImpl;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;,
        Lcom/huawei/ims/HwImsUtImpl$UtServiceHandler;,
        Lcom/huawei/ims/HwImsUtImpl$UTData;,
        Lcom/huawei/ims/HwImsUtImpl$UtCmd;,
        Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;,
        Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;,
        Lcom/huawei/ims/HwImsUtImpl$CmdToken;,
        Lcom/huawei/ims/HwImsUtImpl$CmdState;,
        Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    }
.end annotation


# static fields
.field public static final ACTION_MAPCON_SERVICE_FAILED:Ljava/lang/String; = "com.hisi.mapcon.servicefailed"

.field public static final CALL_SDK_FAILED:I = -0x1

.field public static final CALL_SDK_SUCCESSFULLY:I = 0x0

.field public static final CALL_WAITING_ACTIVE:I = 0x1

.field public static final CALL_WAITING_DEACTIVE:I = 0x0

.field private static final CARD_VOLTE_FLAG:[Ljava/lang/String;

.field public static final CFT_DATE_NUM:I = 0x2

.field public static final CF_REASON_TIME:I = 0x6

.field private static final CLEAR_TCP_GBA_PARM:I = 0x0

.field private static final CLEAR_TCP_GBA_UTCFG_PARM:I = 0x1

.field public static final CLIR_PRESENTATION_ALLOWED_TEMPORARY:I = 0x4

.field private static final CONNECT_INFO_ERRORCODE:Ljava/lang/String; = "ut409perfix"

.field private static final DC_ALARM_IN_MS:I = 0x2710

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CURRENT_SUB_ID:I = -0x1

.field public static final DEFAULT_NO_REPLY_TIME:I = 0x14

.field private static final DEFAULT_NO_REPLY_TIMER:I = -0x1

.field private static final EN_MUTF_EXTPARAM_CFG_BSF_USER_AGENT:I = 0x1

.field private static final EN_MUTF_EXTPARAM_CFG_NAF_USER_AGENT:I = 0x0

.field private static final EVENT_ECT_RESULT:I = 0x32

.field public static final EVENT_GET_CS_CALL_WAITING_DONE:I = 0x1b

.field public static final EVENT_QUERY_CALL_WAITING:I = 0x14

.field public static final EVENT_QUERY_CLIR:I = 0x16

.field public static final EVENT_SET_CS_CALL_WAITING_DONE:I = 0x1c

.field public static final EVENT_SYNC_CLIR_TO_IMS_DONE:I = 0x1f

.field public static final EVENT_SYNC_CW_TO_CS_DONE:I = 0x1e

.field public static final EVENT_SYNC_CW_TO_IMS_DONE:I = 0x1d

.field public static final EVENT_UPDATE_CALL_WAITING:I = 0x15

.field public static final EVENT_UPDATE_CLIR:I = 0x17

.field private static FLAG_DEFAULT_VOLTE_VALUE:I = 0x0

.field private static FLAG_IS_NOT_VOLTE:I = 0x0

.field private static FLAG_IS_VOLTE:I = 0x0

.field public static final GENERAL_TELEPHONE_NUMBER:I = 0x81

.field public static final GET_CALL_WAITING_DURATION_TIME:I = 0x5

.field public static final HANDLER_ARG_RESERVE:I = 0x0

.field public static final ILLEGAL_NUMBER:I = -0x1

.field private static final IMS_DATA_CONNECTION_KEEPALIVE_IN_MS:I = 0x7530

.field private static final IMS_DATA_CONNECTION_TIMEOUT_IN_MS:I = 0x2710

.field private static final IMS_GET_HOST_NAME_DELAY_IN_MS:I = 0x64

.field public static final INTERNATIONAL_TELEPHONE_NUMBER:I = 0x91

.field public static final IS_UT_USE_IMSAPN:Z

.field public static final IS_VOWIFI_PROP_ON:Z

.field public static final LOCAL_CALL_WAITING_DEFAULT_VALUE:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "HwImsUtImpl"

.field public static final MAPCON_APN:Ljava/lang/String; = "apn"

.field public static final MAPCON_CAUSE:Ljava/lang/String; = "cause"

.field public static final MAPCON_DOMAIN_CELLULAR_PREFER:I = 0x3

.field public static final MAPCON_DOMAIN_LTE_PREFER:I = 0x1

.field public static final MAPCON_DOMAIN_WIFI_ONLY:I = 0x0

.field public static final MAPCON_DOMAIN_WIFI_PREFER:I = 0x2

.field public static final MAPCON_PHONEID:Ljava/lang/String; = "phoneId"

.field public static final MAPCON_SERVERADDR:Ljava/lang/String; = "serverAddr"

.field public static final MAPCON_SERVICE_TYPE_MMS:I = 0x1

.field public static final MAPCON_SERVICE_TYPE_UT:I = 0x2

.field public static final MAPCON_SERVICE_TYPE_VOICE:I = 0x0

.field public static final MAPCON_TYPE:Ljava/lang/String; = "serviceType"

.field public static final MAPCON_UNKNOW_INDEX:I = 0x3

.field public static final MAX_REQUESTS_PENDING:I = 0x32

.field public static final MEDIA_TYPE_AUDIO:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x2

.field private static final NOT_REGISTERED:I = 0x0

.field public static final NUM_PRESENTATION_ALLOWED:I = 0x0

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_DEFAULT:I = 0x0

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_NOT_RESTRICTED:I = 0x1

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_NOT_SUBSCRIBED:I = 0x3

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_RESTRICTED:I = 0x2

.field public static final PERMISSION_READ_PRECISE_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PRECISE_PHONE_STATE"

.field private static final REGISTERED:I = 0x1

.field private static final REGISTERING:I = 0x2

.field private static final RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

.field private static final RO_HW_OEMNAME:Ljava/lang/String;

.field private static final SEND_CHR_BROADCAST_TIME_GAP:I = 0x36ee80

.field public static final SERVICE_CLASS_CW_MODE:I = 0x3

.field public static final SMCOMMON_TYPE_MMS:I = 0x0

.field public static final SMCOMMON_TYPE_OTHERS:I = 0x2

.field public static final SMCOMMON_TYPE_UT:I = 0x1

.field public static final SSCONF_CB_CONDITION_ALL:I = 0x5

.field public static final SSCONF_CB_CONDITION_BAIC:I = 0x0

.field public static final SSCONF_CB_CONDITION_BAICr:I = 0x4

.field public static final SSCONF_CB_CONDITION_BAOC:I = 0x1

.field public static final SSCONF_CB_CONDITION_BAOIC:I = 0x2

.field public static final SSCONF_CB_CONDITION_BAOICxH:I = 0x3

.field public static final SSCONF_CF_REASON_CFB:I = 0x2

.field public static final SSCONF_CF_REASON_CFNL:I = 0x1

.field public static final SSCONF_CF_REASON_CFNR:I = 0x3

.field public static final SSCONF_CF_REASON_CFNRc:I = 0x4

.field public static final SSCONF_CF_REASON_CFT:I = 0x5

.field public static final SSCONF_CF_REASON_CFU:I = 0x0

.field public static final SSCONF_OP_TYPE_GET:I = 0x0

.field public static final SSCONF_OP_TYPE_PUT:I = 0x1

.field public static final SSCONF_SS_TYPE_ALL:I = 0x0

.field public static final SSCONF_SS_TYPE_BAIC:I = 0xf

.field public static final SSCONF_SS_TYPE_BAICr:I = 0x13

.field public static final SSCONF_SS_TYPE_BAOC:I = 0x10

.field public static final SSCONF_SS_TYPE_BAOIC:I = 0x11

.field public static final SSCONF_SS_TYPE_BAOICxH:I = 0x12

.field public static final SSCONF_SS_TYPE_BA_ALL:I = 0x15

.field public static final SSCONF_SS_TYPE_CDIV:I = 0x5

.field public static final SSCONF_SS_TYPE_CFA:I = 0x16

.field public static final SSCONF_SS_TYPE_CFAC:I = 0x17

.field public static final SSCONF_SS_TYPE_CFB:I = 0x9

.field public static final SSCONF_SS_TYPE_CFNL:I = 0x8

.field public static final SSCONF_SS_TYPE_CFNR:I = 0xa

.field public static final SSCONF_SS_TYPE_CFNRc:I = 0xb

.field public static final SSCONF_SS_TYPE_CFT:I = 0xc

.field public static final SSCONF_SS_TYPE_CFU:I = 0x7

.field public static final SSCONF_SS_TYPE_CW:I = 0x14

.field public static final SSCONF_SS_TYPE_ICB:I = 0xd

.field public static final SSCONF_SS_TYPE_MAX:I = 0x18

.field public static final SSCONF_SS_TYPE_NRT:I = 0x6

.field public static final SSCONF_SS_TYPE_OCB:I = 0xe

.field public static final SSCONF_SS_TYPE_OIP:I = 0x1

.field public static final SSCONF_SS_TYPE_OIR:I = 0x3

.field public static final SSCONF_SS_TYPE_TIP:I = 0x2

.field public static final SSCONF_SS_TYPE_TIR:I = 0x4

.field public static final SSCONF_SS_TYPE_UNKNOWN:I = -0x1

.field public static final SS_403_FORBIDDEN_ERROR:I = 0x193

.field public static final SS_404_NOT_FOUND_ERROR:I = 0x194

.field public static final SS_409_CONFLICT_ERROR:I = 0x199

.field public static final SS_ACTIVE:I = 0x1

.field public static final SS_DEACTIVE:I = 0x0

.field public static final SS_ERROR:I = 0x1

.field public static final SS_ERROR_FROM_BSF:I = 0x2

.field public static final SS_ERROR_FROM_NAF:I = 0x1

.field public static final SS_HTTP_DIGEST_ONLY_CONFLICT_ERROR:I = 0x3

.field public static final SS_OK:I = 0x0

.field public static final SS_RESPONSE_CF_NUM:I = 0x1

.field public static final SS_RESPONSE_NUM:I = 0x2

.field public static final SS_SEVICE_CLASS_VOICE:I = 0x1

.field public static final SUB_EVENT_IMS_GET_IMPU_DONE:I = 0xb

.field public static final SUB_EVENT_IMS_UT_CLEAR:I = 0x7

.field public static final SUB_EVENT_IMS_UT_CONTINUE_IMS_CONNECTIVITY:I = 0x5

.field public static final SUB_EVENT_IMS_UT_DC_ALARM:I = 0x29

.field public static final SUB_EVENT_IMS_UT_END_IMS_CONNECTIVITY:I = 0xc

.field public static final SUB_EVENT_IMS_UT_GET_HOST_NAME_DONE:I = 0x2

.field public static final SUB_EVENT_IMS_UT_IMS_DC_ALARM:I = 0x2c

.field public static final SUB_EVENT_IMS_UT_INIT:I = 0x8

.field public static final SUB_EVENT_IMS_UT_REQ_ROUT_HOST_FAILED:I = 0x4

.field public static final SUB_EVENT_IMS_UT_REQ_ROUT_HOST_OK:I = 0x3

.field public static final SUB_EVENT_IMS_UT_SCISSCONFCB:I = 0x1

.field public static final SUB_EVENT_IMS_UT_TEAR_DOWN_TUNNEL_CONNECTION_ALARM:I = 0x2e

.field public static final SUB_EVENT_IMS_UT_TEMPORARY_DC_ALARM:I = 0x2f

.field public static final SUB_EVENT_IMS_UT_TEMPORARY_UT_STAY_ALARM:I = 0x30

.field public static final SUB_EVENT_IMS_UT_TICK:I = 0x6

.field public static final SUB_EVENT_IMS_UT_TUNNEL_SETUP_ALARM:I = 0x2d

.field public static final SUB_EVENT_IMS_UT_UT_ALARM:I = 0x2a

.field public static final SUB_EVENT_IMS_UT_UT_RETRY_ALARM:I = 0x2b

.field public static final SUB_EVENT_SIM_CARD_ABSENT:I = 0xa

.field public static final SUB_EVENT_SIM_RECORDS_LOADED:I = 0x9

.field private static final TEMPORARY_DC_ALARM_IN_MS:I = 0x7530

.field private static final TEMPORARY_UT_STAY_ALARM_IN_MS:I = 0x3e8

.field private static final TUNNEL_SETUP_TIMEOUT_IN_MS:I = 0x2710

.field private static final TYPE_SDK_HOST_BSF:I = 0x1

.field private static final TYPE_SDK_HOST_NAF:I = 0x0

.field private static final UT_ALARM_IN_MS:I = 0x7530

.field public static final UT_DATA_UPDATE_TIME:I = 0xa

.field public static final UT_DOMAIN_CELLULAR:I = 0x2

.field public static final UT_DOMAIN_DEFAULT:I = 0x0

.field public static final UT_DOMAIN_WIFI:I = 0x1

.field public static final UT_ID_INVALID:I = -0x1

.field public static final UT_ID_VALID:I = 0x0

.field public static final UT_INVALID:I = -0x1

.field private static mCurrentSubId:I

.field private static mRequestId:I

.field private static mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;


# instance fields
.field private MAX_UT_TUNNEL_RETRY_TIMES:I

.field private hasSetNetworkAsDefault:Z

.field private hasUtUseAPN:Z

.field private mApnChangeObserver:Landroid/database/ContentObserver;

.field private mCallWatingUtCanBeUsed:Z

.field private mCanSendChrBroadcastDate:Ljava/util/Date;

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mGbaAuth:Lcom/huawei/ims/GbaAuth;

.field private mHasChangedDefaultDataSub:Z

.field private mHasCheckedSIMCardByUT:Z

.field private mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

.field private mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field private mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

.field private mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirModeResetCWInModem:Z

.field private mIsDataReg:Z

.field private mIsSimRecordLoaded:Z

.field private mIsUtEnable:Z

.field private mIsUtForbidden:Z

.field private mIsUtSubscribed:Z

.field private mIsVowifi:Z

.field private mIsVowifiTimeOut:Z

.field private mIsWifiTunnnelUp:Z

.field private mLastSS:I

.field private mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

.field private mNetId:I

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNextGetCallWaitingTime:Ljava/util/Date;

.field private mSciSSCB:Lcom/huawei/sci/SciSSConfCb$Callback;

.field private mShowDataConnectionDialog:Z

.field private mSubId:I

.field private mUtAPNInetAddressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mUtCmdQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/HwImsUtImpl$UtCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mUtDataExpireTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private mUtForbiddenDate:Ljava/util/Date;

.field private mUtRetryCmdQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/HwImsUtImpl$UtCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mUtServiceHandler:Landroid/os/Handler;

.field private mUtTunnelRetryTimes:I

.field private mbReqRoutHost:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 215
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVowifiPropOn()Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    .line 378
    const-string v0, "ro.hw.oemName"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    .line 379
    const-string v0, "ro.build.version.incremental"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    .line 547
    const-string v0, "ro.config.hw_ut_ims"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_UT_USE_IMSAPN:Z

    .line 613
    sput-object v1, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    .line 651
    const/4 v0, -0x1

    sput v0, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    .line 660
    sput v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    .line 3598
    const-string v1, "card_volte_flag_0"

    const-string v3, "card_volte_flag_1"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    .line 3599
    const/4 v1, 0x1

    sput v1, Lcom/huawei/ims/HwImsUtImpl;->FLAG_IS_VOLTE:I

    .line 3600
    sput v2, Lcom/huawei/ims/HwImsUtImpl;->FLAG_IS_NOT_VOLTE:I

    .line 3601
    sput v0, Lcom/huawei/ims/HwImsUtImpl;->FLAG_DEFAULT_VOLTE_VALUE:I

    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsServiceSub;ILcom/huawei/ims/ImsUtImpl;)V
    .locals 5
    .param p1, "imsServiceSub"    # Lcom/huawei/ims/ImsServiceSub;
    .param p2, "subId"    # I
    .param p3, "imsUtImpl"    # Lcom/huawei/ims/ImsUtImpl;

    .line 697
    invoke-direct {p0}, Lcom/huawei/ims/ImsUtImpl;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    .line 201
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    .line 202
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    .line 204
    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    .line 205
    const/4 v1, 0x3

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->MAX_UT_TUNNEL_RETRY_TIMES:I

    .line 383
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    .line 388
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    .line 542
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    .line 554
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 555
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    .line 558
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    .line 561
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z

    .line 562
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->hasSetNetworkAsDefault:Z

    .line 577
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 583
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    .line 585
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCWInModem:Z

    .line 603
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    .line 610
    new-instance v3, Lcom/huawei/ims/ImsUtListenerProxy;

    invoke-direct {v3}, Lcom/huawei/ims/ImsUtListenerProxy;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    .line 615
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    .line 618
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 620
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    .line 622
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    .line 623
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 625
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    .line 627
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    .line 631
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 633
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    .line 636
    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 639
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    .line 648
    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    .line 653
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 655
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    .line 656
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasChangedDefaultDataSub:Z

    .line 682
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    .line 685
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/huawei/ims/HwImsUtImpl$1;-><init>(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mApnChangeObserver:Landroid/database/ContentObserver;

    .line 1945
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$3;

    invoke-direct {v1, p0}, Lcom/huawei/ims/HwImsUtImpl$3;-><init>(Lcom/huawei/ims/HwImsUtImpl;)V

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 4710
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$4;

    invoke-direct {v1, p0}, Lcom/huawei/ims/HwImsUtImpl$4;-><init>(Lcom/huawei/ims/HwImsUtImpl;)V

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSCB:Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 6397
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    .line 6583
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsDataReg:Z

    .line 699
    iput p2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    .line 700
    const-string v0, "HwImsUtImpl constructor"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 701
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->isValidServiceSubIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    const-string v0, "subId is invalid"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 703
    return-void

    .line 706
    :cond_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    .line 707
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-nez v0, :cond_1

    .line 708
    const-string v0, "mImsServiceSub is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 709
    return-void

    .line 712
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/ims/ImsServiceSub;->getConfig()Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 713
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-nez v0, :cond_2

    .line 714
    const-string v0, "mImsConfigImpl is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 715
    return-void

    .line 719
    :cond_2
    iput-object p3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    .line 720
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    if-nez v0, :cond_3

    .line 721
    const-string v0, "mImsUtImpl is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 722
    return-void

    .line 727
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtServiceThread()V

    .line 728
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 135
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->getIdForRequest()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/huawei/ims/HwImsUtImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/huawei/ims/HwImsUtImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 135
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/huawei/ims/HwImsUtImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Z

    .line 135
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->setUtOverWifiTunnelUpFlag(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    return-void
.end method

.method static synthetic access$1400(Lcom/huawei/ims/HwImsUtImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    return v0
.end method

.method static synthetic access$1402(Lcom/huawei/ims/HwImsUtImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # I

    .line 135
    iput p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    return p1
.end method

.method static synthetic access$1408(Lcom/huawei/ims/HwImsUtImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    return v0
.end method

.method static synthetic access$1500(Lcom/huawei/ims/HwImsUtImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->MAX_UT_TUNNEL_RETRY_TIMES:I

    return v0
.end method

.method static synthetic access$1600(Lcom/huawei/ims/HwImsUtImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/huawei/ims/HwImsUtImpl;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Z

    .line 135
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    return-void
.end method

.method static synthetic access$1900(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelSetupAlarm()V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenTunnelSetupFail()V

    return-void
.end method

.method static synthetic access$2100(Lcom/huawei/ims/HwImsUtImpl;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .line 135
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleConnectivity(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/huawei/ims/HwImsUtImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Z

    .line 135
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCWInModem:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/huawei/ims/HwImsUtImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # I

    .line 135
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleClear(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/huawei/ims/HwImsUtImpl;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 135
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtApnConnection(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/GbaAuth;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsConfigImpl;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/huawei/ims/HwImsUtImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/huawei/ims/HwImsUtImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Z

    .line 135
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->hasSetNetworkAsDefault:Z

    return p1
.end method

.method static synthetic access$300(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryUtApn()V

    return-void
.end method

.method static synthetic access$3000(Lcom/huawei/ims/HwImsUtImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    return-void
.end method

.method static synthetic access$3200(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->keepAliveImsConnectivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/ims/HwImsUtImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Landroid/os/Handler;

    .line 135
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 135
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/huawei/ims/HwImsUtImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .line 135
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    return v0
.end method

.method static synthetic access$900(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 135
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    return-object v0
.end method

.method private addUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2058
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2059
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after add mUtCmdQueue size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2062
    monitor-exit v0

    .line 2063
    return-void

    .line 2062
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private beginImsConnectivity(Z)I
    .locals 12
    .param p1, "isVowifi"    # Z

    .line 5120
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    .line 5121
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5123
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 5124
    const-string v1, "get ConnectivityManager null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5125
    const/4 v1, 0x3

    return v1

    .line 5129
    :cond_0
    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v7

    .line 5130
    .local v7, "slotId":I
    const/4 v1, 0x0

    .line 5131
    .local v1, "request":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;-><init>(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$1;)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5132
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p1, :cond_1

    .line 5133
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v9}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v3, 0x9

    .line 5134
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v10

    .line 5135
    .end local v1    # "request":Landroid/net/NetworkRequest;
    .local v10, "request":Landroid/net/NetworkRequest;
    const-string v1, "handle UT data connection begin ims connectivity of vowifi"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5136
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v4, 0x0

    const/16 v5, 0x2f

    iget-object v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    move-object v1, v0

    move-object v2, v10

    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    .line 5138
    iput-boolean v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    .line 5150
    move-object v8, v10

    goto :goto_0

    .line 5141
    .end local v10    # "request":Landroid/net/NetworkRequest;
    .restart local v1    # "request":Landroid/net/NetworkRequest;
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtAPNCapabilities()I

    move-result v10

    .line 5143
    .local v10, "cap":I
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtAPNConectionType()I

    move-result v11

    .line 5144
    .local v11, "connectionType":I
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v8}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 5145
    invoke-virtual {v2, v10}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v8

    .line 5146
    .end local v1    # "request":Landroid/net/NetworkRequest;
    .local v8, "request":Landroid/net/NetworkRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle UT data connection begin ims connectivity of volte use connectionType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5147
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    move-object v1, v0

    move-object v2, v8

    move v5, v11

    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    .line 5150
    .end local v10    # "cap":I
    .end local v11    # "connectionType":I
    :goto_0
    return v9
.end method

.method private broadcastUtIdle()V
    .locals 2

    .line 6531
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6532
    return-void

    .line 6535
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    if-eqz v0, :cond_1

    .line 6536
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtImpl;->broadcastUtIdle(I)V

    .line 6538
    :cond_1
    return-void
.end method

.method private canUse403ForLocalCW()Z
    .locals 1

    .line 6485
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUse403ForLocalCW()Z

    move-result v0

    return v0
.end method

.method private cancelStopImsApnMessage()V
    .locals 2

    .line 5690
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 5691
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5692
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5694
    :cond_0
    return-void
.end method

.method private changeDcStateWhenImsActFail()V
    .locals 4

    .line 5260
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5262
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    sget-boolean v1, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 5264
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtPreferOption()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 5265
    const-string v1, "process ut use xcap connection fail,retry vowifi"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5266
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5267
    return-void

    .line 5271
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v1

    .line 5273
    .local v1, "utDomain":I
    const/4 v3, 0x2

    if-ne v3, v1, :cond_1

    .line 5274
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5275
    :cond_1
    if-nez v1, :cond_2

    .line 5276
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5277
    :cond_2
    if-ne v2, v1, :cond_3

    .line 5279
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5280
    :cond_3
    const/4 v2, 0x3

    if-ne v2, v1, :cond_4

    .line 5281
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5283
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDcStateWhenImsActFail,utDomain is an undefined type! utDomain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5286
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDcStateWhenImsActFail,cmd.dcState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5289
    .end local v1    # "utDomain":I
    :cond_5
    return-void
.end method

.method private changeDcStateWhenTunnelSetupFail()V
    .locals 4

    .line 5302
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5304
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    sget-boolean v1, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 5308
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5309
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5310
    return-void

    .line 5313
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtPreferOption()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 5314
    const-string v1, "process ut prefer use volte fail,retry vowifi fail,csfb"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5315
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_ACT_EXECUTE_LTE_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5316
    return-void

    .line 5321
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v1

    .line 5323
    .local v1, "utDomain":I
    const/4 v3, 0x2

    if-ne v3, v1, :cond_3

    .line 5324
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5325
    :cond_3
    if-nez v1, :cond_4

    .line 5326
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5327
    :cond_4
    if-ne v2, v1, :cond_5

    .line 5329
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5330
    :cond_5
    const/4 v2, 0x3

    if-ne v2, v1, :cond_6

    .line 5331
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5333
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDcStateWhenTunnelSetupFail,utDomain is an undefined type! utDomain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5335
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDcStateWhenTunnelSetupFail,cmd.dcState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5338
    .end local v1    # "utDomain":I
    :cond_7
    return-void
.end method

.method private checkCSDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3645
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3646
    const-string v1, "ut cmd is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3648
    return v0

    .line 3653
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method private checkNetworkAvailable(I)Z
    .locals 2
    .param p1, "networkType"    # I

    .line 5698
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v0

    .line 5699
    .local v0, "network":Landroid/net/Network;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z
    .locals 2
    .param p1, "ds"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3662
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectUT(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .locals 1
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3666
    if-nez p1, :cond_0

    .line 3667
    const-string v0, "ut cmd is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3669
    const/4 v0, 0x0

    return v0

    .line 3674
    :cond_0
    iget-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v0

    return v0
.end method

.method private checkUtForbiddenDate()V
    .locals 2

    .line 5968
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v0, :cond_0

    .line 5969
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 5971
    .local v0, "currDate":Ljava/util/Date;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 5972
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 5973
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    .line 5976
    .end local v0    # "currDate":Ljava/util/Date;
    :cond_0
    return-void
.end method

.method private clearCTCardVolteFlag()V
    .locals 4

    .line 3612
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 3613
    .local v0, "subId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCTCardVolteFlag: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3614
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget v3, Lcom/huawei/ims/HwImsUtImpl;->FLAG_DEFAULT_VOLTE_VALUE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3615
    return-void
.end method

.method private clearSharedPreferences()V
    .locals 5

    .line 4227
    const-string v0, "enter clearSharedPreferences"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4230
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->setImpiFromSIM(Ljava/lang/String;)V

    .line 4231
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->setNafAddrFromSIM(Ljava/lang/String;)V

    .line 4232
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->setBsfAddrFromSIM(Ljava/lang/String;)V

    .line 4235
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    .line 4236
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4235
    invoke-virtual {v0, v2, v1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4237
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    .line 4238
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4237
    invoke-virtual {v0, v2, v1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4242
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    .line 4244
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4242
    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setBoolToSP(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 4248
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->removeKeyInSp(Ljava/lang/String;Landroid/content/Context;)V

    .line 4251
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4253
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 4254
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4255
    const-string v2, "ims not registered, set impu from network as null."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4257
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v3, v3, v4

    .line 4258
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 4257
    invoke-virtual {v2, v3, v1, v4}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 4260
    :cond_0
    const-string v1, "ims is registered."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4263
    :cond_1
    const-string v1, "imsphone is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4265
    :goto_0
    return-void
.end method

.method private createIpAddr([Ljava/net/InetAddress;)[Ljava/lang/String;
    .locals 3
    .param p1, "addresses"    # [Ljava/net/InetAddress;

    .line 2651
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 2652
    .local v0, "sbIpAddr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2653
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2652
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2655
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .locals 2
    .param p1, "oldDomain"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3682
    move-object v0, p1

    .line 3686
    .local v0, "newDomain":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, p1, :cond_0

    .line 3687
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    goto :goto_0

    .line 3688
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, p1, :cond_1

    .line 3689
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3692
    :cond_1
    :goto_0
    return-object v0
.end method

.method private domainIntersectUT(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .locals 2
    .param p1, "oldDomain"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3700
    move-object v0, p1

    .line 3704
    .local v0, "newDomain":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, p1, :cond_0

    .line 3705
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    goto :goto_0

    .line 3706
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, p1, :cond_1

    .line 3707
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3710
    :cond_1
    :goto_0
    return-object v0
.end method

.method private domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .locals 5
    .param p1, "prevDomain"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .param p2, "utType"    # I
    .param p3, "showDcDialog"    # Z

    .line 3714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter domainSelect, prevDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", utType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showDcDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3716
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isImsSsBeUsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3717
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v0

    .line 3720
    :cond_0
    move-object v0, p1

    .line 3722
    .local v0, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtForbiddenWhenVolteSwitchOff()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3723
    const-string v1, "UtForbiddenWhenVolteSwitchOff"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3726
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVolteSwitchOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3727
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3728
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v0, :cond_1

    .line 3729
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3735
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->checkUtForbiddenDate()V

    .line 3739
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->isSsUseUtInterface(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3740
    const-string v1, "Ut forbidden"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3742
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3743
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v0, :cond_2

    .line 3744
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3750
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardTypePreferToUseUT()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3751
    const-string v1, "this card is not prefer to use UT"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3753
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3754
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v0, :cond_3

    .line 3755
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3759
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardMccMncPreferToUseUT()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3760
    const-string v1, "this card MCC MNC is not prefer to use UT"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3762
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3763
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v0, :cond_4

    .line 3764
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3769
    :cond_4
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->isSSUseCsOnly(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3770
    const-string v1, "this ut type use cs only"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3772
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3773
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v0, :cond_5

    .line 3774
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3779
    :cond_5
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardMccMncPreferToUseUT()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->isSSForbidFallbackCS(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3780
    const-string v1, "this ut type is forbided fallback cs"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3782
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectUT(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3783
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v0, :cond_6

    .line 3784
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3790
    :cond_6
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    .line 3791
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z

    if-nez v1, :cond_7

    .line 3792
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3793
    const-string v1, "Ut Not Use Default APN, but has no Ut APN"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 3794
    :cond_7
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtSupportedByCurrentBearer()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3795
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3796
    const-string v1, "Ut Not Use Default APN, but current bearer not support ut"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 3799
    :cond_8
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtSubscribed()Z

    move-result v1

    if-nez v1, :cond_c

    .line 3800
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v1

    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    if-ne v1, v3, :cond_9

    const/16 v1, 0x14

    if-eq p2, v1, :cond_a

    :cond_9
    const/4 v1, 0x3

    if-ne p2, v1, :cond_b

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 3802
    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRSourceMode()I

    move-result v1

    if-ne v1, v2, :cond_b

    .line 3803
    :cond_a
    const-string v1, "CallWaitingMode or OIRMode is config UE base, so keep UE base though noVolte subscibed"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 3805
    :cond_b
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3806
    const-string v1, "Ut Not Use Default APN, but ut service not subscibed"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3812
    :cond_c
    :goto_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v0, :cond_d

    .line 3813
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3819
    :cond_d
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v1

    .line 3820
    .local v1, "isUtCanUseWifi":Z
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v3

    .line 3831
    .local v3, "isWifiConnected":Z
    if-eqz v1, :cond_e

    if-eqz v3, :cond_e

    .line 3832
    const-string v2, "wifi has connected, Ut will use wifi link"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 3833
    :cond_e
    if-nez v1, :cond_11

    if-eqz v3, :cond_11

    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->isSsUseUtInterface(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3836
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    if-nez v4, :cond_f

    .line 3837
    if-eqz p3, :cond_13

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataSwitchOn()Z

    move-result v4

    if-nez v4, :cond_13

    .line 3838
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3839
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    goto :goto_1

    .line 3841
    :cond_f
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz p3, :cond_10

    .line 3843
    const-string v2, "tip user to diconnect wifi"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 3847
    :cond_10
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    goto :goto_1

    .line 3852
    :cond_11
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataSwitchOn()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->isSsUseUtInterface(I)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    if-nez v4, :cond_13

    .line 3854
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz p3, :cond_12

    .line 3855
    const-string v4, "Show a dialog to notice user to turn data switch on"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3858
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3860
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    goto :goto_1

    .line 3864
    :cond_12
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3870
    :cond_13
    :goto_1
    return-object v0
.end method

.method private domainSelect(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3878
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3880
    .local v0, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    if-nez p1, :cond_0

    .line 3881
    const-string v1, "cmd is null. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3883
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3886
    :cond_0
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/4 v2, -0x1

    if-eq v2, v1, :cond_1

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    if-ne v2, v1, :cond_2

    .line 3887
    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3890
    :cond_2
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    return-object v1
.end method

.method private endConnectivityIfNeeded(I)V
    .locals 2
    .param p1, "networkType"    # I

    .line 2459
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->checkNetworkAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xcap connectivity is available "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", need to release"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2461
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 2463
    :cond_0
    return-void
.end method

.method private endImsConnectivity()V
    .locals 4

    .line 5155
    nop

    .line 5156
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5158
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const-string v1, "endImsConnectivity"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5161
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    .line 5162
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5165
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 5166
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5170
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v2, :cond_1

    .line 5171
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 5172
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5175
    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->hasSetNetworkAsDefault:Z

    if-eqz v3, :cond_1

    .line 5176
    const-string v3, "clear default network for host"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5178
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 5180
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->hasSetNetworkAsDefault:Z

    .line 5185
    :cond_1
    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v2, :cond_2

    .line 5186
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->setUtOverWifiTunnelUpFlag(Z)V

    .line 5190
    :cond_2
    return-void
.end method

.method private ensureRouteToHost(Ljava/net/InetAddress;)Z
    .locals 5
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .line 5563
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5564
    return v0

    .line 5568
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtAPNConectionType()I

    move-result v1

    .line 5572
    .local v1, "utAPNType":I
    nop

    .line 5573
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 5575
    .local v2, "connMgr":Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_1

    .line 5576
    invoke-virtual {v2, v1, p1}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5577
    const/4 v0, 0x1

    return v0

    .line 5579
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureRouteToHost fail,  inetAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5580
    return v0

    .line 5582
    .end local v2    # "connMgr":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    .line 5583
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureRouteToHost e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5584
    return v0
.end method

.method private extractParametersForChr(BBI)Lcom/huawei/ims/UtCHRData;
    .locals 22
    .param p1, "isVowifiUt"    # B
    .param p2, "addressType"    # B
    .param p3, "failReason"    # I

    move-object/from16 v0, p0

    .line 6701
    const/4 v1, 0x0

    .line 6702
    .local v1, "utChrData":Lcom/huawei/ims/UtCHRData;
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v2

    .line 6703
    .local v2, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v2, :cond_0

    .line 6704
    const-string v3, "extractParametersForChr"

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6705
    iget v3, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    int-to-byte v3, v3

    .line 6706
    .local v3, "operationType":B
    iget-object v4, v0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v4

    int-to-byte v15, v4

    .line 6707
    .local v15, "apnType":B
    iget-object v4, v0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v7

    .line 6708
    .local v7, "canUseWifi":B
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v8

    .line 6709
    .local v8, "mobileDataConneted":B
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v9

    .line 6710
    .local v9, "wifiConnected":B
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v4

    int-to-byte v14, v4

    .line 6711
    .local v14, "vowifiDomain":B
    iget-object v4, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->toString()Ljava/lang/String;

    move-result-object v17

    .line 6712
    .local v17, "dcState":Ljava/lang/String;
    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v4}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v4

    int-to-byte v13, v4

    .line 6713
    .local v13, "subId":B
    new-instance v18, Lcom/huawei/ims/UtCHRData;

    sget v4, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    int-to-byte v12, v4

    move-object/from16 v4, v18

    move v5, v3

    move v6, v15

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v16, v12

    move v12, v13

    move/from16 v19, v13

    move/from16 v13, v16

    .end local v13    # "subId":B
    .local v19, "subId":B
    move/from16 v20, v14

    .end local v14    # "vowifiDomain":B
    .local v20, "vowifiDomain":B
    move/from16 v21, v15

    move/from16 v15, p3

    .end local v15    # "apnType":B
    .local v21, "apnType":B
    move-object/from16 v16, v17

    invoke-direct/range {v4 .. v16}, Lcom/huawei/ims/UtCHRData;-><init>(BBBBBBBBBBILjava/lang/String;)V

    move-object/from16 v1, v18

    .line 6717
    .end local v3    # "operationType":B
    .end local v7    # "canUseWifi":B
    .end local v8    # "mobileDataConneted":B
    .end local v9    # "wifiConnected":B
    .end local v17    # "dcState":Ljava/lang/String;
    .end local v19    # "subId":B
    .end local v20    # "vowifiDomain":B
    .end local v21    # "apnType":B
    :cond_0
    return-object v1
.end method

.method private getCallWaitingAction(Z)I
    .locals 1
    .param p1, "isEnable"    # Z

    .line 6278
    if-eqz p1, :cond_0

    .line 6279
    const/4 v0, 0x1

    return v0

    .line 6281
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getCardMccMnc()Ljava/lang/String;
    .locals 7

    .line 3979
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 3980
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 3983
    .local v1, "simOperator":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3985
    return-object v2

    .line 3988
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simOperator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3990
    const/4 v3, 0x0

    .line 3993
    .local v3, "mccMnc":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-ne v5, v4, :cond_1

    .line 3994
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .end local v3    # "mccMnc":Ljava/lang/String;
    .local v2, "mccMnc":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 3996
    .end local v2    # "mccMnc":Ljava/lang/String;
    .restart local v3    # "mccMnc":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ne v5, v4, :cond_2

    .line 3997
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4006
    .end local v3    # "mccMnc":Ljava/lang/String;
    .restart local v2    # "mccMnc":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4008
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mccMnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4010
    return-object v2

    .line 4001
    .end local v2    # "mccMnc":Ljava/lang/String;
    .restart local v3    # "mccMnc":Ljava/lang/String;
    :cond_2
    const-string v4, "mccMnc error: Get wrong MCC MNC "

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4003
    return-object v2
.end method

.method private getDefaultDataSubId()I
    .locals 3

    .line 5528
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 5529
    .local v0, "subId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultDataSubId: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5530
    return v0
.end method

.method private getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 1646
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method private getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .locals 4

    .line 2074
    const/4 v0, 0x0

    .line 2076
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2077
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2078
    const-string v2, "getFirstUtCmd mUtCmdQueue isEmpty"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2080
    const/4 v2, 0x0

    monitor-exit v1

    return-object v2

    .line 2083
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-object v0, v2

    .line 2084
    monitor-exit v1

    .line 2086
    return-object v0

    .line 2084
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getHostByName(Ljava/lang/String;Landroid/net/Network;)Ljava/net/InetAddress;
    .locals 5
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "network"    # Landroid/net/Network;

    .line 5536
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5537
    return-object v1

    .line 5540
    :cond_0
    move-object v0, v1

    .line 5544
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-eqz p2, :cond_1

    .line 5545
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 5548
    :catch_0
    move-exception v2

    .line 5549
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get inet address for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Unknown host"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5551
    const/16 v3, 0x3eb

    const/4 v4, -0x1

    invoke-direct {p0, v4, v4, v3}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 5554
    return-object v1

    .line 5555
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :cond_1
    :goto_0
    nop

    .line 5557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHostByName inetAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5559
    return-object v0
.end method

.method private getHostNameAndAddRoute(Landroid/net/Network;Ljava/lang/String;)Z
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "serviceAddr"    # Ljava/lang/String;

    .line 2661
    if-nez p1, :cond_0

    .line 2662
    const-string v0, "network is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2663
    const/4 v0, 0x0

    return v0

    .line 2665
    :cond_0
    const/4 v0, 0x0

    .line 2666
    .local v0, "inetAddress":Ljava/net/InetAddress;
    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    iget v2, p1, Landroid/net/Network;->netId:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2667
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/net/InetAddress;

    .line 2668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " InetAddress get from local map."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 2670
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/huawei/ims/HwImsUtImpl;->getHostByName(Ljava/lang/String;Landroid/net/Network;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2671
    if-eqz v0, :cond_2

    .line 2672
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " InetAddress get from host, and save in local map."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2676
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->ensureRouteToHost(Ljava/net/InetAddress;)Z

    move-result v1

    return v1
.end method

.method private static getIdForRequest()I
    .locals 2

    .line 4534
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    .line 4536
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 4537
    const/4 v0, 0x0

    sput v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    .line 4540
    :cond_0
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    return v0
.end method

.method private getNetworkForDefaultApn()Landroid/net/Network;
    .locals 2

    .line 2583
    const/4 v0, -0x1

    .line 2584
    .local v0, "type":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2585
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2586
    const/4 v0, 0x1

    .line 2589
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2590
    const/4 v0, 0x0

    .line 2593
    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v1

    return-object v1
.end method

.method private getNetworkForType(I)Landroid/net/Network;
    .locals 2
    .param p1, "type"    # I

    .line 2596
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2597
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v1

    return-object v1
.end method

.method private getNoReplyTimer(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 4
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2899
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getDefaultNoReplyTimer()I

    move-result v0

    .line 2900
    .local v0, "time":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getDefaultNeedNoReplyTimer()I

    move-result v1

    .line 2901
    .local v1, "deactNoReplyTime":I
    iget-boolean v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    const/4 v3, -0x1

    if-nez v2, :cond_0

    if-eq v3, v1, :cond_0

    .line 2902
    move v0, v1

    .line 2904
    :cond_0
    if-nez v0, :cond_1

    .line 2906
    const/4 v0, -0x1

    goto :goto_0

    .line 2907
    :cond_1
    if-ne v3, v0, :cond_3

    .line 2909
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utTimer:I

    .line 2910
    if-nez v0, :cond_3

    .line 2911
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2917
    :pswitch_0
    const/4 v0, -0x1

    .line 2918
    goto :goto_0

    .line 2913
    :cond_2
    const/16 v0, 0x14

    .line 2914
    nop

    .line 2924
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNoReplyTimer  time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2925
    return v0

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getUtAPNCapabilities()I
    .locals 2

    .line 5610
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 5611
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5615
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    if-nez v0, :cond_1

    .line 5616
    const/16 v0, 0xc

    return v0

    .line 5619
    :cond_1
    const/4 v0, 0x4

    return v0

    .line 5613
    :cond_2
    :goto_0
    const/16 v0, 0x9

    return v0
.end method

.method private getUtAPNConectionType()I
    .locals 2

    .line 5625
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v0, :cond_0

    .line 5626
    const/16 v0, 0x2f

    return v0

    .line 5627
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 5628
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 5630
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    if-nez v0, :cond_2

    .line 5631
    const/4 v0, 0x0

    return v0

    .line 5633
    :cond_2
    const/16 v0, 0xb

    return v0

    .line 5629
    :cond_3
    :goto_0
    const/16 v0, 0x2d

    return v0
.end method

.method private getUtDomain()I
    .locals 5

    .line 5293
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 5294
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    .line 5295
    .local v1, "isRoaming":Z
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/ims/HwImsManager;->getWfcMode(Landroid/content/Context;ZI)I

    move-result v2

    .line 5296
    .local v2, "utDomain":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUtOverWifiEnabled isRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5297
    return v2
.end method

.method private handle403Error(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V
    .locals 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .line 3240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter handle403Error, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3242
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mStatus:I

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 3244
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v0, :cond_0

    .line 3245
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 3248
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3249
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->saveCTCardVolteFlag(Z)V

    .line 3250
    const-string v0, "CT Card receive 403, notify HWCardManager"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3252
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 3254
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3255
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    .line 3256
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtForbiddenAlarm()V

    .line 3261
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->transferCmdFromRetryQueueToUtCmdQueue()V

    .line 3264
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3265
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3267
    .local v2, "size":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 3268
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3269
    .local v3, "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v4, v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3267
    .end local v3    # "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3271
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3273
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 3274
    return-void

    .line 3271
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handle409Error(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)Z
    .locals 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .line 3278
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 3283
    :cond_0
    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mStatus:I

    const/4 v2, -0x1

    invoke-direct {p0, v2, v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 3285
    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 3311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle409Error: not support ut type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3295
    :cond_1
    :pswitch_0
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_3

    .line 3296
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->getSSConflictPhraseText()Ljava/lang/String;

    move-result-object v1

    .line 3297
    .local v1, "phraseText":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle409Error: phraseText = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3298
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3299
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x324

    invoke-direct {v3, v4, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v3

    .line 3301
    .local v0, "error":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ut409perfix"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3302
    iput-object v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 3303
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3304
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3305
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 3306
    return v2

    .line 3308
    .end local v0    # "error":Landroid/telephony/ims/ImsReasonInfo;
    .end local v1    # "phraseText":Ljava/lang/String;
    :cond_2
    nop

    .line 3315
    :cond_3
    :goto_0
    return v0

    .line 3279
    :cond_4
    :goto_1
    const-string v1, "handle409Error: cmd or ut is null, return"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3280
    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleClear(I)V
    .locals 7
    .param p1, "iLevel"    # I

    .line 6065
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 6067
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 6068
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->clearCTCardVolteFlag()V

    .line 6070
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6071
    if-ne p1, v0, :cond_1

    .line 6072
    const-string v1, "handleClear, set mIsUtForbidden false"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6073
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 6074
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    goto :goto_0

    .line 6078
    :cond_0
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 6081
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    .line 6084
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    .line 6086
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 6089
    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 6092
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 6093
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6095
    .local v3, "size":I
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 6096
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 6098
    .local v5, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v6, v5, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v6, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 6095
    .end local v5    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6101
    .end local v4    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6102
    .end local v3    # "size":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6104
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v1, :cond_3

    .line 6105
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v1}, Lcom/huawei/ims/GbaAuth;->clear()V

    goto :goto_2

    .line 6107
    :cond_3
    const-string v1, "mGbaAuth is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6110
    :goto_2
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 6114
    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_4

    if-ne v0, p1, :cond_4

    .line 6115
    const-string v0, "handleClear: reset current sub id to default"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6116
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setCurrentSubId(I)V

    .line 6121
    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6124
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 6125
    return-void

    .line 6102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleConnectivity(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 5813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleConnectivity mImsDCState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5815
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5821
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5822
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    const/16 v1, 0x2f

    .line 5823
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->checkNetworkAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5824
    const-string v1, "handleConnectivity receive CONNECTIVITY_ACTION and need to release requestNetwork "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5825
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 5828
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    .line 5829
    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v1

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v1, v2, :cond_2

    .line 5830
    const-string v1, "Data has connected, but not for this sub, return"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5831
    return-void

    .line 5835
    :cond_2
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-eq v1, v2, :cond_3

    .line 5836
    const-string v1, "handleConnectivity: Ims connection is being established, do not use default data connection."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5837
    return-void

    .line 5842
    :cond_3
    if-eqz v0, :cond_4

    .line 5843
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v1, v2, :cond_4

    .line 5844
    const-string v1, "Data has connected, the SS can go UT interface"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5845
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v1

    .line 5846
    .local v1, "network":Landroid/net/Network;
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 5847
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5848
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopTemporaryDcAlarm()V

    .line 5849
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopDcAlarm()V

    .line 5850
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5854
    .end local v1    # "network":Landroid/net/Network;
    :cond_4
    return-void

    .line 5816
    .end local v0    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_5
    :goto_0
    const-string v0, "network not available"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5818
    return-void
.end method

.method private handleDcTimeOut()V
    .locals 4

    .line 5857
    const-string v0, "handleDcTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5859
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5861
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_0

    .line 5862
    const-string v1, "[error]cmd is null, but receive message of dc time out!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5864
    return-void

    .line 5867
    :cond_0
    const-string v1, "handle UT data connection time out and finish data connection"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5870
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x3ea

    invoke-direct {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 5873
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5875
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 5877
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v1, :cond_1

    .line 5878
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v1}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 5881
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5882
    return-void
.end method

.method private handleGetCWResponseFromCs(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1888
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1889
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1891
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCWResponseFromCs: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1895
    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1898
    return-void

    .line 1901
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, [I

    if-eqz v2, :cond_2

    .line 1902
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1905
    .local v2, "cwArray":[I
    if-nez v2, :cond_1

    .line 1906
    :try_start_0
    const-string v3, "cwArray is null"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1908
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1910
    return-void

    .line 1918
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1913
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCBResponseFromCs, cwArray[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cwArray[1]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1915
    aget v3, v2, v4

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v3

    .line 1917
    .local v3, "enable":Z
    aget v4, v2, v5

    invoke-direct {p0, v3, v4, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCallWaitingDone(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1922
    .end local v3    # "enable":Z
    goto :goto_1

    .line 1918
    :goto_0
    nop

    .line 1919
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCWResponseFromCs: improper result: err ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1921
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v4}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1923
    .end local v2    # "cwArray":[I
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    goto :goto_2

    .line 1924
    :cond_2
    const-string v2, "ar.result is not int[]"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1926
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1928
    :goto_2
    return-void
.end method

.method private handleGetCallWaitingDone(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "type"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 6132
    const/4 v0, 0x0

    .line 6134
    .local v0, "isEnable":Z
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    and-int/lit8 v2, p2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 6137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get call waiting success, isEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6139
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6140
    invoke-direct {p0, v0, p3}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToImsSdk(ZLandroid/os/Message;)Z

    goto :goto_1

    .line 6141
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6142
    invoke-direct {p0, v0, p3}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToCS(ZLandroid/os/Message;)Z

    goto :goto_1

    .line 6144
    :cond_2
    const-string v1, "call waiting does not sync to modem, response to target"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6146
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseCWInts(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object v1

    .line 6147
    .local v1, "ret":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6149
    .end local v1    # "ret":Ljava/lang/Object;
    :goto_1
    return-void
.end method

.method private handleImsConnectionFailure()V
    .locals 2

    .line 6443
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 6446
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6447
    const-string v0, "handleImsConnectionFailure, set mIsUtForbidden true"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6448
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 6449
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    .line 6450
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtForbiddenAlarm()V

    .line 6454
    :cond_0
    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 6459
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6461
    const-string v0, "handle UT data connectionreceived INTENT_IMS_CONNECTION_TIMEOUT,isUtOverWifiEnabled return true."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6462
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenImsActFail()V

    .line 6463
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    goto :goto_0

    .line 6465
    :cond_1
    const-string v0, "handle UT data connection received INTENT_IMS_CONNECTION_TIMEOUT,isUtOverWifiEnabled return false,handoverSSTick."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6467
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 6468
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick()V

    .line 6471
    :goto_0
    return-void
.end method

.method private handleImsDcTimeOut()V
    .locals 1

    .line 5597
    const-string v0, "handleImsDcTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5599
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsConnectionFailure()V

    .line 5601
    return-void
.end method

.method private handleImsGetImpuDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 4268
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4270
    .local v0, "impu":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    .line 4271
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4270
    invoke-virtual {v1, v2, v0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4274
    sget v1, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v1, v2, :cond_0

    .line 4275
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpu()I

    goto :goto_0

    .line 4277
    :cond_0
    const-string v1, "handleImsGetImpuDone: skip set impu to sdk because it\'s not the current sub"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4280
    :goto_0
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1663
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_8

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 1857
    const-string v0, "imsut not support this msg"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1850
    :pswitch_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTemporaryUtStayTimeOut()V

    .line 1851
    goto/16 :goto_2

    .line 1846
    :pswitch_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTemporaryDcTimeOut()V

    .line 1847
    goto/16 :goto_2

    .line 1843
    :pswitch_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTearDownTunnelConnectionTimeout()V

    .line 1844
    goto/16 :goto_2

    .line 1840
    :pswitch_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTunnelSetupTimeout()V

    .line 1841
    goto/16 :goto_2

    .line 1837
    :pswitch_4
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsDcTimeOut()V

    .line 1838
    goto/16 :goto_2

    .line 1834
    :pswitch_5
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtRetryAlarmTimeOut()V

    .line 1835
    goto/16 :goto_2

    .line 1831
    :pswitch_6
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtTimeOut()V

    .line 1832
    goto/16 :goto_2

    .line 1828
    :pswitch_7
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleDcTimeOut()V

    .line 1829
    goto/16 :goto_2

    .line 1810
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCLIRModeToImsSdkDone(Landroid/os/Message;)V

    .line 1811
    goto/16 :goto_2

    .line 1806
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingToCsDone(Landroid/os/Message;)V

    .line 1807
    goto/16 :goto_2

    .line 1803
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingToImsSdkDone(Landroid/os/Message;)V

    .line 1804
    goto/16 :goto_2

    .line 1800
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSetCWFromCs(Landroid/os/Message;)V

    .line 1801
    goto/16 :goto_2

    .line 1797
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCWResponseFromCs(Landroid/os/Message;)V

    .line 1798
    goto/16 :goto_2

    .line 1824
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->updateCLIR(Landroid/os/Message;)V

    .line 1825
    goto/16 :goto_2

    .line 1821
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->queryCLIR(Landroid/os/Message;)V

    .line 1822
    goto/16 :goto_2

    .line 1817
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->updateCallWaiting(Landroid/os/Message;)V

    .line 1818
    goto/16 :goto_2

    .line 1814
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->queryCallWaiting(Landroid/os/Message;)V

    .line 1815
    goto/16 :goto_2

    .line 1784
    :pswitch_11
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 1786
    .local v0, "mCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    const/4 v1, 0x0

    .line 1787
    .local v1, "isUtRetryCmdEmpty":Z
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1788
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    move v1, v3

    .line 1789
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1790
    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    .line 1792
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    goto/16 :goto_2

    .line 1789
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1780
    .end local v0    # "mCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .end local v1    # "isUtRetryCmdEmpty":Z
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleImsGetImpuDone(Landroid/os/Message;)V

    .line 1781
    goto/16 :goto_2

    .line 1777
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSimCardAbsent(Landroid/os/Message;)V

    .line 1778
    goto/16 :goto_2

    .line 1774
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSimRecordsLoaded(Landroid/os/Message;)V

    .line 1775
    goto/16 :goto_2

    .line 1771
    :pswitch_15
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtInit()V

    .line 1772
    goto/16 :goto_2

    .line 1767
    :pswitch_16
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleClear(I)V

    .line 1769
    goto/16 :goto_2

    .line 1763
    :pswitch_17
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtCmdQueue()V

    .line 1764
    goto/16 :goto_2

    .line 1743
    :pswitch_18
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 1745
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_0

    .line 1746
    const-string v1, "there is no cmd in queue"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1748
    return-void

    .line 1751
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1752
    const-string v1, "The network is connected and continues to be connected."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1753
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->keepAliveImsConnectivity()V

    goto/16 :goto_2

    .line 1757
    :cond_1
    const-string v1, "The network is disconnected."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1761
    goto/16 :goto_2

    .line 1714
    .end local v0    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :pswitch_19
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    .line 1715
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 1717
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v2, 0x3ec

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 1722
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1724
    const-string v0, "received SUB_EVENT_IMS_UT_REQ_ROUT_HOST_FAILED,isUtOverWifiEnabled return true."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1726
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v0, :cond_2

    .line 1727
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenTunnelSetupFail()V

    goto :goto_0

    .line 1729
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenImsActFail()V

    .line 1732
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    goto/16 :goto_2

    .line 1736
    :cond_3
    const-string v0, "handle UT data connection fall back cs for ensure route fail"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1738
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick()V

    .line 1741
    goto/16 :goto_2

    .line 1706
    :pswitch_1a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 1707
    .local v0, "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v1, v2, :cond_4

    .line 1708
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 1710
    :cond_4
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtCmdQueue()V

    .line 1711
    goto/16 :goto_2

    .line 1670
    .end local v0    # "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    .line 1673
    .local v0, "network":Landroid/net/Network;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafSrvAddr()Ljava/lang/String;

    move-result-object v2

    .line 1674
    .local v2, "utNafSrvAddr":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->getHostNameAndAddRoute(Landroid/net/Network;Ljava/lang/String;)Z

    move-result v3

    .line 1676
    .local v3, "nafRouteAddress":Z
    const/4 v4, 0x0

    .line 1677
    .local v4, "bsfRouteAddress":Z
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->isUtBsfAuthBeUsed()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1678
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfSrvAddr()Ljava/lang/String;

    move-result-object v5

    .line 1679
    .local v5, "utBsfSrvAddr":Ljava/lang/String;
    invoke-direct {p0, v0, v5}, Lcom/huawei/ims/HwImsUtImpl;->getHostNameAndAddRoute(Landroid/net/Network;Ljava/lang/String;)Z

    move-result v4

    .line 1680
    .end local v5    # "utBsfSrvAddr":Ljava/lang/String;
    goto :goto_1

    .line 1681
    :cond_5
    const-string v5, "ut not need bsf auth."

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1682
    const/4 v4, 0x1

    .line 1686
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle UT data connection ensure route to host and result is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1687
    iget-boolean v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v5, :cond_6

    .line 1688
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->setUtOverWifiTunnelUpFlag(Z)V

    .line 1690
    :cond_6
    if-eqz v3, :cond_7

    .line 1691
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    .line 1693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HwImsUtImpl handleUt SUB_EVENT_IMS_UT_GET_HOST_NAME_DONE and network is : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1694
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 1695
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 1696
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v1, :cond_9

    .line 1697
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelConnectionAlarm()V

    goto :goto_2

    .line 1700
    :cond_7
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 1703
    goto :goto_2

    .line 1665
    .end local v0    # "network":Landroid/net/Network;
    .end local v2    # "utNafSrvAddr":Ljava/lang/String;
    .end local v3    # "nafRouteAddress":Z
    .end local v4    # "bsfRouteAddress":Z
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UTData;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSSConfCb(Lcom/huawei/ims/HwImsUtImpl$UTData;)V

    .line 1666
    goto :goto_2

    .line 1854
    :cond_8
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->processECTCallBack(Landroid/os/Message;)V

    .line 1855
    nop

    .line 1860
    :cond_9
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x29
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

.method private handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3898
    const/4 v0, 0x0

    .line 3900
    .local v0, "ret":I
    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3901
    const-string v2, "utcmd is null. "

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3903
    return v1

    .line 3907
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    .line 3916
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v3

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3918
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Domain select by ss is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3921
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType:[I

    iget-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3931
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 3932
    const/4 v0, 0x1

    goto :goto_0

    .line 3925
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    move-result v0

    .line 3926
    if-ne v1, v0, :cond_1

    .line 3927
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 3937
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    .line 3945
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleSciSSConfCb(Lcom/huawei/ims/HwImsUtImpl$UTData;)V
    .locals 3
    .param p1, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .line 3184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSciSSConfCb ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3186
    if-nez p1, :cond_0

    .line 3187
    const-string v0, "handleSciSSConfCb, UTData is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3189
    return-void

    .line 3192
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 3200
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v0, :cond_6

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    if-ne v1, v2, :cond_6

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 3207
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    .line 3209
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtAlarm()V

    .line 3212
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UTData;->mStatus:I

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 3214
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UTData;->mStatus:I

    if-eqz v1, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/16 v2, 0x193

    if-eq v1, v2, :cond_4

    const/16 v2, 0x199

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 3226
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUt409ShowPhrase()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handle409Error(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3227
    goto :goto_1

    .line 3234
    :cond_3
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSSConfCbUndefinedError(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V

    goto :goto_1

    .line 3222
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handle403Error(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V

    .line 3223
    goto :goto_1

    .line 3216
    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSSConfCbSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V

    .line 3217
    nop

    .line 3237
    :goto_1
    return-void

    .line 3201
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this Ut data is useless, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3203
    return-void
.end method

.method private handleSciSSConfCbOfCWSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V
    .locals 4
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .line 6735
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6736
    .local v0, "onComplete":Landroid/os/Message;
    if-nez v0, :cond_0

    .line 6737
    const-string v1, "onComplete is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6739
    :cond_0
    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v1, :cond_2

    .line 6740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get cw state, cmd.mToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6741
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 6742
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getCallWaitingEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 6743
    .local v1, "flag":Z
    invoke-direct {p0, v1, v3, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCallWaitingDone(ZILandroid/os/Message;)V

    .line 6744
    .end local v1    # "flag":Z
    goto :goto_0

    .line 6745
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6746
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->saveCTCardVolteFlag(Z)V

    goto :goto_0

    .line 6750
    :cond_2
    iget-boolean v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-direct {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSetCallWaitingDone(ZLandroid/os/Message;)V

    .line 6752
    :cond_3
    :goto_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 6753
    return-void
.end method

.method private handleSciSSConfCbSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V
    .locals 12
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .line 3358
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->setUtDataExpireTime(I)V

    .line 3360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle UT data connection handleSciSSConfCbSuccessfully : cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3363
    const/4 v0, 0x0

    .line 3365
    .local v0, "flag":Z
    const/4 v1, 0x6

    :try_start_0
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 3578
    :pswitch_0
    const-string v2, "not support ssType"

    goto/16 :goto_4

    .line 3436
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSSConfCbOfCWSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V

    .line 3438
    goto/16 :goto_5

    .line 3466
    :pswitch_2
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v2, :cond_0

    .line 3467
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->getCallBarringEnable(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 3468
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCLCK(Ljava/lang/Boolean;)[Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    .line 3470
    .local v2, "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 3471
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3472
    .end local v2    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    goto/16 :goto_5

    .line 3474
    :cond_0
    const-string v2, "OIP OCB: don\'t support this OPRATOR"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3476
    goto/16 :goto_5

    .line 3454
    :pswitch_3
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v2, :cond_1

    .line 3455
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->getCallBarringEnable(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 3456
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCLCK(Ljava/lang/Boolean;)[Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    .line 3458
    .restart local v2    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 3459
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3460
    .end local v2    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    goto/16 :goto_5

    .line 3462
    :cond_1
    const-string v2, "OIP ICB: don\'t support this OPRATOR"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3464
    goto/16 :goto_5

    .line 3480
    :pswitch_4
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isCFNRcChangeWithCFNL()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3481
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-ne v4, v2, :cond_3

    .line 3483
    const/4 v5, 0x1

    iget v6, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    iget-object v7, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    .line 3488
    invoke-static/range {v5 .. v11}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNew(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v2

    .line 3495
    .local v2, "result":I
    const/16 v3, 0x8

    iput v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    .line 3496
    if-ne v4, v2, :cond_2

    .line 3499
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallDiversion fail, SSCONF_CDIV_REASON_CFNL=1, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3505
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtAlarm()V

    .line 3507
    .end local v2    # "result":I
    :goto_0
    goto/16 :goto_5

    .line 3508
    :cond_3
    const-string v2, "CFNRc: don\'t support this OPRATOR"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3510
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3512
    goto/16 :goto_5

    .line 3519
    :cond_4
    :pswitch_5
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3520
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3521
    goto/16 :goto_5

    .line 3546
    :pswitch_6
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-ne v4, v2, :cond_8

    .line 3547
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isProtocolIR92V10orGreater()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3548
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3549
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_5

    .line 3551
    :cond_5
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getNoReplyTimer(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    move-result v2

    .line 3552
    .local v2, "time":I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_6

    .line 3554
    const-string v3, "don\'t set the NRT when set the CFNR"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3555
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3556
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3557
    goto/16 :goto_5

    .line 3560
    :cond_6
    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNoReplyTimer(I)I

    move-result v3

    .line 3561
    .local v3, "result":I
    iput v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    .line 3563
    if-ne v4, v3, :cond_7

    .line 3564
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallDiversionNoReplyTimer fail, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3568
    :cond_7
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtAlarm()V

    .line 3570
    .end local v2    # "time":I
    .end local v3    # "result":I
    :goto_1
    goto/16 :goto_5

    .line 3572
    :cond_8
    const-string v2, "CFNR GET: don\'t support this OPRATOR"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3574
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3576
    goto/16 :goto_5

    .line 3531
    :pswitch_7
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-ne v4, v2, :cond_a

    .line 3532
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_9

    .line 3533
    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->saveCTCardVolteFlag(Z)V

    .line 3535
    :cond_9
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3536
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_5

    .line 3538
    :cond_a
    const-string v2, "CF SET: don\'t support this OPRATOR"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3540
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3542
    goto/16 :goto_5

    .line 3440
    :pswitch_8
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v2, :cond_c

    .line 3441
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForwardEx(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v2

    .line 3442
    .local v2, "imsCallForwardInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3443
    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->saveCTCardVolteFlag(Z)V

    .line 3445
    :cond_b
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 3446
    .end local v2    # "imsCallForwardInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_2

    .line 3447
    :cond_c
    const-string v2, "CDIV PUT: don\'t support will handover to cs"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3450
    :goto_2
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3451
    goto/16 :goto_5

    .line 3423
    :pswitch_9
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v2, :cond_d

    .line 3424
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getTerminatingIdentityRestrictionEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 3425
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCOLR(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v2

    .line 3427
    .local v2, "colrInfo":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 3428
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3429
    .end local v2    # "colrInfo":Landroid/os/Bundle;
    goto/16 :goto_5

    .line 3430
    :cond_d
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3431
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3433
    goto/16 :goto_5

    .line 3391
    :pswitch_a
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    const/16 v5, 0x1f

    if-nez v2, :cond_f

    .line 3392
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getOriginatingIdentityRestrictionEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 3394
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getOIRDefaultBehavior()I

    move-result v2

    .line 3395
    .local v2, "mDefaultBehavior":I
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCLIR(Ljava/lang/Boolean;I)Landroid/os/Bundle;

    move-result-object v6

    .line 3397
    .local v6, "clirInfo":Landroid/os/Bundle;
    const-string v7, "queryClir"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 3399
    .local v7, "clirResponse":[I
    if-eqz v7, :cond_e

    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e

    aget v4, v7, v4

    if-eqz v4, :cond_e

    .line 3402
    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3403
    .local v4, "onComplete":Landroid/os/Message;
    iget-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 3404
    invoke-virtual {v8, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 3405
    .local v5, "response":Landroid/os/Message;
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3406
    aget v3, v7, v3

    invoke-direct {p0, v3, v5}, Lcom/huawei/ims/HwImsUtImpl;->syncCLIRModeToImsSdk(ILandroid/os/Message;)V

    .line 3407
    .end local v4    # "onComplete":Landroid/os/Message;
    .end local v5    # "response":Landroid/os/Message;
    goto :goto_3

    .line 3408
    :cond_e
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v6}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 3411
    :goto_3
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3412
    .end local v2    # "mDefaultBehavior":I
    .end local v6    # "clirInfo":Landroid/os/Bundle;
    .end local v7    # "clirResponse":[I
    goto/16 :goto_5

    .line 3414
    :cond_f
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3415
    .local v2, "onComplete":Landroid/os/Message;
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 3416
    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3417
    .local v3, "response":Landroid/os/Message;
    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    invoke-direct {p0, v4, v3}, Lcom/huawei/ims/HwImsUtImpl;->syncCLIRModeToImsSdk(ILandroid/os/Message;)V

    .line 3419
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3421
    .end local v2    # "onComplete":Landroid/os/Message;
    .end local v3    # "response":Landroid/os/Message;
    goto/16 :goto_5

    .line 3379
    :pswitch_b
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v2, :cond_10

    .line 3380
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getTerminatingIdentityPresentationEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 3381
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCOLP(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v2

    .line 3383
    .local v2, "colpInfo":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 3384
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3385
    .end local v2    # "colpInfo":Landroid/os/Bundle;
    goto/16 :goto_5

    .line 3386
    :cond_10
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3387
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3389
    goto :goto_5

    .line 3367
    :pswitch_c
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v2, :cond_11

    .line 3368
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getOriginatingIdentityPresentationEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 3369
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCLIP(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v2

    .line 3370
    .local v2, "clipInfo":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 3371
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3372
    .end local v2    # "clipInfo":Landroid/os/Bundle;
    goto :goto_5

    .line 3374
    :cond_11
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3375
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3377
    goto :goto_5

    .line 3578
    :goto_4
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3580
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 3581
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "flag":Z
    goto :goto_5

    .line 3588
    :catch_0
    move-exception v0

    .line 3589
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3591
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 3584
    :catch_1
    move-exception v0

    .line 3585
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3587
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3592
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_5
    nop

    .line 3595
    :goto_6
    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 3596
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private handleSciSSConfCbUndefinedError(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .line 3320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter handleSciSSConfCbUndefinedError, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3322
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v0, :cond_0

    .line 3323
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 3326
    :cond_0
    if-nez p1, :cond_1

    .line 3327
    return-void

    .line 3330
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    .line 3331
    :cond_2
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->saveCTCardVolteFlag(Z)V

    .line 3334
    :cond_3
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mStatus:I

    const/4 v2, -0x1

    invoke-direct {p0, v2, v2, v0}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 3336
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getUtRetryMaxCounts()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 3337
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isCmdGetResultFromSdkLocally(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3338
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    .line 3340
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transferCmdFromUtCmdQueueToRetryQueue(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3342
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->startUtRetryAlarm(I)V

    goto :goto_0

    .line 3345
    :cond_4
    const-string v0, "handle UT data connection fallback CS domain for ut fail"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3348
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3349
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 3351
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3354
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 3355
    return-void
.end method

.method private handleSetCWFromCs(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1931
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1932
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1934
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCWFromCs: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1937
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_0

    .line 1939
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v2

    .line 1941
    .local v2, "isEnalbe":Z
    invoke-direct {p0, v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSetCallWaitingDone(ZLandroid/os/Message;)V

    .line 1943
    .end local v2    # "isEnalbe":Z
    :goto_0
    return-void
.end method

.method private handleSetCallWaitingDone(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 6152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set call waiting success, isEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6154
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6155
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToImsSdk(ZLandroid/os/Message;)Z

    goto :goto_0

    .line 6156
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6157
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToCS(ZLandroid/os/Message;)Z

    goto :goto_0

    .line 6159
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseCWInts(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object v0

    .line 6161
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6163
    .end local v0    # "ret":Ljava/lang/Object;
    :goto_0
    return-void
.end method

.method private handleSimCardAbsent(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 4219
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleClear(I)V

    .line 4222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    .line 4224
    return-void
.end method

.method private handleSimRecordsLoaded(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 4078
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v1, v1, v2

    .line 4079
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4078
    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4080
    .local v0, "oldImsi":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 4081
    .local v1, "newImsi":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->spliceMncMcc()Ljava/lang/String;

    move-result-object v2

    .line 4084
    .local v2, "spliceMncMcc":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4085
    const-string v3, "Can\'t get current imsi from sim, return"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4087
    return-void

    .line 4091
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3, v1}, Lcom/huawei/ims/HwImsConfigImpl;->setCurrentImsi(Ljava/lang/String;)V

    .line 4092
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3, v2}, Lcom/huawei/ims/HwImsConfigImpl;->setSpliceMncMcc(Ljava/lang/String;)V

    .line 4094
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    .line 4099
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/ims/HwImsConfigImpl;->readCarrierConfig(Landroid/content/Context;)V

    .line 4103
    invoke-direct {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->isCardChange(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4104
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->clearSharedPreferences()V

    .line 4107
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v5, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    iget v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v5, v5, v6

    .line 4109
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4107
    invoke-virtual {v4, v5, v1, v6}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4111
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v5, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    iget v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 4113
    invoke-virtual {v6}, Lcom/huawei/ims/HwImsConfigImpl;->getImpuFromSIM()Ljava/lang/String;

    move-result-object v6

    .line 4114
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 4111
    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4118
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4119
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryUtApn()V

    .line 4124
    :cond_2
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    .line 4126
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 4129
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCallWaitingToCs()V

    .line 4132
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCLIRModeToImsSdk()V

    .line 4135
    sget v3, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    iget v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v3, v4, :cond_3

    .line 4136
    const-string v3, "handleSimRecordsLoaded: init sdk params when mCurrentSubId == mSubId"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4137
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initSciSSConfHs()V

    .line 4139
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsDataReg:Z

    if-eqz v3, :cond_4

    .line 4140
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->detectSimCardSubscriptionStatus()V

    .line 4142
    :cond_4
    return-void
.end method

.method private handleSyncCLIRModeToImsSdkDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 6350
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6351
    .local v0, "arSyncCLIR":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6353
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 6354
    const-string v2, "SyncCLIRModeToImsSdk FAIL"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6355
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6356
    return-void

    .line 6359
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 6360
    .local v2, "ret":Landroid/os/Bundle;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6361
    return-void
.end method

.method private handleSyncCallWaitingDone(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "msg"    # Landroid/os/Message;

    .line 6256
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6258
    .local v0, "arSyncCW":Landroid/os/AsyncResult;
    const-string v1, "sync call waiting has finished successfully."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6261
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCWInModem:Z

    .line 6264
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 6265
    const-string v1, "begin set call waiting to sharedpreference"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6267
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    .line 6269
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 6267
    invoke-virtual {v1, v2, p1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setBoolToSP(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 6272
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6273
    .local v1, "onComplete":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCWInts(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object v2

    .line 6274
    .local v2, "ret":Ljava/lang/Object;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6275
    return-void
.end method

.method private handleSyncCallWaitingToCsDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 6235
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6236
    .local v0, "arSyncCW":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6238
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 6239
    const-string v2, "SyncCallWaitingToCs FAIL"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6241
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6243
    return-void

    .line 6246
    :cond_0
    const-string v2, "sync call waiting to IMS SDK successfully"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6248
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 6250
    .local v2, "callWaitingAction":I
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v3

    .line 6252
    .local v3, "enable":Z
    invoke-direct {p0, v3, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingDone(ZLandroid/os/Message;)V

    .line 6253
    return-void
.end method

.method private handleSyncCallWaitingToImsSdkDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 6191
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6192
    .local v0, "arSyncCW":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6194
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 6195
    const-string v2, "SyncCallWaitingToImsSdk FAIL"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6197
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6199
    return-void

    .line 6202
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 6204
    .local v2, "callWaitingAction":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync call waiting to IMS SDK successfully, callWaitingAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6206
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v3

    .line 6218
    .local v3, "enable":Z
    invoke-direct {p0, v3, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingDone(ZLandroid/os/Message;)V

    .line 6219
    return-void
.end method

.method private handleTearDownTunnelConnectionTimeout()V
    .locals 3

    .line 5359
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_0

    .line 5360
    const-string v0, "handleTearDownTunnelConnectionTimeout - isVowifiPropOpened is flase, return"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5361
    return-void

    .line 5363
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5364
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 5366
    const-string v1, "restart wifi tunnel lifetime alarm."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5367
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelConnectionAlarm()V

    .line 5368
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelConnectionAlarm()V

    .line 5369
    return-void

    .line 5372
    :cond_1
    const-string v1, "tunnel lifetime is out, endImsConnectivity."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5374
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 5376
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    .line 5377
    return-void
.end method

.method private handleTempDcConnectionACT(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 1
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2507
    if-nez p1, :cond_0

    .line 2508
    const-string v0, "handleTempDcConnectionACT - ut cmd is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2509
    return-void

    .line 2511
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->processTemporarilyDcConnection()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2513
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUseDefaultBearForWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2514
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    goto :goto_0

    .line 2516
    :cond_1
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2517
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startTemporaryDCAlarm()V

    .line 2520
    :cond_2
    :goto_0
    return-void
.end method

.method private handleTemporaryDcTimeOut()V
    .locals 2

    .line 5931
    const-string v0, "handleTemporaryDcTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5932
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->recoverDefaultDataSub()V

    .line 5935
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5937
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_0

    .line 5938
    const-string v1, "[error]handleTemporaryDcTimeOut - cmd is null, but receive message of dc time out!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5940
    return-void

    .line 5943
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5945
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 5947
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v1, :cond_1

    .line 5948
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v1}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 5951
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5952
    return-void
.end method

.method private handleTemporaryUtStayTimeOut()V
    .locals 1

    .line 5999
    const-string v0, "handleTemporaryUtStayTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6001
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->recoverDefaultDataSub()V

    .line 6003
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->broadcastUtIdle()V

    .line 6004
    return-void
.end method

.method private handleTunnelSetupTimeout()V
    .locals 3

    .line 5395
    const-string v0, "handleTunnelSetupTimeout"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5397
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_0

    .line 5398
    const-string v0, "handleTunnelSetupTimeout - isVowifiPropOpened is false, return"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5399
    return-void

    .line 5402
    :cond_0
    const/4 v0, -0x1

    const/16 v1, 0x3ea

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 5405
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5407
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    .line 5408
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5410
    if-eqz v0, :cond_1

    .line 5413
    const-string v1, "handle UT data connection tunnel setup time out, endUtOverWifiConnectivity."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5414
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelConnectionAlarm()V

    .line 5415
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    .line 5416
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 5418
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenTunnelSetupFail()V

    .line 5419
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5421
    :cond_1
    return-void
.end method

.method private handleUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 6
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2161
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 2162
    const-string v0, "Can\'t start SS with Ut, will fallback to cs"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2164
    if-eqz p1, :cond_0

    .line 2165
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2166
    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 2169
    :cond_0
    return-void

    .line 2172
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initUtSDKWhenDomainSelectUt()V

    .line 2176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd.dcState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2179
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2448
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleTempDcConnectionACT(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2449
    return-void

    .line 2443
    :pswitch_1
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2444
    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 2446
    return-void

    .line 2440
    :pswitch_2
    goto/16 :goto_0

    .line 2438
    :pswitch_3
    return-void

    .line 2432
    :pswitch_4
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->processImsConnectivity()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2433
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2434
    return-void

    .line 2423
    :pswitch_5
    const-string v0, "Airplane mode is turned on, no longer trying volte ut and cs, return failure! "

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2424
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2425
    return-void

    .line 2404
    :pswitch_6
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2406
    const-string v0, "state IMS_DC_CELLULAR_PREF_IMSPDP_FAIL,send GENERIC_FAILURE to user."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2407
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2409
    return-void

    .line 2411
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiTunnelUp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2412
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2413
    goto/16 :goto_0

    .line 2415
    :cond_3
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2416
    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2417
    return-void

    .line 2395
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2398
    const-string v0, "handle UT data connection finish for IMS_DC_CELLULAR_PREF_TUNNEL_FAIL"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2400
    return-void

    .line 2388
    :pswitch_8
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2389
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2391
    return-void

    .line 2371
    :pswitch_9
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_4

    .line 2372
    return-void

    .line 2376
    :cond_4
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2378
    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2379
    return-void

    .line 2364
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleWifiOnlyTunnelFail(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2365
    return-void

    .line 2354
    :pswitch_b
    const-string v0, "state IMS_DC_WIFI_PREF_IMSPDP_FAIL,startDCAlarm."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2355
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_5

    .line 2356
    return-void

    .line 2359
    :cond_5
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2360
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2361
    return-void

    .line 2324
    :pswitch_c
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_6

    .line 2325
    return-void

    .line 2328
    :cond_6
    const-string v0, "handle UT data connection volte conntion after vowifi connection fail"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2329
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2330
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtNotUseDefaultAPN(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2331
    return-void

    .line 2334
    :cond_7
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataConnection()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2335
    const-string v0, "handle UT data connection volte conntion after vowifi connection fail default apn"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2336
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v0

    .line 2337
    .local v0, "network":Landroid/net/Network;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 2338
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2339
    goto/16 :goto_0

    .line 2340
    .end local v0    # "network":Landroid/net/Network;
    :cond_8
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUseDefaultBearForWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2341
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2342
    return-void

    .line 2345
    :cond_9
    const-string v0, "handle UT data connection ut use default apn and data is not connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2346
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2347
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2348
    return-void

    .line 2273
    :pswitch_d
    const-string v0, "case IMS_DC_WIFI_CONNECTION_TUNNEL_ACT."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2274
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_a

    .line 2275
    return-void

    .line 2277
    :cond_a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2278
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiTunnelUp()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2279
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2280
    goto/16 :goto_0

    .line 2283
    :cond_b
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->endConnectivityIfNeeded(I)V

    .line 2286
    const-string v0, "handle UT data connection begin vowifi Connectivity"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2287
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    .line 2289
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    .line 2290
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelSetupAlarm()V

    .line 2291
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2293
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2295
    return-void

    .line 2298
    :cond_c
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2299
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->cancelStopImsApnMessage()V

    .line 2300
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2302
    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2303
    return-void

    .line 2304
    :cond_d
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataConnection()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2305
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2307
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v0

    .line 2308
    .restart local v0    # "network":Landroid/net/Network;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 2310
    goto/16 :goto_0

    .line 2311
    .end local v0    # "network":Landroid/net/Network;
    :cond_e
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUseDefaultBearForWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2312
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2313
    return-void

    .line 2316
    :cond_f
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2317
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2318
    return-void

    .line 2181
    :pswitch_e
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_11

    .line 2182
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCurrentSubChange()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isOtherSubUtIdle()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2183
    const-string v0, "handleUt: ut for other sub is not idle, waiting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2184
    return-void

    .line 2186
    :cond_10
    const-string v0, "handleUt: reset ut sdk"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2187
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->resetUtSDK()V

    .line 2193
    :cond_11
    const-string v0, "handle UT data connection start"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2194
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2195
    const/4 v0, 0x0

    .line 2196
    .local v0, "utDomain":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2197
    .local v3, "context":Landroid/content/Context;
    if-nez v3, :cond_12

    .line 2198
    return-void

    .line 2200
    :cond_12
    const-string v4, "isUtOverWifiEnabled return true."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2202
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v0

    .line 2204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVoWifiServiceDomain return utDomain = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2207
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isNeedSetupWifiTunnel(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2209
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiTunnelUp()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2211
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2212
    goto/16 :goto_0

    .line 2215
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle UT data connection vowifi connection tunnel act domain is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2216
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2218
    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2219
    return-void

    .line 2229
    .end local v0    # "utDomain":I
    .end local v3    # "context":Landroid/content/Context;
    :cond_14
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2230
    :cond_15
    const-string v0, "Airplane mode is turned on and ss not surrport vowifi ut. no longer trying volte ut and cs"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2231
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2232
    return-void

    .line 2237
    :cond_16
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2239
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtNotUseDefaultAPN(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2240
    return-void

    .line 2244
    :cond_17
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isNeedTempChangeDefaultDataSub()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2245
    const-string v0, "handle UT data connection ut use default apn and data is connected but not for this sub"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2246
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_TEMPORARILY_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2247
    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2248
    return-void

    .line 2249
    :cond_18
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataConnection()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2250
    const-string v0, "handle UT data connection ut use default apn and data is connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2251
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2252
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v0

    .line 2253
    .local v0, "network":Landroid/net/Network;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 2254
    goto :goto_0

    .line 2256
    .end local v0    # "network":Landroid/net/Network;
    :cond_19
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUseDefaultBearForWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2257
    const-string v0, "handle UT data connection ut use default apn and data is not connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2258
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2259
    return-void

    .line 2263
    :cond_1a
    const-string v0, "handle UT data connection ut use default apn and data is not connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2264
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2265
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2266
    return-void

    .line 2454
    :cond_1b
    :goto_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 2455
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
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

.method private handleUtApnConnection(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6399
    if-nez p1, :cond_0

    .line 6400
    return-void

    .line 6404
    :cond_0
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v0, v1, :cond_1

    .line 6405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUtApnConnection intent not for this sub: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6406
    return-void

    .line 6410
    :cond_1
    const-string v0, "apnType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6411
    .local v0, "apn":Ljava/lang/String;
    const-string v1, "failCause"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6413
    .local v1, "cause":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUtApnConnection apn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6415
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "xcap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6417
    const/4 v2, -0x1

    .line 6418
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ordinal()I

    move-result v3

    .line 6417
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 6420
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isDcFailCauseForNonVolteSim(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6421
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    .line 6425
    :cond_2
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isDcFailCauseToReleaseApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6427
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    .line 6428
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsConnectionFailure()V

    .line 6433
    :cond_3
    return-void
.end method

.method private handleUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 12
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUtCmd enter, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2683
    const/4 v0, 0x1

    .line 2685
    .local v0, "ret":I
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 2686
    const-string v1, "Can\'t start SS with Ut, will fallback to cs"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2688
    if-eqz p1, :cond_0

    .line 2689
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2690
    invoke-virtual {p0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2693
    :cond_0
    return v4

    .line 2697
    :cond_1
    :try_start_0
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    packed-switch v1, :pswitch_data_0

    .line 2864
    :pswitch_0
    const-string v1, "handleUtCmd not support this cmd"

    goto/16 :goto_0

    .line 2729
    :pswitch_1
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_2

    .line 2730
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryCallWaiting()I

    move-result v1

    move v0, v1

    goto/16 :goto_1

    .line 2732
    :cond_2
    iget-boolean v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setCallWaiting(Z)I

    move-result v1

    move v0, v1

    .line 2734
    goto/16 :goto_1

    .line 2808
    :pswitch_2
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-ne v4, v1, :cond_3

    .line 2809
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    iget-boolean v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v1, v5}, Lcom/huawei/sci/SciSSConfHs;->setCallBarring(IZ)I

    move-result v1

    move v0, v1

    goto/16 :goto_1

    .line 2811
    :cond_3
    const/4 v0, 0x1

    .line 2813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSCONF_SS_TYPE_CF not support utOpType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2815
    goto/16 :goto_1

    .line 2782
    :pswitch_3
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_5

    .line 2785
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtDataExpire(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2787
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryOutgoingCallBarring()I

    move-result v1

    move v0, v1

    goto/16 :goto_1

    .line 2789
    :cond_4
    const/4 v0, 0x0

    .line 2791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the status of OCB querying via UT interface is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2794
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UTData;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    iget v6, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    iget v7, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-direct {v1, v5, v6, v7}, Lcom/huawei/ims/HwImsUtImpl$UTData;-><init>(III)V

    .line 2795
    .local v1, "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    invoke-virtual {p0, v4, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2796
    .end local v1    # "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    goto/16 :goto_1

    .line 2798
    :cond_5
    const/4 v0, 0x1

    .line 2800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSCONF_SS_TYPE_OCB not support utOpType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2802
    goto/16 :goto_1

    .line 2759
    :pswitch_4
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_7

    .line 2762
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtDataExpire(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2764
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryIncomingCallBarring()I

    move-result v1

    move v0, v1

    goto/16 :goto_1

    .line 2766
    :cond_6
    const/4 v0, 0x0

    .line 2768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the status of ICB querying via UT interface is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2771
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UTData;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    iget v6, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    iget v7, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-direct {v1, v5, v6, v7}, Lcom/huawei/ims/HwImsUtImpl$UTData;-><init>(III)V

    .line 2773
    .restart local v1    # "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    invoke-virtual {p0, v4, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2774
    .end local v1    # "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    goto/16 :goto_1

    .line 2776
    :cond_7
    const/4 v0, 0x1

    .line 2778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSCONF_SS_TYPE_ICB not support utOpType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2780
    goto/16 :goto_1

    .line 2845
    :pswitch_5
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-ne v4, v1, :cond_8

    .line 2849
    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    iget v6, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    iget-object v7, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    iget-object v8, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->startTime:Ljava/util/Date;

    iget-object v9, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->endTime:Ljava/util/Date;

    const/4 v10, 0x1

    const/4 v11, -0x1

    invoke-static/range {v5 .. v11}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNew(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v1

    move v0, v1

    .line 2856
    const/4 v1, 0x7

    iput v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    goto/16 :goto_1

    .line 2858
    :cond_8
    const/4 v0, 0x1

    .line 2860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSCONF_SS_TYPE_CF SET not support utOpType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2862
    goto/16 :goto_1

    .line 2823
    :pswitch_6
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-ne v4, v1, :cond_b

    .line 2824
    const/4 v1, -0x1

    .line 2827
    .local v1, "time":I
    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v6, 0x16

    if-eq v5, v6, :cond_9

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v6, 0x17

    if-eq v5, v6, :cond_9

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_a

    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 2828
    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->isProtocolIR92V10orGreater()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2829
    :cond_9
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getNoReplyTimer(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    move-result v5

    move v1, v5

    .line 2831
    :cond_a
    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    iget v6, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    iget-object v7, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v11, v1

    invoke-static/range {v5 .. v11}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNew(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v5

    move v0, v5

    .line 2838
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " setCallDiversionNew return value ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2839
    .end local v1    # "time":I
    goto/16 :goto_1

    .line 2840
    :cond_b
    const/4 v0, 0x1

    .line 2841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSCONF_SS_TYPE_CF GET not support utOpType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2843
    goto/16 :goto_1

    .line 2736
    :pswitch_7
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_d

    .line 2739
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtDataExpire(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2741
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryCallDiversion()I

    move-result v1

    move v0, v1

    goto/16 :goto_1

    .line 2743
    :cond_c
    const/4 v0, 0x0

    .line 2745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the status of CFU querying via UT interface is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2748
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UTData;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    iget v6, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    iget v7, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-direct {v1, v5, v6, v7}, Lcom/huawei/ims/HwImsUtImpl$UTData;-><init>(III)V

    .line 2750
    .local v1, "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    invoke-virtual {p0, v4, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2751
    .end local v1    # "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    goto/16 :goto_1

    .line 2753
    :cond_d
    const/4 v0, 0x1

    .line 2755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSCONF_SS_TYPE_CDIV not support utOpType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2757
    goto/16 :goto_1

    .line 2722
    :pswitch_8
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_e

    .line 2723
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryTerminatingIdentityRestriction()I

    move-result v1

    move v0, v1

    goto/16 :goto_1

    .line 2725
    :cond_e
    iget-boolean v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setTerminatingIdentityRestriction(Z)I

    move-result v1

    move v0, v1

    .line 2727
    goto/16 :goto_1

    .line 2713
    :pswitch_9
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_f

    .line 2714
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryOriginatingIdentityRestriction()I

    move-result v1

    move v0, v1

    goto/16 :goto_1

    .line 2717
    :cond_f
    iget-boolean v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-static {v1, v5}, Lcom/huawei/sci/SciSSConfHs;->setOriginatingIdentityRestriction(ZI)I

    move-result v1

    move v0, v1

    .line 2720
    goto :goto_1

    .line 2706
    :pswitch_a
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_10

    .line 2707
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryTerminatingIdentityPresentation()I

    move-result v1

    move v0, v1

    goto :goto_1

    .line 2709
    :cond_10
    iget-boolean v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setTerminatingIdentityPresentation(Z)I

    move-result v1

    move v0, v1

    .line 2711
    goto :goto_1

    .line 2699
    :pswitch_b
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_11

    .line 2700
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryOriginatingIdentityPresentation()I

    move-result v1

    move v0, v1

    goto :goto_1

    .line 2702
    :cond_11
    iget-boolean v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setOriginatingIdentityPresentation(Z)I

    move-result v1

    move v0, v1

    .line 2704
    goto :goto_1

    .line 2864
    :goto_0
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2866
    const/4 v0, 0x1

    goto :goto_1

    .line 2874
    :catch_0
    move-exception v1

    .line 2875
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SciSSConfHs func exception, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2877
    const/4 v0, 0x1

    .line 2878
    iput v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 2869
    :catch_1
    move-exception v1

    .line 2870
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SciSSConfHs func RuntimeException, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2872
    const/4 v0, 0x1

    .line 2873
    iput v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 2879
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    nop

    .line 2881
    :goto_2
    if-nez v0, :cond_12

    .line 2882
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtAlarm()V

    .line 2883
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto :goto_3

    .line 2885
    :cond_12
    iput v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 2886
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2887
    invoke-virtual {p0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2890
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUtCmd leave, SciSSConfHs ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cmd.mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", utType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", utReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2895
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private handleUtCmdQueue()V
    .locals 3

    .line 2104
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 2106
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_2

    .line 2108
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtAlarm()V

    .line 2109
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopDcAlarm()V

    .line 2110
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopTemporaryDcAlarm()V

    .line 2114
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUseDefaultBearForWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2116
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    .line 2118
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->sendStopImsApnMessage()V

    .line 2122
    :cond_1
    return-void

    .line 2126
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopTemporaryUtStayAlarm()V

    .line 2129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUtCmdQueue start,  cmd mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2131
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support this cmd mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2145
    :pswitch_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtAlarm()V

    .line 2146
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->removeUtCmd()V

    .line 2148
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startTemporaryUtStayAlarm()V

    .line 2150
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2151
    goto :goto_0

    .line 2140
    :pswitch_1
    const-string v1, "handle UT data connection fallback CS domain"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2142
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2143
    goto :goto_0

    .line 2137
    :pswitch_2
    goto :goto_0

    .line 2134
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2135
    nop

    .line 2157
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUtCmdQueue leave,  cmd mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2158
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUtInit()V
    .locals 0

    .line 4032
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initImsUtImpl()V

    .line 4033
    return-void
.end method

.method private handleUtNotUseDefaultAPN(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2488
    const-string v0, "handle UT data connection volte conntion after vowifi connection fail not default apn"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2489
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_0

    .line 2490
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v0

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v0, v1, :cond_1

    .line 2491
    :cond_0
    const-string v0, "handle UT data connection ut use complex apn and mobile data is connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2492
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v1

    .line 2493
    .local v1, "network":Landroid/net/Network;
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 2494
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2495
    return v0

    .line 2497
    .end local v1    # "network":Landroid/net/Network;
    :cond_1
    const-string v0, "handle UT data connection ut use xcap apn or complex apn with mobile data not connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2498
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->cancelStopImsApnMessage()V

    .line 2499
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2501
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2502
    const/4 v0, 0x1

    return v0
.end method

.method private handleUtRetryAlarmTimeOut()V
    .locals 1

    .line 3129
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtRetryAlarm()V

    .line 3131
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->transferCmdFromRetryQueueToUtCmdQueue()V

    .line 3133
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 3134
    return-void
.end method

.method private handleUtSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 2
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4017
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->addUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 4020
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4021
    const/4 v0, 0x0

    return v0

    .line 4023
    :cond_0
    const-string v0, "Send UT message fail, remove last ut cmd."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4025
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->removeLastUtCmd()V

    .line 4028
    const/4 v0, 0x1

    return v0
.end method

.method private handleUtTimeOut()V
    .locals 2

    .line 5893
    const-string v0, "handleUtTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5894
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 5896
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v0, :cond_0

    .line 5897
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 5899
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 5902
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5907
    :cond_0
    const/16 v0, 0x3e9

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 5910
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick()V

    .line 5911
    return-void
.end method

.method private handleWifiOnlyTunnelFail(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2467
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_0

    .line 2468
    return-void

    .line 2471
    :cond_0
    const-string v0, "ro.vowifi.wifi_only_fall_cs"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2472
    .local v0, "supportWifiOnlyFallCs":Ljava/lang/Boolean;
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 2474
    const-string v1, "handle UT data connection state IMS_DC_WIFI_ONLY_TUNNEL_FAIL,will fall back to cs,startDCAlarm."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2477
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2478
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    goto :goto_0

    .line 2481
    :cond_1
    const-string v1, "handle UT data connection state IMS_DC_WIFI_ONLY_TUNNEL_FAIL,send GENERIC_FAILURE to user."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2482
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2485
    :goto_0
    return-void
.end method

.method private handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2932
    const/4 v0, 0x0

    .line 2934
    .local v0, "ret":I
    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 2935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOverSS mToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", utType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", utOpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2937
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2946
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2947
    const-string v2, "handoverSS: Airplane mode is turned on, forbid CSFB, return failure!"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2948
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 2949
    return v1

    .line 2953
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->checkCSDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2954
    const-string v2, "Can\'t start SS wiht CS domain."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2955
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 2956
    return v1

    .line 2959
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardMccMncPreferToUseUT()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCSBeUsed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2960
    const-string v2, "handleOverSS cannot use CS"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2962
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 2964
    return v1

    .line 2967
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2969
    .local v2, "defPhone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_3

    .line 2970
    const-string v4, "handoverSS cannot get default phone"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2972
    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v4, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 2974
    return v1

    .line 2977
    :cond_3
    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2979
    .local v4, "onComplete":Landroid/os/Message;
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    .line 2981
    const-string v3, "set Ut disable"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2983
    invoke-direct {p0, v2, p1, v4, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverUtCmd(Lcom/android/internal/telephony/Phone;Lcom/huawei/ims/HwImsUtImpl$UtCmd;Landroid/os/Message;I)I

    move-result v0

    .line 2985
    if-ne v1, v0, :cond_4

    .line 2986
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v4, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2989
    :cond_4
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    .line 2991
    const-string v1, "set ut enable"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2993
    return v0

    .line 2940
    .end local v2    # "defPhone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "onComplete":Landroid/os/Message;
    :cond_5
    const-string v2, "handoverSS,utCmd null"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2941
    return v1
.end method

.method private handoverSSTick()V
    .locals 1

    .line 3068
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3069
    return-void
.end method

.method private handoverSSTick(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 2
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3072
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 3073
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 3074
    return-void
.end method

.method private handoverUtCmd(Lcom/android/internal/telephony/Phone;Lcom/huawei/ims/HwImsUtImpl$UtCmd;Landroid/os/Message;I)I
    .locals 9
    .param p1, "defPhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "ret"    # I

    .line 2996
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    iget-object v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handoverSS not support cmd.mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3061
    const/4 p4, 0x1

    goto/16 :goto_0

    .line 3056
    :pswitch_0
    const-string v0, "handoverUtCmd: this command is for detecting sim card subscription status,forbid CSFB."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3057
    goto/16 :goto_0

    .line 3043
    :pswitch_1
    const/4 v0, 0x6

    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    if-ne v0, v2, :cond_0

    .line 3044
    const-string v0, "Set CFU due to time in cs domain, but abandon the time"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3046
    iput v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 3050
    :cond_0
    iget v3, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    iget v4, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    iget-object v5, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    iget v6, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    iget v7, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utTimer:I

    move-object v2, p1

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 3054
    goto :goto_0

    .line 3035
    :pswitch_2
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    invoke-virtual {p1, v0, v1, p3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(IILandroid/os/Message;)V

    .line 3037
    goto :goto_0

    .line 3031
    :pswitch_3
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 3032
    goto :goto_0

    .line 3023
    :pswitch_4
    iget-boolean v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->getCallWaitingAction(Z)I

    move-result v0

    .line 3024
    .local v0, "callWaitingAction":I
    iget-boolean v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v4, 0x1c

    .line 3025
    invoke-virtual {v3, v4, v1, v0, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3024
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 3029
    goto :goto_0

    .line 3016
    .end local v0    # "callWaitingAction":I
    :pswitch_5
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 3017
    goto :goto_0

    .line 3013
    :pswitch_6
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 3014
    goto :goto_0

    .line 3010
    :pswitch_7
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 3011
    goto :goto_0

    .line 3004
    :pswitch_8
    iget-object v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    iget-object v3, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csPassword:Ljava/lang/String;

    iget-boolean v4, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    iget v5, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/Phone;->setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Message;)V

    .line 3008
    goto :goto_0

    .line 2999
    :pswitch_9
    iget-object v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    invoke-virtual {p1, v0, v1, p3}, Lcom/android/internal/telephony/Phone;->getCallbarringOption(Ljava/lang/String;ILandroid/os/Message;)V

    .line 3001
    nop

    .line 3064
    :goto_0
    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
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

.method private hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 6128
    invoke-static {p1, p2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initImsUtImpl()V
    .locals 5

    .line 4036
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 4039
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4044
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4048
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4052
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 4053
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4054
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4056
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE@hwBrExpand@ConnectStatus=MOBILEDATACON|ConnectStatus=WIFIDATADSCON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 4059
    sget-boolean v1, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v1, :cond_0

    .line 4061
    const-string v1, "com.hisi.mapcon.servicefailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4065
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4069
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mApnChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4074
    return-void
.end method

.method private initSDKServiceIpAddr(Landroid/net/Network;)V
    .locals 6
    .param p1, "netWork"    # Landroid/net/Network;

    .line 2601
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    iget v1, p1, Landroid/net/Network;->netId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtQueryDnsIgnoreNetId()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-nez v0, :cond_1

    goto :goto_2

    .line 2605
    :cond_1
    iget v0, p1, Landroid/net/Network;->netId:I

    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    .line 2608
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtGbaLifetimeBeUsed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2609
    const-string v0, "initSDKServiceIpAddr skip sdk.reset & gba.clear"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 2612
    :cond_2
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 2616
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2618
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->clear()V

    .line 2622
    :goto_0
    const/4 v0, -0x1

    move v2, v0

    .line 2626
    .local v2, "addressType":B
    const/4 v2, 0x0

    .line 2628
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafSrvAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 2630
    .local v3, "nafIpAddr":[Ljava/net/InetAddress;
    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    .line 2631
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->createIpAddr([Ljava/net/InetAddress;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/huawei/sci/SciSSConfHs;->setHostIp([Ljava/lang/String;I)I

    .line 2633
    :cond_3
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtBsfAuthBeUsed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2635
    const/4 v2, 0x1

    .line 2637
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfSrvAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 2638
    .local v1, "bsfIpAddr":[Ljava/net/InetAddress;
    if-eqz v1, :cond_4

    array-length v4, v1

    if-lez v4, :cond_4

    .line 2639
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->createIpAddr([Ljava/net/InetAddress;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/huawei/sci/SciSSConfHs;->setHostIp([Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2648
    .end local v1    # "bsfIpAddr":[Ljava/net/InetAddress;
    .end local v3    # "nafIpAddr":[Ljava/net/InetAddress;
    :cond_4
    goto :goto_1

    .line 2642
    :catch_0
    move-exception v1

    .line 2643
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v3, "Cannot get inet address "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2645
    const/16 v3, 0x3eb

    invoke-direct {p0, v0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 2649
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_1
    return-void

    .line 2603
    .end local v2    # "addressType":B
    :cond_5
    :goto_2
    return-void
.end method

.method private initSciSSConfHs()V
    .locals 8

    .line 4633
    :try_start_0
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    if-nez v0, :cond_0

    .line 4634
    const-string v0, "initSciSSConfHs:: sdk has not been initialized and mSciSSConfCb is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4635
    return-void

    .line 4638
    :cond_0
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSCB:Lcom/huawei/sci/SciSSConfCb$Callback;

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfCb;->setCallback(Lcom/huawei/sci/SciSSConfCb$Callback;)V

    .line 4639
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-nez v0, :cond_1

    .line 4640
    new-instance v0, Lcom/huawei/ims/GbaAuth;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/GbaAuth;-><init>(Lcom/huawei/ims/ImsRIL;Lcom/huawei/ims/HwImsConfigImpl;I)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    .line 4642
    :cond_1
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->getGbaAuthUtil()Lcom/huawei/ims/GbaAuthUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfCb;->setSSConfAuth(Lcom/huawei/sci/SciSSConfAuth;)V

    .line 4644
    const/4 v0, -0x1

    .line 4646
    .local v0, "ret":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseNodeSelector()Z

    move-result v1

    .line 4648
    .local v1, "isUseNodeSelector":Z
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->isSupportNodeSelector(Z)I

    move-result v2

    move v0, v2

    .line 4649
    if-eqz v0, :cond_2

    .line 4650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportNodeSelector ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4653
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init isSupportNodeSelector="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4655
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseXcapNameSpace()Z

    move-result v2

    .line 4657
    .local v2, "isUseXcapNameSpace":Z
    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->setSupportXcapNamespace(Z)I

    move-result v3

    move v0, v3

    .line 4658
    if-eqz v0, :cond_3

    .line 4659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSupportXcapNamespace ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4662
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init setSupportXcapNamespace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4664
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtGbaType()I

    move-result v3

    .line 4666
    .local v3, "gbaType":I
    invoke-static {v3}, Lcom/huawei/sci/SciSSConfHs;->setSupportGBAType(I)I

    move-result v4

    move v0, v4

    .line 4667
    if-eqz v0, :cond_4

    .line 4668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSupportGBAType ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4671
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init setSupportGBAType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4673
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseTmpi()Z

    move-result v4

    .line 4675
    .local v4, "isUseTmpi":Z
    invoke-static {v4}, Lcom/huawei/sci/SciSSConfHs;->setSupportTmpi(Z)I

    move-result v5

    move v0, v5

    .line 4676
    if-eqz v0, :cond_5

    .line 4677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSupportTmpi ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4680
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init usetmpi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4682
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->getContentTypeMode()I

    move-result v5

    .line 4684
    .local v5, "contentTypeMode":I
    invoke-static {v5}, Lcom/huawei/sci/SciSSConfHs;->setContentType(I)I

    move-result v6

    move v0, v6

    .line 4685
    if-eqz v0, :cond_6

    .line 4686
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setContentType ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4689
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init contentTypeMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4691
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpu()I

    .line 4692
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpi()I

    .line 4693
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkBsfAddr()I

    .line 4694
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkNafAddr()I

    .line 4697
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkParamsCfg()V

    .line 4700
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsXcapRootUri()I

    .line 4702
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsUserAgentExtensionalParam()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ret":I
    .end local v1    # "isUseNodeSelector":Z
    .end local v2    # "isUseXcapNameSpace":Z
    .end local v3    # "gbaType":I
    .end local v4    # "isUseTmpi":Z
    .end local v5    # "contentTypeMode":I
    goto :goto_0

    .line 4705
    :catch_0
    move-exception v0

    .line 4706
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SciSSConfHs exception e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 4703
    :catch_1
    move-exception v0

    .line 4704
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SciSSConfHs RuntimeException e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4707
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .line 4708
    :goto_1
    return-void
.end method

.method private initUtSDK()V
    .locals 4

    .line 4602
    const-string v0, "initUtSDK enter"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4603
    new-instance v0, Lcom/huawei/sci/SciSSConfCb;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfCb;-><init>()V

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setSciSSConfCb(Lcom/huawei/sci/SciSSConfCb;)V

    .line 4605
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    if-nez v0, :cond_0

    .line 4606
    const-string v0, "instance mSciSSConfCb fail"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4608
    return-void

    .line 4612
    :cond_0
    const/4 v0, -0x1

    .line 4614
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtOpenHrsLog()Z

    move-result v1

    .line 4616
    .local v1, "isOpenHrsLog":Z
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/huawei/sci/SciSSConfHs;->init(Landroid/content/Context;Z)I

    move-result v2

    move v0, v2

    .line 4618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SciSSConfHs.init ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", IS_HRS_LOG_OPEN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ret":I
    .end local v1    # "isOpenHrsLog":Z
    goto :goto_0

    .line 4621
    :catch_0
    move-exception v0

    .line 4622
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SciSSConfHs exception e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 4619
    :catch_1
    move-exception v0

    .line 4620
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SciSSConfHs RuntimeException e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4623
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .line 4625
    :goto_1
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setCurrentSubId(I)V

    .line 4627
    const-string v0, "initUtSDK leave"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4628
    return-void
.end method

.method private initUtSDKWhenDomainSelectUt()V
    .locals 1

    .line 6591
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    if-nez v0, :cond_0

    .line 6592
    const-string v0, "initUtSDKWhenDomainSelectUt: initUtSDK and set ut params to sdk."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6593
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initUtSDK()V

    .line 6594
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initSciSSConfHs()V

    goto :goto_0

    .line 6595
    :cond_0
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->regetIMSIFromPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6596
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpi()I

    .line 6597
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkBsfAddr()I

    .line 6598
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkNafAddr()I

    .line 6600
    :cond_1
    :goto_0
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .line 2524
    const/4 v0, 0x0

    .line 2525
    .local v0, "isAirplaneModeOn":Z
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2526
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    move v0, v3

    .line 2527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAirplaneModeOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2529
    :cond_1
    return v0
.end method

.method private isCTCardAndNotSupportVolte()Z
    .locals 2

    .line 3623
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 3624
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/HwTelephonyManager;->isCTSimCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVolte()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isCTCardAndSupportVolte()Z
    .locals 2

    .line 3618
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 3619
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/HwTelephonyManager;->isCTSimCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVolte()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isCallWaitingExpire()Z
    .locals 3

    .line 1495
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1496
    return v1

    .line 1499
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1501
    .local v0, "currDate":Ljava/util/Date;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_1

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forbid call waiting request, currDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mNextGetCallWaitingTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1504
    const/4 v1, 0x0

    return v1

    .line 1507
    :cond_1
    return v1
.end method

.method private isCardChange(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "newImsi"    # Ljava/lang/String;
    .param p2, "oldImsi"    # Ljava/lang/String;

    .line 4182
    const/4 v0, 0x0

    .line 4184
    .local v0, "ret":Z
    if-nez p1, :cond_1

    .line 4185
    if-nez p2, :cond_0

    .line 4186
    const/4 v0, 0x0

    goto :goto_0

    .line 4188
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4191
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 4194
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Card is changed ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4196
    return v0
.end method

.method private isCardMccMncPreferToUseUT()Z
    .locals 2

    .line 3974
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getCardMccMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCardMccMncPreferToUseUT(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isCardTypePreferToUseUT()Z
    .locals 3

    .line 3966
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 3967
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/HwTelephonyManager;->getCardType(I)I

    move-result v1

    .line 3970
    .local v1, "cardType":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCardTypePreferToUseUT(I)Z

    move-result v2

    return v2
.end method

.method private isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    .line 4596
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private isCmdGetResultFromSdkLocally(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3095
    const/4 v0, 0x0

    .line 3097
    .local v0, "result":Z
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3115
    :pswitch_0
    const/4 v1, 0x1

    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    if-eq v1, v2, :cond_1

    .line 3116
    const/4 v0, 0x1

    goto :goto_0

    .line 3102
    :cond_0
    :pswitch_1
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    if-eqz v1, :cond_1

    .line 3103
    const/4 v0, 0x1

    .line 3123
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCmdGetResultFromSdkLocally="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3125
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isConfigUtForbiddenTimer()Z
    .locals 2

    .line 5979
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtForbiddenTimer()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCurrentSubChange()Z
    .locals 3

    .line 4200
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    sget v1, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4201
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current sub is changed, ret is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4202
    return v0
.end method

.method private isDataConnection()Z
    .locals 2

    .line 5755
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5756
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5757
    const-string v0, "handle UT data connection ut can use wifi and wifi is connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5758
    return v1

    .line 5763
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5764
    const-string v0, "handle UT data connection ut can not use wifi and mobile data is connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5766
    return v1

    .line 5769
    :cond_1
    const-string v0, "data is not Connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5771
    const/4 v0, 0x0

    return v0
.end method

.method private isDataSwitchOn()Z
    .locals 2

    .line 5807
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5809
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private isDefaultConnected()Z
    .locals 3

    .line 5776
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5778
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5779
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 5781
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 5783
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1

    .line 5787
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return v1
.end method

.method private isEnableCallWaiting(I)Z
    .locals 1
    .param p1, "callWaitingAction"    # I

    .line 6286
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 6287
    return v0

    .line 6289
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isLTENetworkType()Z
    .locals 4

    .line 6387
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 6389
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v1

    .line 6390
    .local v1, "networkType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLTENetworkType subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " networkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6391
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private isLocalCallWaitingEnable()Z
    .locals 4

    .line 1880
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-direct {p0, v0, v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 1882
    .local v0, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 1883
    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v2

    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    .line 1882
    :cond_0
    return v1
.end method

.method private isNeedSetupWifiTunnel(I)Z
    .locals 5
    .param p1, "utDomain"    # I

    .line 2546
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isNoDataService()Z

    move-result v0

    .line 2548
    .local v0, "isNoDataService":Z
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtPreferOption()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 2550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedSetupWifiTunnel::UT_PREFER_USE_VOLTE_MODE is true, isNoDataService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2551
    return v0

    .line 2555
    :cond_0
    const/4 v1, 0x0

    .line 2556
    .local v1, "isVoWifiRegistered":Z
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isUtPreferVowifiWhenVowifiReg()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2557
    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v3

    .line 2558
    .local v3, "subId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/HwTelephonyManagerInner;->isWifiCallingAvailable(I)Z

    move-result v1

    .line 2560
    .end local v3    # "subId":I
    :cond_1
    const/4 v3, 0x2

    if-eq v3, p1, :cond_3

    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    if-eq v3, p1, :cond_3

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    nop

    :cond_3
    :goto_0
    return v2
.end method

.method private isNeedTempChangeDefaultDataSub()Z
    .locals 3

    .line 2566
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2567
    return v1

    .line 2570
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2571
    return v1

    .line 2574
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2575
    return v1

    .line 2578
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v0

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v0, v2, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1
.end method

.method private isNetworkConnected()Z
    .locals 4

    .line 5194
    nop

    .line 5195
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5196
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5197
    const-string v2, "The ConnectivityManager is null"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5198
    return v1

    .line 5200
    :cond_0
    const/16 v2, 0x2d

    .line 5201
    .local v2, "networkType":I
    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v3, :cond_1

    .line 5202
    const/16 v2, 0x2f

    .line 5204
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 5205
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    .line 5206
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1

    .line 5208
    :cond_2
    return v1
.end method

.method private isNoDataService()Z
    .locals 1

    .line 2542
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isNoMobileNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private isNoMobileNetwork()Z
    .locals 5

    .line 2534
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 2535
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/HwTelephonyManager;->getDataRegisteredState(I)I

    move-result v1

    .line 2536
    .local v1, "dataRegisterState":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2537
    .local v2, "noMobileNetwork":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNoMobileNetwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2538
    return v2
.end method

.method private isOtherSubUtIdle()Z
    .locals 2

    .line 6523
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    if-eqz v0, :cond_0

    .line 6524
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtImpl;->isOtherSubUtIdle(I)Z

    move-result v0

    return v0

    .line 6527
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSsUseUtInterface(I)Z
    .locals 3
    .param p1, "utType"    # I

    .line 3077
    const/4 v0, 0x1

    .line 3079
    .local v0, "result":Z
    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3083
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 3084
    const/4 v0, 0x0

    .line 3091
    :cond_1
    :goto_0
    return v0
.end method

.method private isUtDataExpire(I)Z
    .locals 4
    .param p1, "type"    # I

    .line 6295
    const/4 v0, 0x0

    .line 6297
    .local v0, "utDataExpireTime":Ljava/util/Date;
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 6304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUtDataExpire unknown type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6306
    return v2

    .line 6301
    :cond_0
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    .line 6302
    nop

    .line 6309
    if-nez v0, :cond_1

    .line 6310
    return v2

    .line 6313
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 6315
    .local v1, "currDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gez v3, :cond_2

    .line 6316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ut data is not expire, currDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mNextUtDataUpdateTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6318
    const/4 v2, 0x0

    return v2

    .line 6321
    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isUtIdInvalid(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 4516
    if-gez p1, :cond_0

    .line 4517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid request id. id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4519
    const/4 v0, 0x1

    return v0

    .line 4521
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Valid request id. id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4523
    const/4 v0, 0x0

    return v0
.end method

.method private isUtNotUseDefaultAPN()Z
    .locals 1

    .line 5605
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUtOverWifiEnabled()Z
    .locals 12

    .line 5216
    const/4 v0, 0x1

    .line 5217
    .local v0, "UT_SWITCH_ON":I
    const/4 v1, 0x0

    .line 5218
    .local v1, "SUB0":I
    const-string v2, "ro.config.hw_vowifi_mmsut"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 5220
    .local v2, "isUtOverWifiEnabled":Ljava/lang/Boolean;
    const/4 v4, 0x0

    .line 5222
    .local v4, "ret":Z
    sget-boolean v5, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v5, :cond_0

    .line 5223
    return v3

    .line 5226
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 5227
    .local v5, "context":Landroid/content/Context;
    if-nez v5, :cond_1

    .line 5228
    const-string v6, "null == context"

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5229
    return v3

    .line 5232
    :cond_1
    iget v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v6}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/ims/HwImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5233
    return v3

    .line 5236
    :cond_2
    iget-object v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsConfigImpl;->getVowifiUtSwitch()Z

    move-result v6

    .line 5240
    .local v6, "isUtSwitchOn":Z
    const-string v7, "connectivity"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 5241
    .local v7, "cm":Landroid/net/ConnectivityManager;
    if-nez v7, :cond_3

    .line 5242
    const-string v8, "null == ConnectivityManager"

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5243
    return v3

    .line 5246
    :cond_3
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 5247
    .local v9, "wifiNetinfo":Landroid/net/NetworkInfo;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 5248
    .local v10, "isWifiConnected":Ljava/lang/Boolean;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 5249
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 5252
    :cond_4
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v6, :cond_5

    move v3, v8

    nop

    .line 5254
    .end local v4    # "ret":Z
    .local v3, "ret":Z
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isUtOverWifiEnabled return "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5255
    return v3
.end method

.method private isUtOverWifiTunnelUp()Z
    .locals 2

    .line 5424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUtOverWifiTunnelUp, mIsWifiTunnnelUp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5425
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    return v0
.end method

.method private isUtSubscribed()Z
    .locals 1

    .line 6436
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    return v0
.end method

.method private isUtSupportedByCurrentBearer()Z
    .locals 5

    .line 6370
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBearerType()I

    move-result v0

    .line 6371
    .local v0, "utBearerType":I
    const/4 v1, 0x1

    .line 6372
    .local v1, "result":Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 6374
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isLTENetworkType()Z

    move-result v1

    goto :goto_2

    .line 6375
    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 6377
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsServiceSub;->getImsRegisterState()I

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    move v1, v2

    goto :goto_2

    .line 6378
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 6380
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isLTENetworkType()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsServiceSub;->getImsRegisterState()I

    move-result v3

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    nop

    :cond_4
    :goto_1
    move v1, v2

    .line 6382
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUtSupportedByCurrentBearer result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6383
    return v1
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    .line 4584
    packed-switch p1, :pswitch_data_0

    .line 4591
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 4589
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    .line 4569
    packed-switch p1, :pswitch_data_0

    .line 4579
    const/4 v0, 0x0

    return v0

    .line 4577
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isVolteSwitchOn()Z
    .locals 4

    .line 3949
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3950
    .local v0, "defPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 3952
    .local v1, "isVolteSwitchOn":Z
    if-eqz v0, :cond_0

    .line 3953
    const/4 v1, 0x1

    .line 3956
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volte Switch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3958
    return v1
.end method

.method private isWifiConnected()Z
    .locals 3

    .line 5792
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5794
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 5795
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 5797
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 5798
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2

    .line 5802
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private keepAliveImsConnectivity()V
    .locals 4

    .line 5491
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 5492
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5491
    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5494
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 6475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsUtImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6476
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 6479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsUtImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6480
    return-void
.end method

.method private popUtMessage(I)Landroid/os/Message;
    .locals 3
    .param p1, "id"    # I

    .line 1619
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1621
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 1622
    const-string v1, "popUtMessage imsPhone is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1624
    const/4 v1, 0x0

    return-object v1

    .line 1627
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1628
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mHwImsPhone:Lcom/android/internal/telephony/imsphone/HwImsPhone;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->popUtMessage(I)Landroid/os/Message;

    move-result-object v2

    return-object v2
.end method

.method private processECTCallBack(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1863
    if-nez p1, :cond_0

    .line 1864
    const-string v0, "ECTCallBack msg is null,just return"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1865
    return-void

    .line 1867
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1868
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-eqz v1, :cond_2

    .line 1869
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsServiceSub;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1870
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v2, :cond_1

    .line 1871
    const-string v2, "get imsphone fails."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1872
    return-void

    .line 1874
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1875
    .local v2, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyECTFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 1877
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :cond_2
    return-void
.end method

.method private processImsConnectivity()Z
    .locals 5

    .line 5435
    const/4 v0, 0x0

    .line 5437
    .local v0, "bDCReady":Z
    const/16 v1, 0x2f

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->endConnectivityIfNeeded(I)V

    .line 5439
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 5440
    const-string v1, "processImsConnectivity, wait for ims connecting"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5442
    return v3

    .line 5445
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    .line 5446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processImsConnectivity, ims is connected, mbReqRoutHost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5448
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    if-ne v4, v1, :cond_1

    .line 5449
    return v4

    .line 5452
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5454
    return v3

    .line 5458
    :cond_2
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    move-result v1

    .line 5460
    .local v1, "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processImsConnectivity, begin ims result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",  mImsDCState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5463
    if-eq v1, v4, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 5478
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5479
    const/4 v0, 0x0

    .line 5480
    goto :goto_0

    .line 5465
    :cond_4
    const/4 v0, 0x0

    .line 5466
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_5

    .line 5467
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5468
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startImsDataConnectionAlarm()V

    goto :goto_0

    .line 5469
    :cond_5
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_6

    goto :goto_0

    .line 5471
    :cond_6
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_7

    .line 5473
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5474
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startImsDataConnectionAlarm()V

    .line 5486
    :cond_7
    :goto_0
    return v0
.end method

.method private processReportChrException(BBI)V
    .locals 7
    .param p1, "isVowifiUt"    # B
    .param p2, "addressType"    # B
    .param p3, "failReason"    # I

    .line 6721
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/ims/HwImsUtImpl;->extractParametersForChr(BBI)Lcom/huawei/ims/UtCHRData;

    move-result-object v0

    .line 6722
    .local v0, "utChrData":Lcom/huawei/ims/UtCHRData;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 6723
    .local v1, "currDate":Ljava/util/Date;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 6724
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUtChrBroadcast(Lcom/huawei/ims/UtCHRData;)V

    .line 6725
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    if-nez v2, :cond_1

    .line 6726
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    .line 6728
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 6730
    :cond_2
    return-void
.end method

.method private processTemporarilyDcConnection()Z
    .locals 3

    .line 5497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processTemporarilyDcConnection, mImsDCState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5498
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 5499
    const-string v0, "processTemporarilyDcConnection, wait for ims connecting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5501
    return v2

    .line 5504
    :cond_0
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v0, v1, :cond_1

    .line 5505
    const-string v0, "processTemporarilyDcConnection, ims is connected, return true"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5506
    return v2

    .line 5509
    :cond_1
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->setDefaultDataSubId(I)V

    .line 5511
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasChangedDefaultDataSub:Z

    .line 5514
    const/4 v0, 0x0

    return v0
.end method

.method private queryAndSyncCLIRModeToImsSdk()V
    .locals 3

    .line 1280
    const-string v0, "[UTCMD]enter queryAndSyncCLIRModeToImsSdk"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1282
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-nez v0, :cond_0

    .line 1283
    const-string v0, "sim card has not been loaded!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1284
    return-void

    .line 1286
    :cond_0
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 1287
    .local v0, "domainSelect":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRSourceMode()I

    move-result v1

    .line 1289
    .local v1, "mOIRSourceMode":I
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1290
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryCLIR()I

    .line 1292
    :cond_1
    return-void
.end method

.method private queryCLIR(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 4341
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4343
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRSourceMode()I

    move-result v1

    .line 4344
    .local v1, "mOIRSourceMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter queryCLIR, mOIRSourceMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4346
    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    .line 4348
    .local v2, "mCLIRUtCanBeUsed":Z
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 4350
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRDefaultMode()I

    move-result v4

    .line 4351
    .local v4, "defaultClirMode":I
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v6, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    iget v7, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v6, v6, v7

    .line 4353
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 4351
    invoke-virtual {v5, v6, v7, v4}, Lcom/huawei/ims/HwImsConfigImpl;->getIntFromSP(Ljava/lang/String;Landroid/content/Context;I)I

    move-result v5

    .line 4356
    .local v5, "clirmode":I
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 4357
    .local v6, "clirArray":[I
    const/4 v7, 0x0

    aput v5, v6, v7

    .line 4358
    const/4 v7, 0x4

    aput v7, v6, v3

    .line 4360
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4361
    .local v3, "clirInfo":Landroid/os/Bundle;
    const-string v7, "queryClir"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 4363
    iget v7, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4364
    .local v7, "onComplete":Landroid/os/Message;
    if-nez v7, :cond_0

    .line 4365
    const-string v8, "onComplete is null."

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4368
    :cond_0
    iget-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v9, 0x1f

    invoke-virtual {v8, v9, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 4370
    .local v8, "response":Landroid/os/Message;
    invoke-virtual {v8, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4372
    invoke-direct {p0, v5, v8}, Lcom/huawei/ims/HwImsUtImpl;->syncCLIRModeToImsSdk(ILandroid/os/Message;)V

    .line 4373
    .end local v3    # "clirInfo":Landroid/os/Bundle;
    .end local v4    # "defaultClirMode":I
    .end local v5    # "clirmode":I
    .end local v6    # "clirArray":[I
    .end local v7    # "onComplete":Landroid/os/Message;
    .end local v8    # "response":Landroid/os/Message;
    goto :goto_0

    .line 4374
    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4376
    :goto_0
    return-void
.end method

.method private queryCallWaiting(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 4283
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4285
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v1

    .line 4287
    .local v1, "callWaitingSource":Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter getCallWaiting, callWaitingSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4289
    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    .line 4295
    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    if-nez v2, :cond_0

    .line 4296
    const-string v2, "call waiting is only allowed use CS domain and forbid sync to IMS SDK"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4298
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4300
    return-void

    .line 4303
    :cond_0
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CALL_WAITING_SOURCE:[I

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 4332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[error]can\'t get call waiting, the source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4334
    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    goto :goto_0

    .line 4311
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query cw , mIsUtForbidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",canUse403ForLocalCW="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4312
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v2, :cond_1

    .line 4313
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    goto :goto_0

    .line 4316
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    iget v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v3, v3, v4

    .line 4318
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 4316
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/huawei/ims/HwImsConfigImpl;->getBoolFromSP(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4322
    .local v2, "enable":Ljava/lang/Boolean;
    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4324
    .local v3, "onComplete":Landroid/os/Message;
    if-nez v3, :cond_2

    .line 4325
    const-string v4, "onComplete is null."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4328
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4, v5, v3}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCallWaitingDone(ZILandroid/os/Message;)V

    .line 4330
    .end local v2    # "enable":Ljava/lang/Boolean;
    .end local v3    # "onComplete":Landroid/os/Message;
    goto :goto_0

    .line 4308
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4309
    goto :goto_0

    .line 4305
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4306
    nop

    .line 4337
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private queryUtApn()V
    .locals 15

    .line 5640
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 5641
    .local v0, "subId":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 5643
    .local v1, "operator":Ljava/lang/String;
    const-string v2, "ims"

    .line 5645
    .local v2, "apnType":Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 5646
    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 5648
    :cond_0
    const-string v2, "xcap"

    .line 5652
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric = ? AND (type like \'%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%\')"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5654
    .local v3, "selection":Ljava/lang/String;
    const-string v5, "_id"

    .line 5655
    .local v5, "orderBy":Ljava/lang/String;
    const/4 v12, 0x0

    .line 5657
    .local v12, "cursor":Landroid/database/Cursor;
    const-string v6, "content://telephony/carriers/subId"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 5658
    .local v13, "uri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryUtApn:uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5661
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    new-array v10, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v1, v10, v14

    move-object v7, v13

    move-object v9, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v12, v6

    .line 5663
    if-eqz v12, :cond_3

    .line 5664
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 5665
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z

    goto :goto_0

    .line 5667
    :cond_2
    iput-boolean v14, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z

    .line 5670
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasUtUseAPN = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5674
    if-eqz v12, :cond_4

    .line 5675
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 5674
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 5671
    :catch_0
    move-exception v4

    .line 5672
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception for queryUtApn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5674
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v12, :cond_4

    goto :goto_1

    .line 5678
    :cond_4
    :goto_2
    return-void

    .line 5674
    :goto_3
    if-eqz v12, :cond_5

    .line 5675
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method

.method private recoverDefaultDataSub()V
    .locals 4

    .line 6007
    const-string v0, "recoverDefaultDataSub"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6008
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasChangedDefaultDataSub:Z

    if-nez v0, :cond_0

    .line 6009
    return-void

    .line 6012
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v0

    .line 6013
    .local v0, "defaultDataSubId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v1

    .line 6014
    .local v1, "default4GSlotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recoverDefaultDataSub: defaultDataSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", default4GSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6016
    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v1, v2, :cond_1

    .line 6017
    const-string v2, "recoverDefaultDataSub: recover default data sub to main sub"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6018
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->setDefaultDataSubId(I)V

    .line 6019
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasChangedDefaultDataSub:Z

    .line 6021
    :cond_1
    return-void
.end method

.method private regetIMSIFromPhone()Z
    .locals 3

    .line 6506
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 6507
    .local v0, "imsi":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 6508
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 6509
    .local v1, "defPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 6510
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 6511
    if-eqz v0, :cond_0

    .line 6512
    const-string v2, "regetIMSIFromPhone"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6513
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2, v0}, Lcom/huawei/ims/HwImsConfigImpl;->setIMSI(Ljava/lang/String;)V

    .line 6514
    const/4 v2, 0x1

    return v2

    .line 6519
    .end local v1    # "defPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private removeLastUtCmd()V
    .locals 3

    .line 2090
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2091
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2092
    const-string v1, "removeLastUtCmd mUtCmdQueue isEmpty"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2094
    monitor-exit v0

    return-void

    .line 2097
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after remove mUtCmdQueue size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2100
    monitor-exit v0

    .line 2101
    return-void

    .line 2100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeUtCmd()V
    .locals 3

    .line 2066
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2067
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after remove mUtCmdQueue size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2070
    monitor-exit v0

    .line 2071
    return-void

    .line 2070
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3170
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3171
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3173
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsUtImpl$UtCmd;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3175
    .local v2, "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-ne v2, p1, :cond_0

    .line 3176
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 3177
    goto :goto_1

    .line 3179
    .end local v2    # "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_0
    goto :goto_0

    .line 3180
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsUtImpl$UtCmd;>;"
    :cond_1
    :goto_1
    monitor-exit v0

    .line 3181
    return-void

    .line 3180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetUtSDK()V
    .locals 1

    .line 6491
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCurrentSubChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6492
    const-string v0, "handleUtCmd: reset Ut SDK"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6493
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setCurrentSubId(I)V

    .line 6496
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 6498
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->regetIMSIFromPhone()Z

    .line 6499
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initSciSSConfHs()V

    .line 6501
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6503
    :cond_0
    return-void
.end method

.method private responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 5098
    new-instance v0, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 5100
    .local v0, "info":Landroid/telephony/ims/ImsSsInfo;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5103
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_1

    .line 5101
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 5106
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5108
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "imsSsInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5110
    return-object v1
.end method

.method private responseCLCK(Ljava/lang/Boolean;)[Landroid/telephony/ims/ImsSsInfo;
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 5016
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/telephony/ims/ImsSsInfo;

    .line 5018
    .local v0, "info":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5019
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5022
    :cond_0
    aget-object v1, v0, v2

    const/4 v2, 0x1

    iput v2, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_1

    .line 5020
    :cond_1
    :goto_0
    aget-object v1, v0, v2

    iput v2, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 5025
    :goto_1
    return-object v0
.end method

.method private responseCLIP(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 5080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCLIP, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5082
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private responseCLIR(Ljava/lang/Boolean;I)Landroid/os/Bundle;
    .locals 5
    .param p1, "result"    # Ljava/lang/Boolean;
    .param p2, "defaultBehavior"    # I

    .line 5049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCLIR result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5051
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 5053
    .local v1, "response":[I
    const/4 v2, 0x1

    const/4 v3, 0x4

    aput v3, v1, v2

    .line 5054
    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 5062
    :cond_0
    if-ne p2, v2, :cond_1

    .line 5063
    aput v0, v1, v3

    goto :goto_1

    .line 5064
    :cond_1
    if-ne p2, v0, :cond_2

    .line 5065
    aput v2, v1, v3

    goto :goto_1

    .line 5067
    :cond_2
    aput v0, v1, v3

    goto :goto_1

    .line 5055
    :cond_3
    :goto_0
    const/4 v4, 0x3

    if-ne p2, v4, :cond_4

    .line 5056
    aput v0, v1, v3

    .line 5057
    aput v3, v1, v2

    goto :goto_1

    .line 5059
    :cond_4
    aput v3, v1, v3

    .line 5071
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5073
    .local v0, "clirInfo":Landroid/os/Bundle;
    const-string v2, "queryClir"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 5075
    return-object v0
.end method

.method private responseCOLP(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 5092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCOLP, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5094
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private responseCOLR(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 5086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCOLR, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5088
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private responseCWInts(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 5029
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseInts(Ljava/lang/Boolean;I)[I

    move-result-object v0

    return-object v0
.end method

.method private responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 9
    .param p1, "reason"    # I

    .line 4943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCallForward reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4945
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transUtToCFReason(I)I

    move-result v0

    .line 4947
    .local v0, "condition":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 4948
    const-string v1, "invalid reason"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4949
    new-array v1, v2, [Landroid/telephony/ims/ImsCallForwardInfo;

    return-object v1

    .line 4952
    :cond_0
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->getCallDiversionEnable(I)Ljava/lang/Boolean;

    move-result-object v3

    .line 4954
    .local v3, "result":Ljava/lang/Boolean;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallDiversionEnable result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4956
    const/4 v4, 0x1

    new-array v5, v4, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 4958
    .local v5, "infos":[Landroid/telephony/ims/ImsCallForwardInfo;
    new-instance v6, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    aput-object v6, v5, v2

    .line 4960
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 4963
    :cond_1
    aget-object v6, v5, v2

    iput v4, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_1

    .line 4961
    :cond_2
    :goto_0
    aget-object v6, v5, v2

    iput v2, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 4966
    :goto_1
    aget-object v6, v5, v2

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 4967
    aget-object v6, v5, v2

    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->getCallForwardTargetNumber(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 4968
    aget-object v6, v5, v2

    iget-object v6, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 4969
    const-string v6, "responseCallForward number is null, set empty string as default"

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4971
    aget-object v6, v5, v2

    const-string v7, ""

    iput-object v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 4974
    :cond_3
    aget-object v6, v5, v2

    iput v2, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 4975
    const/4 v6, 0x3

    if-ne v6, p1, :cond_4

    .line 4976
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getCallDiversionNoReplyTimer()Ljava/lang/String;

    move-result-object v6

    .line 4977
    .local v6, "str":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 4978
    aget-object v7, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 4982
    .end local v6    # "str":Ljava/lang/String;
    :cond_4
    if-nez p1, :cond_6

    .line 4983
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getCallForwardTime()[Ljava/util/Date;

    move-result-object v6

    .line 4985
    .local v6, "date":[Ljava/util/Date;
    if-eqz v6, :cond_5

    const/4 v7, 0x2

    array-length v8, v6

    if-ne v7, v8, :cond_5

    aget-object v7, v6, v2

    if-eqz v7, :cond_5

    aget-object v7, v6, v4

    if-eqz v7, :cond_5

    .line 4986
    aget-object v1, v5, v2

    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v7

    iput v7, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 4987
    aget-object v1, v5, v2

    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v7

    iput v7, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mStartMinute:I

    .line 4988
    aget-object v1, v5, v2

    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v7

    iput v7, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mEndHour:I

    .line 4989
    aget-object v1, v5, v2

    aget-object v4, v6, v4

    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v4

    iput v4, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mEndMinute:I

    .line 4991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get CFT successfully, date="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mStartHour="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v2

    iget v4, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mStartMinute="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v2

    iget v4, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartMinute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mEndHour="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v2

    iget v4, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mEndHour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mEndMinute="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v2

    iget v4, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mEndMinute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 4997
    :cond_5
    aget-object v4, v5, v2

    iput v1, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 4998
    aget-object v4, v5, v2

    iput v1, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 4999
    aget-object v4, v5, v2

    iput v1, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 5000
    aget-object v4, v5, v2

    iput v1, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 5002
    const-string v1, "can\'t get the time while query CFT, deliver -1 to APP"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5010
    .end local v6    # "date":[Ljava/util/Date;
    :cond_6
    :goto_2
    aget-object v1, v5, v2

    const/16 v2, 0x81

    iput v2, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 5012
    return-object v5
.end method

.method private responseCallForwardEx(I)[Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 4
    .param p1, "reason"    # I

    .line 4922
    const/4 v0, 0x0

    .line 4923
    .local v0, "infos":[Landroid/telephony/ims/ImsCallForwardInfo;
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transUtToCFReason(I)I

    move-result v1

    .line 4924
    .local v1, "condition":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getIsUseMultCondition()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4925
    const-string v2, "responseCallForwardEx ,Single and composite node query"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4926
    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    .line 4927
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    goto :goto_0

    .line 4928
    :cond_0
    const/4 v2, 0x7

    if-ne p1, v2, :cond_1

    .line 4929
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    goto :goto_0

    .line 4931
    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    .line 4933
    :goto_0
    if-eqz v0, :cond_3

    aget-object v2, v0, v3

    if-eqz v2, :cond_3

    .line 4934
    aget-object v2, v0, v3

    iput v1, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_1

    .line 4937
    :cond_2
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    .line 4939
    :cond_3
    :goto_1
    return-object v0
.end method

.method private responseFailure(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .line 4550
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4551
    const/16 p2, 0x33f

    .line 4562
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter responseFailure, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4564
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 4565
    .local v0, "error":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    invoke-virtual {v1, p1, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 4566
    return-void
.end method

.method private responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 6605
    if-nez p1, :cond_0

    .line 6606
    const-string v0, "responseFailureAndEndUt: cmd is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6607
    return-void

    .line 6609
    :cond_0
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6610
    .local v0, "onComplete":Landroid/os/Message;
    if-eqz v0, :cond_1

    .line 6611
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6613
    :cond_1
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 6614
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 6615
    return-void
.end method

.method private responseInts(Ljava/lang/Boolean;I)[I
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;
    .param p2, "num"    # I

    .line 5033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseInts result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5035
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5037
    .local v0, "response":[I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5040
    :cond_0
    aput v1, v0, v2

    goto :goto_1

    .line 5038
    :cond_1
    :goto_0
    aput v2, v0, v2

    .line 5042
    :goto_1
    aput p2, v0, v1

    .line 5044
    return-object v0
.end method

.method private saveCTCardVolteFlag(Z)V
    .locals 4
    .param p1, "isVolteCard"    # Z

    .line 3605
    if-eqz p1, :cond_0

    sget v0, Lcom/huawei/ims/HwImsUtImpl;->FLAG_IS_VOLTE:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->FLAG_IS_NOT_VOLTE:I

    .line 3606
    .local v0, "volteFlag":I
    :goto_0
    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v1

    .line 3607
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCTCardVolteFlag isVolteCard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3608
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3609
    return-void
.end method

.method private sendQueryCallWaitingForDetection()V
    .locals 4

    .line 6636
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 6637
    const-string v0, "[UTCMD]enter sendQueryCallWaitingForDetection"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6638
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING_FOR_DETECTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 6639
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6640
    return-void

    .line 6642
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 6643
    return-void
.end method

.method private sendStopImsApnMessage()V
    .locals 5

    .line 5682
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v0

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v0, v1, :cond_0

    .line 5683
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtImsDataDelayEndTime()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getDefUtImsDataDelayEndTime()I

    move-result v0

    .line 5684
    .local v0, "utImsDataDelayTime":I
    :goto_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    .line 5685
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    .line 5684
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5687
    return-void
.end method

.method private sendUtChrBroadcast(Lcom/huawei/ims/UtCHRData;)V
    .locals 4
    .param p1, "utChrData"    # Lcom/huawei/ims/UtCHRData;

    .line 6669
    if-nez p1, :cond_0

    .line 6670
    const-string v0, "sendUtCHRBroadcast: utCHRData is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6671
    return-void

    .line 6673
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6674
    .local v0, "utChrBundle":Landroid/os/Bundle;
    const-string v1, "EventScenario"

    const-string v2, "UT_FAIL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6675
    const-string v1, "EventFailCause"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6676
    const-string v1, "IMS.UT.operationType"

    iget-byte v2, p1, Lcom/huawei/ims/UtCHRData;->mOperationType:B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6677
    const-string v1, "IMS.UT.dataApntype"

    iget-byte v2, p1, Lcom/huawei/ims/UtCHRData;->mDataApntype:B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6678
    const-string v1, "IMS.UT.isSupportWifi"

    iget-byte v2, p1, Lcom/huawei/ims/UtCHRData;->mIsSupportWifi:B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6679
    const-string v1, "IMS.UT.isMobileDateConnected"

    iget-byte v2, p1, Lcom/huawei/ims/UtCHRData;->mIsMobileDateConnected:B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6680
    const-string v1, "IMS.UT.isWifiConnected"

    iget-byte v2, p1, Lcom/huawei/ims/UtCHRData;->mIsWifiConnected:B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6681
    iget-byte v1, p1, Lcom/huawei/ims/UtCHRData;->mIsVowifiEnable:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 6682
    const-string v1, "IMS.UT.isVowifiEnable"

    iget-byte v3, p1, Lcom/huawei/ims/UtCHRData;->mIsVowifiEnable:B

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6684
    :cond_1
    iget-byte v1, p1, Lcom/huawei/ims/UtCHRData;->mAddressType:B

    if-eq v1, v2, :cond_2

    .line 6685
    const-string v1, "IMS.UT.addressType"

    iget-byte v3, p1, Lcom/huawei/ims/UtCHRData;->mAddressType:B

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6687
    :cond_2
    const-string v1, "IMS.UT.subId"

    iget-byte v3, p1, Lcom/huawei/ims/UtCHRData;->mSubId:B

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6688
    const-string v1, "IMS.UT.currentSubId"

    iget-byte v3, p1, Lcom/huawei/ims/UtCHRData;->mCurrentSubId:B

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6689
    iget-byte v1, p1, Lcom/huawei/ims/UtCHRData;->mVowifiDomain:B

    if-eq v1, v2, :cond_3

    .line 6690
    const-string v1, "IMS.UT.vowifidomain"

    iget-byte v3, p1, Lcom/huawei/ims/UtCHRData;->mVowifiDomain:B

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6692
    :cond_3
    iget v1, p1, Lcom/huawei/ims/UtCHRData;->mFailReason:I

    if-eq v1, v2, :cond_4

    .line 6693
    const-string v1, "IMS.UT.failReason"

    iget v2, p1, Lcom/huawei/ims/UtCHRData;->mFailReason:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6695
    :cond_4
    const-string v1, "IMS.UT.cmdDcState"

    iget-object v2, p1, Lcom/huawei/ims/UtCHRData;->mCmdDcState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUtCHRBroadcast: sendTelephonyChrBroadcast."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6697
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwTelephonyChrManager()Lcom/android/internal/telephony/HwTelephonyChrManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/HwTelephonyChrManager;->sendTelephonyChrBroadcast(Landroid/os/Bundle;)V

    .line 6698
    return-void
.end method

.method private static setCurrentSubId(I)V
    .locals 0
    .param p0, "subId"    # I

    .line 4206
    sput p0, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    .line 4207
    return-void
.end method

.method private setDefaultDataSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .line 5518
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 5519
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v0, :cond_0

    .line 5520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultDataSubId: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5521
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    goto :goto_0

    .line 5523
    :cond_0
    const-string v1, "setDefaultDataSubId failed!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5525
    :goto_0
    return-void
.end method

.method private setImsExtensionalParam(IZLjava/lang/String;)V
    .locals 1
    .param p1, "num"    # I
    .param p2, "isNeed"    # Z
    .param p3, "params"    # Ljava/lang/String;

    .line 4145
    if-eqz p2, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/huawei/sci/SciSSConfHs;->setExtensionalParam(IZLjava/lang/String;)I

    .line 4146
    return-void
.end method

.method private setImsUserAgentExtensionalParam()V
    .locals 4

    .line 4149
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4150
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4151
    .local v0, "buildVersionBuffer":Ljava/lang/StringBuffer;
    const-string v1, "HUAWEI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4152
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getBoolCarrierBuildVersion()Z

    move-result v1

    .line 4153
    .local v1, "isNeedBuildVersion":Z
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->setImsExtensionalParam(IZLjava/lang/String;)V

    .line 4154
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->setImsExtensionalParam(IZLjava/lang/String;)V

    .line 4155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetImsExtensionalParam suucess:RO_HW_OEMNAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",RO_BUILD_VERSION_INCREMENTAL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",buildVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4157
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4155
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4158
    .end local v0    # "buildVersionBuffer":Ljava/lang/StringBuffer;
    .end local v1    # "isNeedBuildVersion":Z
    goto :goto_0

    .line 4159
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get prop RO_HW_OEMNAME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",RO_BUILD_VERSION_INCREMENTAL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4162
    :goto_0
    return-void
.end method

.method private static setSciSSConfCb(Lcom/huawei/sci/SciSSConfCb;)V
    .locals 0
    .param p0, "sciSSConfCb"    # Lcom/huawei/sci/SciSSConfCb;

    .line 4210
    sput-object p0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    .line 4211
    return-void
.end method

.method private setUtDataExpireTime(I)V
    .locals 3
    .param p1, "type"    # I

    .line 6325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter setUtDataExpireTime, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6327
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 6331
    :cond_0
    :pswitch_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6333
    .local v0, "currDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Date;->setSeconds(I)V

    .line 6334
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expirte time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6337
    nop

    .line 6341
    .end local v0    # "currDate":Ljava/util/Date;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setUtOverWifiTunnelUpFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 5429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUtOverWifiTunnelUpFlag, flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5430
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    .line 5431
    return-void
.end method

.method private startAlarm(II)V
    .locals 4
    .param p1, "alarm"    # I
    .param p2, "timer"    # I

    .line 6025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAlarm alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6027
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 6028
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6029
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6031
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 6032
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    .line 6031
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6035
    :cond_1
    return-void
.end method

.method private startDCAlarm()V
    .locals 2

    .line 5914
    const/16 v0, 0x29

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5915
    return-void
.end method

.method private startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 1
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 6654
    const-string v0, "startDefaultBearForWifiConnected."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6655
    if-nez p1, :cond_0

    .line 6656
    const-string v0, "startDefaultBearForWifiConnected: cmd is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6657
    return-void

    .line 6659
    :cond_0
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 6660
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 6661
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startImsDataConnectionAlarm()V

    .line 6662
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    .line 6663
    return-void
.end method

.method private startImsDataConnectionAlarm()V
    .locals 2

    .line 5589
    const/16 v0, 0x2c

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5590
    return-void
.end method

.method private startTemporaryDCAlarm()V
    .locals 2

    .line 5922
    const/16 v0, 0x2f

    const/16 v1, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5923
    return-void
.end method

.method private startTemporaryUtStayAlarm()V
    .locals 2

    .line 5985
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5986
    const-string v0, "startTemporaryUtStayAlarm"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5987
    const/16 v0, 0x30

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5989
    :cond_0
    return-void
.end method

.method private startUtAlarm()V
    .locals 2

    .line 5885
    const/16 v0, 0x2a

    const/16 v1, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5886
    return-void
.end method

.method private startUtForbiddenAlarm()V
    .locals 4

    .line 5956
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtForbiddenTimer()I

    move-result v0

    .line 5957
    .local v0, "delay":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUtForbiddenAlarm: delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5958
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    .line 5959
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    const v3, 0xea60

    div-int v3, v0, v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 5960
    return-void
.end method

.method private startUtRetryAlarm(I)V
    .locals 2
    .param p1, "count"    # I

    .line 3628
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtRetryInterval(I)I

    move-result v0

    .line 3629
    .local v0, "utRetryInterval":I
    if-gez v0, :cond_0

    .line 3630
    return-void

    .line 3633
    :cond_0
    const/16 v1, 0x2b

    invoke-direct {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 3634
    return-void
.end method

.method private startUtServiceThread()V
    .locals 2

    .line 1632
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$2;

    invoke-direct {v1, p0}, Lcom/huawei/ims/HwImsUtImpl$2;-><init>(Lcom/huawei/ims/HwImsUtImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1643
    return-void
.end method

.method private startWifiTunnelConnectionAlarm()V
    .locals 2

    .line 5342
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_0

    .line 5344
    const/16 v0, 0x2e

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtVoWifiDelayEndTime()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5347
    :cond_0
    return-void
.end method

.method private startWifiTunnelSetupAlarm()V
    .locals 2

    .line 5381
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_0

    .line 5382
    const/16 v0, 0x2d

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5384
    :cond_0
    return-void
.end method

.method private stopAlarm(I)V
    .locals 2
    .param p1, "alarm"    # I

    .line 6038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAlarm alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6040
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 6041
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6042
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6044
    :cond_0
    return-void
.end method

.method private stopDcAlarm()V
    .locals 1

    .line 5918
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5919
    return-void
.end method

.method private stopImsDataConnectionAlarm()V
    .locals 1

    .line 5593
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5594
    return-void
.end method

.method private stopTemporaryDcAlarm()V
    .locals 1

    .line 5926
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5927
    return-void
.end method

.method private stopTemporaryUtStayAlarm()V
    .locals 1

    .line 5992
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_0

    .line 5993
    const-string v0, "stopTemporaryUtStayAlarm"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5994
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5996
    :cond_0
    return-void
.end method

.method private stopUtAlarm()V
    .locals 1

    .line 5889
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5890
    return-void
.end method

.method private stopUtForbiddenAlarm()V
    .locals 2

    .line 5963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopUtForbiddenAlarm: mUtForbiddenDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    .line 5965
    return-void
.end method

.method private stopUtRetryAlarm()V
    .locals 1

    .line 3637
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 3638
    return-void
.end method

.method private stopWifiTunnelConnectionAlarm()V
    .locals 1

    .line 5350
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_0

    .line 5351
    const-string v0, "already stop tunnel connection Alarm, no need do again"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5352
    return-void

    .line 5354
    :cond_0
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5355
    return-void
.end method

.method private stopWifiTunnelSetupAlarm()V
    .locals 1

    .line 5387
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_0

    .line 5388
    const-string v0, "already stop tunnel connection Alarm, no need do again"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5389
    return-void

    .line 5391
    :cond_0
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5392
    return-void
.end method

.method private syncCLIRModeToImsSdk(ILandroid/os/Message;)V
    .locals 1
    .param p1, "mCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 6346
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/ImsRIL;->setCLIR(ILandroid/os/Message;)V

    .line 6347
    return-void
.end method

.method private syncCallWaitingToCS(ZLandroid/os/Message;)Z
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 6225
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getCallWaitingAction(Z)I

    move-result v0

    .line 6227
    .local v0, "callWaitingAction":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6231
    const/4 v1, 0x1

    return v1
.end method

.method private syncCallWaitingToImsSdk(ZLandroid/os/Message;)Z
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 6166
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getCallWaitingAction(Z)I

    move-result v0

    .line 6168
    .local v0, "callWaitingAction":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin sync call waiting to IMS SDK, callWaitingAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6171
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    const/4 v2, 0x0

    const/16 v3, 0x1d

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 6172
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 6174
    invoke-virtual {v5, v3, v0, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 6172
    invoke-virtual {v1, p1, v4, v2}, Lcom/huawei/ims/ImsRIL;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_0

    .line 6179
    :cond_0
    const-string v1, "don\'t sync result to IMS SDK exectly"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6181
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6187
    :goto_0
    return v4
.end method

.method private transBarringFacilityToCbReason(Ljava/lang/String;)I
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;

    .line 4819
    const-string v0, "AO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4820
    const/4 v0, 0x1

    return v0

    .line 4821
    :cond_0
    const-string v0, "OI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4822
    const/4 v0, 0x2

    return v0

    .line 4823
    :cond_1
    const-string v0, "OX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4824
    const/4 v0, 0x3

    return v0

    .line 4825
    :cond_2
    const-string v0, "AI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4826
    const/4 v0, 0x0

    return v0

    .line 4827
    :cond_3
    const-string v0, "IR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4828
    const/4 v0, 0x4

    return v0

    .line 4829
    :cond_4
    const-string v0, "AB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4830
    const/4 v0, 0x5

    return v0

    .line 4832
    :cond_5
    const/4 v0, -0x1

    return v0
.end method

.method private transCFToUtReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 4837
    packed-switch p1, :pswitch_data_0

    .line 4855
    const/4 v0, -0x1

    return v0

    .line 4847
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 4852
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 4850
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 4845
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 4843
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 4841
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 4839
    :pswitch_6
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transCFToUtType(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 4860
    packed-switch p1, :pswitch_data_0

    .line 4878
    const/4 v0, -0x1

    return v0

    .line 4870
    :pswitch_0
    const/16 v0, 0xc

    return v0

    .line 4875
    :pswitch_1
    const/16 v0, 0x17

    return v0

    .line 4873
    :pswitch_2
    const/16 v0, 0x16

    return v0

    .line 4868
    :pswitch_3
    const/16 v0, 0xb

    return v0

    .line 4866
    :pswitch_4
    const/16 v0, 0xa

    return v0

    .line 4864
    :pswitch_5
    const/16 v0, 0x9

    return v0

    .line 4862
    :pswitch_6
    const/4 v0, 0x7

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transCLIRModeToUtReason(I)I
    .locals 1
    .param p1, "clirMode"    # I

    .line 4908
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 4914
    return v0

    .line 4910
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private transCbTypeToFacility(I)Ljava/lang/String;
    .locals 3
    .param p1, "cbType"    # I

    .line 4751
    const/4 v0, 0x0

    .line 4753
    .local v0, "facility":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 4781
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4777
    :pswitch_1
    const-string v0, "AC"

    .line 4778
    goto :goto_0

    .line 4774
    :pswitch_2
    const-string v0, "AG"

    .line 4775
    goto :goto_0

    .line 4771
    :pswitch_3
    const-string v0, "AB"

    .line 4772
    goto :goto_0

    .line 4767
    :pswitch_4
    const-string v0, "IR"

    .line 4768
    goto :goto_0

    .line 4761
    :pswitch_5
    const-string v0, "OX"

    .line 4762
    goto :goto_0

    .line 4758
    :pswitch_6
    const-string v0, "OI"

    .line 4759
    goto :goto_0

    .line 4755
    :pswitch_7
    const-string v0, "AO"

    .line 4756
    goto :goto_0

    .line 4764
    :pswitch_8
    const-string v0, "AI"

    .line 4765
    nop

    .line 4785
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private transCbTypeToUtTypeGet(I)I
    .locals 1
    .param p1, "cbType"    # I

    .line 4732
    const/4 v0, -0x1

    .line 4733
    .local v0, "utType":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4737
    :pswitch_0
    const/16 v0, 0xe

    .line 4738
    goto :goto_0

    .line 4741
    :pswitch_1
    const/16 v0, 0xd

    .line 4742
    nop

    .line 4747
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private transCbTypeToUtTypeSet(I)I
    .locals 3
    .param p1, "cbType"    # I

    .line 4789
    const/4 v0, -0x1

    .line 4791
    .local v0, "utType":I
    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 4811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR]unknown cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4805
    :pswitch_0
    const/16 v0, 0x13

    .line 4806
    goto :goto_0

    .line 4799
    :pswitch_1
    const/16 v0, 0x12

    .line 4800
    goto :goto_0

    .line 4796
    :pswitch_2
    const/16 v0, 0x11

    .line 4797
    goto :goto_0

    .line 4793
    :pswitch_3
    const/16 v0, 0x10

    .line 4794
    goto :goto_0

    .line 4802
    :pswitch_4
    const/16 v0, 0xf

    .line 4803
    goto :goto_0

    .line 4808
    :cond_0
    const/16 v0, 0x15

    .line 4809
    nop

    .line 4815
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transIntToDate(II)Ljava/util/Date;
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 6047
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6049
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0, p1}, Ljava/util/Date;->setHours(I)V

    .line 6050
    invoke-virtual {v0, p2}, Ljava/util/Date;->setMinutes(I)V

    .line 6052
    return-object v0
.end method

.method private transUtToCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 4883
    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 4902
    const/4 v0, -0x1

    return v0

    .line 4898
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 4896
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 4893
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 4891
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 4889
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 4887
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 4885
    :cond_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transferCmdFromRetryQueueToUtCmdQueue()V
    .locals 5

    .line 3137
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3138
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3140
    .local v1, "size":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transferCmdFromRetryQueueToUtCmdQueue, size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3142
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3143
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3146
    .local v3, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3147
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 3151
    :cond_0
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_UT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v4, v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3152
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->addUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3142
    .end local v3    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3155
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3156
    .end local v1    # "size":I
    monitor-exit v0

    .line 3157
    return-void

    .line 3156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private transferCmdFromUtCmdQueueToRetryQueue(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 2
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3160
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->removeUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3162
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3163
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd tries go Ut interface again, add cmd to mRetryUtCmdQueue, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3167
    return-void

    .line 3164
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateCLIR(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 4486
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4488
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRSourceMode()I

    move-result v1

    .line 4490
    .local v1, "mOIRSourceMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter updateCLIR, mOIRSourceMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4492
    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    .line 4493
    .local v2, "mCLIRUtCanBeUsed":Z
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 4494
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v4, v4, v5

    iget v5, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 4497
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4494
    invoke-virtual {v3, v4, v5, v6}, Lcom/huawei/ims/HwImsConfigImpl;->setIntToSP(Ljava/lang/String;ILandroid/content/Context;)V

    .line 4499
    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4501
    .local v3, "onComplete":Landroid/os/Message;
    if-nez v3, :cond_0

    .line 4502
    const-string v4, "onComplete is null."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4505
    :cond_0
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x1f

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 4508
    .local v4, "response":Landroid/os/Message;
    iget v5, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    invoke-direct {p0, v5, v4}, Lcom/huawei/ims/HwImsUtImpl;->syncCLIRModeToImsSdk(ILandroid/os/Message;)V

    .line 4509
    .end local v3    # "onComplete":Landroid/os/Message;
    .end local v4    # "response":Landroid/os/Message;
    goto :goto_0

    .line 4510
    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4512
    :goto_0
    return-void
.end method

.method private updateCallBarringAllOption(Ljava/lang/String;ZI)I
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "action"    # Z
    .param p3, "serviceClass"    # I

    .line 4382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter updateCallbarringAllOption, action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4383
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 4385
    .local v0, "CallBarringAll":[I
    const/4 v1, 0x0

    .line 4387
    .local v1, "id":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 4389
    aget v3, v0, v2

    invoke-direct {p0, p1, v3, p2, p3}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringBase(Ljava/lang/String;IZI)I

    move-result v1

    .line 4387
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4393
    .end local v2    # "i":I
    :cond_0
    return v1

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x1
        0x5
    .end array-data
.end method

.method private updateCallBarringBase(Ljava/lang/String;IZI)I
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "action"    # Z
    .param p4, "serviceClass"    # I

    .line 4399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter updateCallBarringBase, cbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4400
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeSet(I)I

    move-result v0

    .line 4402
    .local v0, "type":I
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 4404
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4405
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 4408
    :cond_0
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToFacility(I)Ljava/lang/String;

    move-result-object v2

    .line 4410
    .local v2, "facility":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->transBarringFacilityToCbReason(Ljava/lang/String;)I

    move-result v3

    .line 4412
    .local v3, "condition":I
    iput v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 4413
    iput-boolean p3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 4414
    iput-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    .line 4415
    iput-object p1, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csPassword:Ljava/lang/String;

    .line 4417
    iput p4, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    .line 4419
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4421
    iget v4, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v4
.end method

.method private updateCallWaiting(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCallWaiting enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1589
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1591
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iput-boolean p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1593
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 1594
    return v2

    .line 1605
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 1607
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v3, :cond_1

    .line 1608
    const-string v1, "invalid domain, stop updateCallWaiting"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1610
    return v2

    .line 1613
    :cond_1
    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 1615
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method private updateCallWaiting(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 4425
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v0

    .line 4427
    .local v0, "callWaitingSource":Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter setCallWaiting, callWaitingSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4429
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4431
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    .line 4437
    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    if-nez v2, :cond_0

    .line 4438
    const-string v2, "call waiting is only allowed use CS domain and forbid sync to IMS SDK"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4440
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4442
    return-void

    .line 4445
    :cond_0
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CALL_WAITING_SOURCE:[I

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 4478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[error]can\'t set call waiting, the source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4480
    return-void

    .line 4454
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update callwaiting canUse403ForLocalCW : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mIsUtForbidden : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4455
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v2, :cond_1

    .line 4456
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    goto :goto_1

    .line 4459
    :cond_1
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4461
    .local v2, "onComplete":Landroid/os/Message;
    if-nez v2, :cond_2

    .line 4462
    const-string v3, "onComplete is null."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4465
    :cond_2
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4466
    iget-boolean v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-direct {p0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToImsSdk(ZLandroid/os/Message;)Z

    goto :goto_0

    .line 4467
    :cond_3
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4468
    iget-boolean v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-direct {p0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToCS(ZLandroid/os/Message;)Z

    .line 4476
    .end local v2    # "onComplete":Landroid/os/Message;
    :goto_0
    goto :goto_1

    .line 4470
    .restart local v2    # "onComplete":Landroid/os/Message;
    :cond_4
    const-string v3, "[error]local call waiting and not sync is not reasonable."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4472
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 4473
    return-void

    .line 4450
    .end local v2    # "onComplete":Landroid/os/Message;
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4451
    goto :goto_1

    .line 4447
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4448
    nop

    .line 4482
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canUseDefaultBearForWifiConnected()Z
    .locals 1

    .line 6648
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    if-nez v0, :cond_0

    .line 6649
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6648
    :goto_0
    return v0
.end method

.method clear()V
    .locals 1

    .line 1339
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 1340
    return-void
.end method

.method public close()V
    .locals 1

    .line 803
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    .line 806
    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 807
    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 808
    return-void
.end method

.method public detectSimCardSubscriptionStatus()V
    .locals 3

    .line 6619
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-nez v0, :cond_0

    .line 6620
    const-string v0, "sim card has not been loaded"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6621
    return-void

    .line 6625
    :cond_0
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    .line 6626
    .local v0, "mainSlot":I
    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v1, v0, :cond_1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6627
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndNotSupportVolte()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6628
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "don\'t detect sim card subscription status, the main slot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6630
    return-void

    .line 6632
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->sendQueryCallWaitingForDetection()V

    .line 6633
    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUtIMPUFromNetwork()Ljava/lang/String;
    .locals 1

    .line 6571
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-eqz v0, :cond_0

    .line 6572
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtIMPUFromNetwork()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6574
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method handleImsGetImpuDone(Ljava/lang/String;)V
    .locals 1
    .param p1, "impu"    # Ljava/lang/String;

    .line 1332
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 1333
    return-void
.end method

.method handleSimCardAbsent()V
    .locals 1

    .line 1542
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 1543
    return-void
.end method

.method handleSimRecordsLoaded(Ljava/lang/String;)V
    .locals 1
    .param p1, "newImsi"    # Ljava/lang/String;

    .line 1325
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 1326
    return-void
.end method

.method isAirModeResetCWInModem()Z
    .locals 1

    .line 1511
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCWInModem:Z

    return v0
.end method

.method public isSIMCardCheckedByUT()Z
    .locals 1

    .line 6580
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    return v0
.end method

.method public isSupportCFT()Z
    .locals 3

    .line 1210
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v0

    return v0
.end method

.method isUtEnable()Z
    .locals 1

    .line 1219
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    return v0
.end method

.method public isUtIdle()Z
    .locals 6

    .line 6541
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x30

    .line 6542
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6544
    .local v0, "isWaitingForUtStay":Z
    :goto_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 6546
    .local v3, "isUtCmdQueueEmpty":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUtIdle: isWaitingForUtStay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isUtCmdQueueEmpty = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6547
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public processECT()V
    .locals 3

    .line 6561
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_0

    .line 6562
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->explicitCallTransfer(Landroid/os/Message;)V

    .line 6564
    :cond_0
    return-void
.end method

.method public processOnTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p3

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processOnTransact , code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 734
    const/4 v11, 0x0

    .line 736
    .local v11, "result":I
    const/4 v0, 0x0

    const/4 v12, 0x1

    packed-switch v9, :pswitch_data_0

    .line 794
    return v0

    .line 777
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 778
    .local v6, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 779
    .local v7, "cbType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v12, :cond_0

    move v3, v12

    goto :goto_0

    :cond_0
    move v3, v0

    .line 781
    .local v3, "action":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 782
    .local v13, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 784
    .local v14, "barrList":[Ljava/lang/String;
    move-object v0, v8

    move-object v1, v6

    move v2, v7

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringOption(Ljava/lang/String;IZI[Ljava/lang/String;)I

    move-result v0

    .line 787
    .end local v11    # "result":I
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    return v12

    .line 759
    .end local v0    # "result":I
    .end local v3    # "action":Z
    .end local v6    # "password":Ljava/lang/String;
    .end local v7    # "cbType":I
    .end local v13    # "serviceClass":I
    .end local v14    # "barrList":[Ljava/lang/String;
    .restart local v11    # "result":I
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 760
    .local v13, "startHour":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 761
    .local v14, "startMinute":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 762
    .local v15, "endHour":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 763
    .local v16, "endMinute":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 764
    .local v17, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 765
    .local v18, "condition":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 767
    .local v19, "number":Ljava/lang/String;
    move-object v0, v8

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/huawei/ims/HwImsUtImpl;->updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I

    move-result v0

    .line 769
    .end local v11    # "result":I
    .restart local v0    # "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    return v12

    .line 749
    .end local v0    # "result":I
    .end local v13    # "startHour":I
    .end local v14    # "startMinute":I
    .end local v15    # "endHour":I
    .end local v16    # "endMinute":I
    .end local v17    # "action":I
    .end local v18    # "condition":I
    .end local v19    # "number":Ljava/lang/String;
    .restart local v11    # "result":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtEnable()Z

    move-result v0

    .line 750
    .local v0, "isUtEnable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUtEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 751
    move v1, v0

    .line 753
    .end local v11    # "result":I
    .local v1, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    return v12

    .line 739
    .end local v0    # "isUtEnable":Z
    .end local v1    # "result":I
    .restart local v11    # "result":I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->isSupportCFT()Z

    move-result v0

    .line 740
    .local v0, "isSupportCFT":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportCFT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 741
    move v1, v0

    .line 743
    .end local v11    # "result":I
    .restart local v1    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized queryAndSyncCallWaitingToCs()V
    .locals 4

    monitor-enter p0

    .line 1256
    :try_start_0
    const-string v0, "[UTCMD]enter queryAndSyncCallWaitingToCs"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1260
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCallWaitingExpire()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 1261
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isLocalCallWaitingEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryCallWaiting()I

    goto :goto_0

    .line 1268
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardMccMncPreferToUseUT()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1269
    const-string v0, "this card MCC MNC is not prefer to use UT, will set network mode for callwait"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->setCallWaiting(ZILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1255
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsUtImpl;
    throw v0
.end method

.method queryAndSyncCallWaitingToImsSdk()V
    .locals 1

    .line 1296
    const-string v0, "[UTCMD]enter queryAndSyncCallWaitingToImsSdk"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1302
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-nez v0, :cond_0

    .line 1303
    const-string v0, "sim card has not been loaded!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1305
    return-void

    .line 1310
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCallWaitingExpire()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 1311
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1312
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isLocalCallWaitingEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1314
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryCallWaiting()I

    .line 1316
    :cond_1
    return-void
.end method

.method public queryCLIP()I
    .locals 4

    .line 962
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 964
    const-string v0, "[UTCMD]enter queryCLIP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 966
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 970
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 971
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 974
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 976
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCLIR()I
    .locals 4

    .line 934
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 936
    const-string v0, "[UTCMD]enter queryCLIR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 938
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 940
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 945
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-direct {p0, v1, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 947
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v2, :cond_1

    .line 948
    const-string v1, "invalid domain, stop queryCLIR"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 949
    const/4 v1, -0x1

    return v1

    .line 952
    :cond_1
    const/16 v1, 0x16

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 955
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCOLP()I
    .locals 4

    .line 1004
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1006
    const-string v0, "[UTCMD]enter queryCOLP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1008
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1012
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1013
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1016
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1018
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCOLR()I
    .locals 4

    .line 983
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 985
    const-string v0, "[UTCMD]enter queryCOLR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 987
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 991
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 995
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 997
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 4
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I

    .line 825
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]queryCallBarringForServiceClass:cbType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 829
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeGet(I)I

    move-result v0

    .line 831
    .local v0, "type":I
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 833
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 834
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 837
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToFacility(I)Ljava/lang/String;

    move-result-object v2

    .line 839
    .local v2, "facility":Ljava/lang/String;
    iput-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    .line 840
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->transBarringFacilityToCbReason(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 842
    iput p2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    .line 845
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 847
    iget v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v3
.end method

.method public queryCallForwardForServiceClass(ILjava/lang/String;I)I
    .locals 4
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I

    .line 857
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter queryCallForward, condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 861
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 862
    const-string v0, "Invalid condition for queryCallForward."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 864
    const/4 v0, -0x1

    return v0

    .line 867
    :cond_0
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 869
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 870
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 873
    :cond_1
    iput p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 874
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtReason(I)I

    move-result v1

    iput v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 876
    iput p3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    .line 879
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 881
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCallWaiting()I
    .locals 7

    .line 888
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 890
    const-string v0, "[UTCMD]enter queryCallWaiting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 897
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 899
    .local v0, "currDate":Ljava/util/Date;
    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 900
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 904
    :cond_0
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-direct {v1, v2, v4, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 906
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    .line 907
    return v5

    .line 918
    :cond_1
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v6, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-direct {p0, v2, v6, v3}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 920
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v2, v3, :cond_2

    .line 921
    const-string v2, "invalid domain, stop queryCallWaiting"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 923
    return v5

    .line 926
    :cond_2
    invoke-virtual {p0, v4, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 927
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2
.end method

.method public receiveOtherSubUtIdle()V
    .locals 2

    .line 6551
    const-string v0, "receiveOtherSubUtIdle"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6553
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6555
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 6557
    :cond_0
    return-void
.end method

.method responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "err"    # Lcom/android/internal/telephony/CommandException$Error;

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseMessage with err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1535
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1536
    return-void
.end method

.method responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseMessage with obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1518
    if-nez p1, :cond_0

    .line 1519
    const-string v0, "responseMessage msg is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1521
    return-void

    .line 1524
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1525
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1526
    return-void
.end method

.method sendUTMessage(I)Z
    .locals 1
    .param p1, "utEvent"    # I

    .line 1233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method sendUTMessage(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "utEvent"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1240
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1241
    const-string v0, "mUtServiceHandler is null, can\'t send message via this handler."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1243
    const/4 v0, 0x0

    return v0

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1248
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method public setHomeDomainName()I
    .locals 4

    .line 4167
    const/4 v0, -0x1

    .line 4168
    .local v0, "ret":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getDomainName()Ljava/lang/String;

    move-result-object v1

    .line 4170
    .local v1, "domainName":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHomeDomainName domainName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4171
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v2, v3, :cond_0

    .line 4172
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setHomeDomainName(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 4176
    :cond_0
    goto :goto_0

    .line 4174
    :catch_0
    move-exception v2

    .line 4175
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setHomeDomainName, exception"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4177
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHomeDomainName , ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4178
    return v0
.end method

.method setImsSdkBsfAddr()I
    .locals 7

    .line 1393
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfSrvAddr()Ljava/lang/String;

    move-result-object v0

    .line 1394
    .local v0, "bsfAddr":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfPort()I

    move-result v1

    .line 1395
    .local v1, "bsfPort":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtBsfUseHttps()Z

    move-result v2

    .line 1397
    .local v2, "isBsfGoHttps":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set ims sdk bsf addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", bsf port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bsf use https="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1399
    const/4 v3, -0x1

    .line 1401
    .local v3, "ret":I
    if-nez v0, :cond_0

    .line 1402
    const-string v4, "bsfAddr is null."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1403
    return v3

    .line 1407
    :cond_0
    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/huawei/sci/SciSSConfHs;->setBsfAddr(Ljava/lang/String;IZ)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1410
    goto :goto_0

    .line 1408
    :catch_0
    move-exception v4

    .line 1409
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setImsSdkBsfAddr, exception e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1412
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set Ims Sdk Bsf Addr , ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1414
    return v3
.end method

.method setImsSdkImpi()I
    .locals 5

    .line 1366
    const/4 v0, -0x1

    .line 1367
    .local v0, "ret":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtIMPI()Ljava/lang/String;

    move-result-object v1

    .line 1369
    .local v1, "impi":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImsSdkImpi impi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1371
    if-nez v1, :cond_0

    .line 1372
    const-string v2, "impi is null."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1373
    return v0

    .line 1377
    :cond_0
    :try_start_0
    sget v2, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v2, v3, :cond_1

    .line 1378
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setAuthUserName(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1382
    :cond_1
    goto :goto_0

    .line 1380
    :catch_0
    move-exception v2

    .line 1381
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImsSdkImpi, exception e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1384
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set Ims Sdk Impi, ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1386
    return v0
.end method

.method setImsSdkImpu()I
    .locals 5

    .line 1346
    const/4 v0, -0x1

    .line 1347
    .local v0, "ret":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/HwImsConfigImpl;->getUtIMPU(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1349
    .local v1, "impu":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImsSdkImpu impu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1352
    :try_start_0
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setLocalUserName(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1355
    goto :goto_0

    .line 1353
    :catch_0
    move-exception v2

    .line 1354
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImsSdkImpu, exception e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1357
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set Ims Sdk impu, ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1359
    return v0
.end method

.method setImsSdkNafAddr()I
    .locals 7

    .line 1439
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafSrvAddr()Ljava/lang/String;

    move-result-object v0

    .line 1440
    .local v0, "nafAddr":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafPort()I

    move-result v1

    .line 1441
    .local v1, "nafPort":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtNafUseHttps()Z

    move-result v2

    .line 1443
    .local v2, "isNafGoHttps":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set ims sdk naf addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", naf port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", naf use https="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1445
    const/4 v3, -0x1

    .line 1447
    .local v3, "ret":I
    if-nez v0, :cond_0

    .line 1448
    const-string v4, "nafAddr is null."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1450
    return v3

    .line 1454
    :cond_0
    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/huawei/sci/SciSSConfHs;->setNafAddr(Ljava/lang/String;IZ)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1457
    goto :goto_0

    .line 1455
    :catch_0
    move-exception v4

    .line 1456
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setImsSdkNafAddr, exception e ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1459
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set Ims Sdk Naf Addr , ret ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1461
    return v3
.end method

.method setImsSdkParamsCfg()V
    .locals 8

    .line 1465
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtParamsCfg()[Ljava/lang/String;

    move-result-object v0

    .line 1467
    .local v0, "mUtParamsCfgArray":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1468
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 1469
    aget-object v3, v0, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1470
    .local v3, "mUtParamsCfg":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    aget-object v4, v3, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    aget-object v5, v3, v4

    .line 1471
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 1477
    :cond_0
    :try_start_0
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    .local v5, "mUtParam":I
    nop

    .line 1480
    nop

    .line 1482
    aget-object v6, v3, v4

    invoke-static {v5, v6}, Lcom/huawei/sci/SciSSConfHs;->setParamsCfg(ILjava/lang/String;)I

    .line 1483
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init utParamsCfg, cfgParam="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .end local v3    # "mUtParamsCfg":[Ljava/lang/String;
    .end local v5    # "mUtParam":I
    goto :goto_2

    .line 1478
    .restart local v3    # "mUtParamsCfg":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1479
    .local v4, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setParamsCfg Exception ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1480
    goto :goto_2

    .line 1472
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    const-string v4, "setParamsCfg config param not right"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1473
    nop

    .line 1468
    .end local v3    # "mUtParamsCfg":[Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1486
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method setImsXcapRootUri()I
    .locals 5

    .line 1423
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtXcapRootUri()Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, "xcapuri":Ljava/lang/String;
    const/4 v1, -0x1

    .line 1426
    .local v1, "ret":I
    :try_start_0
    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->setXcapRootUri(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1429
    goto :goto_0

    .line 1427
    :catch_0
    move-exception v2

    .line 1428
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImsXcapRootUri, exception e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1430
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImsXcapRootUri , ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1431
    return v1
.end method

.method public setIsDataReg(Z)V
    .locals 0
    .param p1, "regState"    # Z

    .line 6585
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsDataReg:Z

    .line 6586
    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/ims/ImsUtListener;

    .line 814
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 816
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iput-object p1, v0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 817
    return-void
.end method

.method public updateCLIP(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .line 1140
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCLIP, enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1144
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1148
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1149
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1152
    :cond_0
    iput-boolean p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1154
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1156
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCLIR(I)I
    .locals 4
    .param p1, "clirMode"    # I

    .line 1105
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCLIR, clirMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1109
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1111
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1112
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1116
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1117
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCLIRModeToUtReason(I)I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 1118
    iput p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCLIR, utEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", utReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1123
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-direct {p0, v2, v3, v1}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 1125
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v2, :cond_2

    .line 1126
    const-string v1, "invalid domain, stop queryCLIR"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1127
    const/4 v1, -0x1

    return v1

    .line 1130
    :cond_2
    const/16 v1, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 1133
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCOLP(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .line 1187
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCOLP, enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1191
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1195
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1196
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1199
    :cond_0
    iput-boolean p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1201
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1203
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCOLR(I)I
    .locals 4
    .param p1, "presentation"    # I

    .line 1163
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCOLR, presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1167
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1171
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1175
    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1176
    iput p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1178
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1180
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCallBarringOption(Ljava/lang/String;IZI[Ljava/lang/String;)I
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "action"    # Z
    .param p4, "serviceClass"    # I
    .param p5, "barrList"    # [Ljava/lang/String;

    .line 1026
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCallBarringOption, cbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", barrList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1028
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1031
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeSet(I)I

    move-result v0

    .line 1033
    .local v0, "type":I
    const/16 v1, 0x15

    if-ne v1, v0, :cond_0

    .line 1034
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeSet(I)I

    move-result v1

    .line 1035
    .local v1, "utType":I
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v2

    .line 1036
    .local v2, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallBarringOption: domainSelect is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1037
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-eq v3, v2, :cond_0

    .line 1038
    invoke-direct {p0, p1, p3, p4}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringAllOption(Ljava/lang/String;ZI)I

    move-result v3

    return v3

    .line 1042
    .end local v1    # "utType":I
    .end local v2    # "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringBase(Ljava/lang/String;IZI)I

    move-result v1

    return v1
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 4
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 1550
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCallForward, action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1551
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1558
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1564
    :cond_0
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtType(I)I

    move-result v0

    .line 1566
    .local v0, "type":I
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1568
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1569
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 1572
    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isCfEnable(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1573
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtReason(I)I

    move-result v2

    iput v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 1574
    iput-object p3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    .line 1575
    iput p5, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utTimer:I

    .line 1576
    iput p2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1577
    iput p1, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    .line 1578
    iput p4, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    .line 1580
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1582
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 1559
    .end local v0    # "type":I
    .end local v1    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_2
    :goto_0
    const-string v0, "Invalid action or condition for updateCallForward."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1561
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .locals 4
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "number"    # Ljava/lang/String;

    .line 1051
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCallForwardUncondTimer, startHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const/4 v1, 0x0

    invoke-direct {p0, p7, v1}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1062
    invoke-direct {p0, p5}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p6}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    if-nez p6, :cond_0

    .line 1064
    const/4 p6, 0x6

    .line 1067
    :cond_0
    invoke-direct {p0, p6}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtType(I)I

    move-result v0

    .line 1069
    .local v0, "type":I
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1071
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1072
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 1075
    :cond_1
    invoke-direct {p0, p5}, Lcom/huawei/ims/HwImsUtImpl;->isCfEnable(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1076
    invoke-direct {p0, p6}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtReason(I)I

    move-result v2

    iput v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 1077
    iput-object p7, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    .line 1078
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->transIntToDate(II)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->startTime:Ljava/util/Date;

    .line 1079
    invoke-direct {p0, p3, p4}, Lcom/huawei/ims/HwImsUtImpl;->transIntToDate(II)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->endTime:Ljava/util/Date;

    .line 1080
    iput p6, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1081
    iput p5, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    .line 1083
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1085
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 1087
    .end local v0    # "type":I
    .end local v1    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_2
    const-string v0, "Invalid condition for updateCallForwardUncondTimer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1088
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallWaiting(ZI)I
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .line 1096
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1098
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->updateCallWaiting(Z)I

    move-result v0

    return v0
.end method
