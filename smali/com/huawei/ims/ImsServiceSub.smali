.class public Lcom/huawei/ims/ImsServiceSub;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DMPROVIDER_TO_IMS:Ljava/lang/String; = "com.android.server.dm.BROADCAST_DMSYNCSERVICE_TO_IMS"

.field private static final ACTION_IMS_TO_DMPROVIDER:Ljava/lang/String; = "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

.field private static final AT_DMCN:I = 0xa

.field private static final AUDIO_QUALITY_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.AUDIO_QUALITY_GET"

.field private static final AUDIO_QUALITY_SET_ACTION:Ljava/lang/String; = "com.huawei.intent.action.AUDIO_QUALITY_SET"

.field private static final AudioQualityType:Ljava/lang/String; = "AUDIO_QUALITY_TYPE"

.field private static final BATTERY_CLOSE_LEVEL:I = 0x2

.field private static final BATTERY_LOWER_LEVEL:I = 0x5

.field private static final BATTERY_STATUS_CLOSE:I = 0x2

.field private static final BATTERY_STATUS_NORMAL:I = 0x0

.field private static final BATTERY_STATUS_REJECT:I = 0x1

.field private static final BINARY:I = 0x2

.field private static final CARD_VOLTE_FLAG:[Ljava/lang/String;

.field private static final CARRIER_CONFIG_CHANGE_STATE:Ljava/lang/String; = "carrierConfigChangeState"

.field private static final CARRIER_CONFIG_STATE_LOAD:I = 0x1

.field private static final CODE_SERVICE_CLASS_NOT_SUPPORTED:I = -0x2

.field private static final CSVT_INDEX:I = 0x3

.field private static final DISABLE_LTE_INFO_REPORT:I = 0x0

.field private static final DMPROVIDER_PACKAGE:Ljava/lang/String; = "com.android.providers.dm"

.field private static final DMRECEIVER_CLASS:Ljava/lang/String; = "com.android.providers.dm.DmReceiver"

.field private static final DMUSER_DEFAULT_VALUE:Ljava/lang/String;

.field private static final DM_IMS_CMD_FAIL:I = -0x1

.field private static final DM_IMS_CMD_OK:I = 0x1

.field private static final DM_IMS_DATA:Ljava/lang/String; = "data"

.field private static final DM_IMS_GET_AT_DMDYN:I = 0x7

.field private static final DM_IMS_GET_AT_DMPCSCF:I = 0x5

.field private static final DM_IMS_GET_AT_DMSMS:I = 0x8

.field private static final DM_IMS_GET_AT_DMTIMER:I = 0x6

.field private static final DM_IMS_GET_AT_DMUSER:I = 0x9

.field private static final DM_IMS_RET:Ljava/lang/String; = "ret"

.field private static final DM_IMS_SET_AT_DMDYN:I = 0x2

.field private static final DM_IMS_SET_AT_DMPCSCF:I = 0x1

.field private static final DM_IMS_SET_AT_DMSMS:I = 0x4

.field private static final DM_IMS_SET_AT_DMTIMER:I = 0x3

.field private static final DM_IMS_TYPE:Ljava/lang/String; = "type"

.field private static final DM_INVALID_CMD_TYPE:I = -0x1

.field private static final DM_SYNC_RETRY_INTERVAL:I = 0x7d0

.field private static final DM_SYNC_RETRY_MAX_TIMES:I = 0x5

.field public static final DM_USER_IMS_VALUE:Ljava/lang/String; = "dm_user_ims_value"

.field private static final ENABLE_LTE_INFO_REPORT:I = 0x1

.field private static final EVENT_CALL_MODIFY:I = 0xd

.field private static final EVENT_CALL_STATE_CHANGE:I = 0x1

.field protected static final EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED:I = 0x3ef

.field private static final EVENT_GET_CURRENT_CALLS:I = 0x7

.field private static final EVENT_GET_SRV_STATUS:I = 0x5

.field private static final EVENT_HANDOVER_STATE_CHANGED:I = 0xc

.field private static final EVENT_ICC_CHANGED:I = 0x10

.field protected static final EVENT_IMS_CS_REDIAL:I = 0x3f1

.field private static final EVENT_IMS_DMCN:I = 0x3f8

.field private static final EVENT_IMS_GET_DMUSER:I = 0x3e8

.field private static final EVENT_IMS_GET_DM_PARAMETER_DONE:I = 0x3f7

.field protected static final EVENT_IMS_GET_IMPU_DONE:I = 0x11

.field protected static final EVENT_IMS_ONHOLD_TONE:I = 0x44c

.field protected static final EVENT_IMS_RADIO_ON:I = 0x44d

.field private static final EVENT_IMS_REG_FAIL_DELAY:I = 0x12

.field private static final EVENT_IMS_SET_DM_PARAMETER_DONE:I = 0x3f6

.field private static final EVENT_IMS_SET_SMS_CONFIG:I = 0x3e9

.field private static final EVENT_IMS_SET_VT_CAPABILITY:I = 0x13

.field private static final EVENT_IMS_STATE_CHANGED:I = 0x2

.field private static final EVENT_IMS_STATE_DONE:I = 0x3

.field protected static final EVENT_MODIFY_RESULT:I = 0x3eb

.field protected static final EVENT_MT_NEW_RING_REPORT:I = 0x3ee

.field protected static final EVENT_MT_STATUS_REPORT:I = 0x3ed

.field private static final EVENT_MWI:I = 0xe

.field private static final EVENT_QUERY_CAMERASTATUS:I = 0x16

.field private static final EVENT_READ_DOMAIN_NAME:I = 0x14

.field private static final EVENT_READ_ISIM_IMPI:I = 0x15

.field private static final EVENT_REFRESH_CONF_INFO:I = 0xb

.field protected static final EVENT_REGISTERED_TO_NETWORK:I = 0x3f0

.field private static final EVENT_SEND_BATTERY_STATUS:I = 0x3fa

.field private static final EVENT_SET_IMS_STATE:I = 0x9

.field private static final EVENT_SET_SRV_STATUS:I = 0x6

.field private static final EVENT_SIM_RECORDS_LOADED:I = 0xf

.field protected static final EVENT_SRVCC_STATE_CHANGED:I = 0x3f2

.field private static final EVENT_SRV_STATUS_UPDATE:I = 0x4

.field private static final EVENT_SUPP_SRV_UPDATE:I = 0x8

.field private static final EVENT_TTY_STATE_CHANGED:I = 0xa

.field private static final EVENT_UNSOL_VOWIF_REG_ERR_REPORT:I = 0x44f

.field protected static final EVENT_UNSOl_IMS_REG_MODE:I = 0x44e

.field private static final EVENT_UNSOl_LTE_PDCP_INFO:I = 0x3f4

.field private static final EVENT_UNSOl_LTE_RRC_INFO:I = 0x3f5

.field private static final EVENT_UNSOl_SPEECH_INFO:I = 0x3f3

.field private static final EVENT_VOWIFI_REG_ERR_REPORT:I = 0x450

.field private static final EVENT_VOWIFI_SOS_PENDING_TIMEOUT:I = 0x3fc

.field public static final FEATURE_DISABLED:I = 0x0

.field public static final FEATURE_ENABLED:I = 0x1

.field public static final FEATURE_UNKNOWN:I = -0x1

.field private static FLAG_IS_VOLTE:I = 0x0

.field private static final IMS_ERRDOMAIN:Ljava/lang/String; = "errDomain"

.field private static final IMS_ERRSTAGE:Ljava/lang/String; = "errStage"

.field private static final IMS_FAILCAUSE:Ljava/lang/String; = "failcause"

.field private static final IMS_FAILSTRING:Ljava/lang/String; = "failstring"

.field private static final IMS_RECEIVE_DMPROVIDER_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.RECEIVE_DMPROVIDER_BROADCAST"

.field private static final IMS_REG_FAIL_DELAY_TIMER_LENGTH:I = 0x11170

.field private static final IMS_SERVICE_STATE_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.GET_IMS_SERVICE_STATE"

.field private static final IMS_SERVICE_STATE_CHANGED_ACTION:Ljava/lang/String; = "huawei.intent.action.IMS_SERVICE_STATE_CHANGED"

.field private static final IMS_SERVICE_VOWIFI_REG_ERROR_REPORT_ACTION:Ljava/lang/String; = "huawei.intent.action.IMS_REG_ERROR_REPORT"

.field private static final IMS_SERVICE_VOWIFI_REG_ERROR_REPORT_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.GET_IMS_REG_ERROR_REPORT"

.field private static final IMS_SERVICE_VOWIFI_STATE_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.GET_IMS_SERVICE_VOWIFI_STATE"

.field private static final IMS_SERVICE_VOWIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "huawei.intent.action.IMS_SERVICE_VOWIFI_STATE_CHANGED"

.field private static final IMS_STATE:Ljava/lang/String; = "state"

.field private static final IMS_STATE_CHANGE_SUBID:Ljava/lang/String; = "subId"

.field private static final IMS_STATE_REGISTERED:Ljava/lang/String; = "REGISTERED"

.field private static final IMS_STATE_UNREGISTERED:Ljava/lang/String; = "UNREGISTERED"

.field private static final INVALID_VALUE_KEY:I = -0x1

.field public static final IS_AMR_WB_SHOW_HD_VOLTE:Z

.field private static final IS_VOWIFI:Ljava/lang/String; = "vowifi_state"

.field private static final IS_VOWIFI_PROP_ON:Z

.field private static final KEY_SUPPORT_HOLD_TONE_BOOL:Ljava/lang/String; = "support_hold_tone_bool"

.field private static final LAST_CALL_TYPE_CS:I = 0x0

.field private static final LAST_CALL_TYPE_UNKNOWN:I = -0x1

.field private static final LAST_CALL_TYPE_VOLTE:I = 0x1

.field private static final LAST_CALL_TYPE_VOWIFI:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceSub"

.field private static final LTE_PDCP_INFO_CURBUFFPKTNUM:I = 0x1

.field private static final LTE_PDCP_INFO_CURBUFFTIME:I = 0x0

.field private static final LTE_PDCP_INFO_MACULTHRPUT:I = 0x2

.field private static final LTE_PDCP_INFO_MAXBUFFTIME:I = 0x3

.field private static final LTE_RRC_INFO_BLER:I = 0x3

.field private static final LTE_RRC_INFO_RSRP:I = 0x0

.field private static final LTE_RRC_INFO_RSRQ:I = 0x1

.field private static final LTE_RRC_INFO_RSSI:I = 0x2

.field private static final MAPCON_BROADCAST_PERMISSION:Ljava/lang/String; = "com.hisi.permission.VOWIFI_SPECIAL"

.field private static final MAPCON_SERVICE_STARTED:Ljava/lang/String; = "com.hisi.vowifi.started"

.field private static final MAX_FEATURES_SUPPORTED:I = 0x3

.field private static final NON_CHARGED_STATUS:I = 0x0

.field private static final NOT_REGISTERED:I = 0x0

.field private static final OPERATOR_CUSTOMER_WB_SHOW_HD:Ljava/lang/String; = "wb_show_hd"

.field private static final QUERY_CAMERASTATUS_TIME:I = 0x64

.field private static final RCS_GLOBAL_RECEIVER_CLASS:Ljava/lang/String; = "com.huawei.rcs.service.RcsGlobalBroadcastReceiver"

.field private static final RCS_SERVICE_PACKAGE:Ljava/lang/String; = "com.huawei.rcsserviceapplication"

.field private static final REGISTERED:I = 0x1

.field private static final REGISTERING:I = 0x2

.field private static final REGISTRATION_UNKNOWN:I = 0x3

.field private static final REG_TECH_TO_NET_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVICE_TYPE_MAX:I = 0x5

.field private static final SIP_IMPU_SOURCE:I = 0x0

.field public static final SMS_DEFAULT_VALUE:I = 0x1

.field private static final SMS_DISABLED_VALUE:I = 0x0

.field private static final SMS_ENABLED_VALUE:I = 0x1

.field public static final SMS_IMS_SET_VALUE:Ljava/lang/String; = "sms_ims_set_value"

.field private static final SPEECH_CODEC_NB:I = 0x1

.field private static final SPEECH_CODEC_WB:I = 0x2

.field private static final SPEECH_EVS_NB:I = 0x3

.field private static final SPEECH_EVS_SWB:I = 0x5

.field private static final SPEECH_EVS_WB:I = 0x4

.field private static final SPEECH_INFO_CODEC_NB:Ljava/lang/String; = "Codec=AMR_NB"

.field private static final SPEECH_INFO_CODEC_WB:Ljava/lang/String; = "Codec=AMR_WB"

.field private static final SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field private static final THRESHOLD_OF_CLOSE:I = 0x64

.field public static final VOWIFI_REG_ERROR_REPORT_SWITCH_DEFAULT:I = 0x0

.field private static final VOWIFI_SOS_PENDING_TIMEOUT:I = 0x7530

.field private static final VT_FLOW_INFO_REPORT:I = 0x9c41

.field private static mFirstReg:Z

.field private static final mSupportAdjustSpeechCodec:Z


# instance fields
.field private DBG:Z

.field private mAccessTechMode:I

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field protected mCi:Lcom/huawei/ims/ImsRIL;

.field protected mContext:Landroid/content/Context;

.field private mCurrentBatteryStatus:I

.field private mCurrentHaveCall:Z

.field private mDmSyncRetryCount:I

.field private mEmergencyUnderWifi:Z

.field protected mHandler:Landroid/os/Handler;

.field public mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

.field private mImsEcbmImpl:Lcom/huawei/ims/ImsEcbmImpl;

.field private mImsRegisterState:I

.field private mImsRegistrationImpl:Landroid/telephony/ims/compat/stub/ImsRegistrationImplBase;

.field private mImsStateBindRat:I

.field private mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsReportLTEInfo:Z

.field private mLastCallType:I

.field private mMainSlotChange:Z

.field private mMapconService:Lcom/hisi/mapcon/IMapconService;

.field private mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;

.field private mNewBatteryStatus:I

.field protected mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceIdTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/ims/ImsServiceClassTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceStatus:[Lcom/huawei/ims/ServiceStatus;

.field private mShouldResetVTCapability:Z

.field private mSpeechInfoCodec:[Ljava/lang/String;

.field protected mSub:I

.field private mTelCapabilities:Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

.field private mTrackerTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/ims/ImsServiceClassTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 324
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/ims/ImsServiceSub;->mFirstReg:Z

    .line 342
    nop

    .line 343
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/android/internal/telephony/HwModemCapability;->isCapabilitySupport(I)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/ImsServiceSub;->mSupportAdjustSpeechCodec:Z

    .line 354
    const-string v1, "card_volte_flag_0"

    const-string v2, "card_volte_flag_1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/huawei/ims/ImsServiceSub;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    .line 355
    sput v0, Lcom/huawei/ims/ImsServiceSub;->FLAG_IS_VOLTE:I

    .line 441
    const-string v1, "ro.config.amr_wb_show_hd_volte"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/ImsServiceSub;->IS_AMR_WB_SHOW_HD_VOLTE:Z

    .line 447
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVowifiPropOn()Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/ImsServiceSub;->IS_VOWIFI_PROP_ON:Z

    .line 452
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/huawei/ims/ImsServiceSub;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    .line 456
    const/4 v1, 0x0

    sput-object v1, Lcom/huawei/ims/ImsServiceSub;->DMUSER_DEFAULT_VALUE:Ljava/lang/String;

    .line 3144
    sget-object v1, Lcom/huawei/ims/ImsServiceSub;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3145
    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3144
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3146
    sget-object v1, Lcom/huawei/ims/ImsServiceSub;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3147
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3146
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3148
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 6
    .param p1, "sub"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->DBG:Z

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 150
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    .line 153
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    .line 159
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 160
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 163
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 174
    iput-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 175
    iput-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    .line 177
    iput-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceStatus:[Lcom/huawei/ims/ServiceStatus;

    .line 229
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mSpeechInfoCodec:[Ljava/lang/String;

    .line 293
    const/4 v3, -0x1

    iput v3, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    .line 327
    iput-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mEmergencyUnderWifi:Z

    .line 329
    iput v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegisterState:I

    .line 333
    iput v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsStateBindRat:I

    .line 338
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    .line 357
    iput-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mShouldResetVTCapability:Z

    .line 358
    iput-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCurrentHaveCall:Z

    .line 360
    iput v3, p0, Lcom/huawei/ims/ImsServiceSub;->mLastCallType:I

    .line 373
    iput-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mMainSlotChange:Z

    .line 423
    iput v3, p0, Lcom/huawei/ims/ImsServiceSub;->mAccessTechMode:I

    .line 429
    iput v0, p0, Lcom/huawei/ims/ImsServiceSub;->mDmSyncRetryCount:I

    .line 431
    iput-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mIsReportLTEInfo:Z

    .line 618
    new-instance v0, Lcom/huawei/ims/ImsServiceSub$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/ImsServiceSub$1;-><init>(Lcom/huawei/ims/ImsServiceSub;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 633
    new-instance v0, Lcom/huawei/ims/ImsServiceSub$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/ImsServiceSub$2;-><init>(Lcom/huawei/ims/ImsServiceSub;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 727
    iput v3, p0, Lcom/huawei/ims/ImsServiceSub;->mCurrentBatteryStatus:I

    .line 728
    iput v3, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    .line 477
    iput p1, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    .line 478
    const-string v0, "ImsServiceSub Constructor"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 479
    iput-object p2, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 480
    new-instance v0, Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/huawei/ims/ImsRIL;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 481
    new-instance v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;-><init>(Lcom/huawei/ims/ImsServiceSub;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 482
    new-instance v0, Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTelCapabilities:Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    .line 485
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVtFlowInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const v4, 0x9c41

    invoke-virtual {v0, v3, v4, v1}, Lcom/huawei/ims/ImsRIL;->registerForVtFlowInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 492
    :cond_0
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->getInstance()Lcom/huawei/ims/ImsConfigImpl;

    move-result-object v0

    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-virtual {v0, p0, v3}, Lcom/huawei/ims/ImsConfigImpl;->getConfigInterface(Lcom/huawei/ims/ImsServiceSub;I)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 496
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->getInstance()Lcom/huawei/ims/ImsUtImpl;

    move-result-object v0

    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-virtual {v0, p0, v3}, Lcom/huawei/ims/ImsUtImpl;->getUtInterface(Lcom/huawei/ims/ImsServiceSub;I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    .line 499
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->registerBootCompleted()V

    .line 500
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4, v1}, Lcom/huawei/ims/ImsRIL;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 502
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v2, v1}, Lcom/huawei/ims/ImsRIL;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 504
    new-instance v0, Lcom/huawei/ims/ImsEcbmImpl;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {v0, v2}, Lcom/huawei/ims/ImsEcbmImpl;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsEcbmImpl:Lcom/huawei/ims/ImsEcbmImpl;

    .line 506
    new-instance v0, Landroid/telephony/ims/compat/stub/ImsRegistrationImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/compat/stub/ImsRegistrationImplBase;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegistrationImpl:Landroid/telephony/ims/compat/stub/ImsRegistrationImplBase;

    .line 508
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 511
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForCallModifyResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 515
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForMtStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 517
    new-instance v0, Lcom/huawei/ims/MtStatusManager;

    invoke-direct {v0, p0}, Lcom/huawei/ims/MtStatusManager;-><init>(Lcom/huawei/ims/ImsServiceSub;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;

    .line 519
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ee

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 523
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f1

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForImsCSRedial(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 527
    sget-boolean v0, Lcom/huawei/ims/ImsServiceSub;->mSupportAdjustSpeechCodec:Z

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f3

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f4

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForUnsolLTE_PDCPInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 533
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f5

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForUnsolLTE_RRCInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 539
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x44c

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 551
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x44e

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForImsRegMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x44f

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForVoWiFiRegErrReport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 558
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->initServiceStatus()V

    .line 561
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 562
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->updatePhoneBaseEvent()V

    .line 565
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 566
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x44d

    invoke-interface {v0, v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 570
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->onUpdateIccAvailability()V

    .line 574
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 576
    .local v0, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v0    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UiccController getInstance Exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 584
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 588
    sget-boolean v2, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z

    if-eqz v2, :cond_4

    .line 589
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 596
    :cond_4
    const-string v2, "android.intent.action.ACTION_SWITCH_DUAL_CARDS_SLOT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 598
    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 600
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 602
    const-string v2, "true"

    const-string v3, "ro.config.hw_support_omadm"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 604
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 605
    .local v2, "DMFilter":Landroid/content/IntentFilter;
    const-string v3, "com.android.server.dm.BROADCAST_DMSYNCSERVICE_TO_IMS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 606
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.huawei.ims.permission.RECEIVE_DMPROVIDER_BROADCAST"

    invoke-virtual {p2, v3, v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 608
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f8

    invoke-virtual {v3, v4, v5, v1}, Lcom/huawei/ims/ImsRIL;->registerForImsDMCN(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 613
    .end local v2    # "DMFilter":Landroid/content/IntentFilter;
    :cond_5
    const-string v1, "ImsServiceSub init done"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/ImsServiceSub;)Lcom/hisi/mapcon/IMapconService;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/huawei/ims/ImsServiceSub;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 145
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->sendBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/huawei/ims/ImsServiceSub;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # Lcom/hisi/mapcon/IMapconService;

    .line 145
    iput-object p1, p0, Lcom/huawei/ims/ImsServiceSub;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/huawei/ims/ImsServiceSub;)Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTelCapabilities:Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/huawei/ims/ImsServiceSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mAccessTechMode:I

    return v0
.end method

.method static synthetic access$1202(Lcom/huawei/ims/ImsServiceSub;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # I

    .line 145
    iput p1, p0, Lcom/huawei/ims/ImsServiceSub;->mAccessTechMode:I

    return p1
.end method

.method static synthetic access$1300(Lcom/huawei/ims/ImsServiceSub;)Landroid/telephony/ims/compat/stub/ImsRegistrationImplBase;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegistrationImpl:Landroid/telephony/ims/compat/stub/ImsRegistrationImplBase;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/huawei/ims/ImsServiceSub;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mEmergencyUnderWifi:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/huawei/ims/ImsServiceSub;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/huawei/ims/ImsServiceSub;->mEmergencyUnderWifi:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/huawei/ims/ImsServiceSub;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->DBG:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/huawei/ims/ImsServiceSub;)[Lcom/huawei/ims/ServiceStatus;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceStatus:[Lcom/huawei/ims/ServiceStatus;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/huawei/ims/ImsServiceSub;Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;

    .line 145
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->createFeatureCapabilityCallBackThread(Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->getCurrentCallFromModem()V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->initServiceStatus()V

    return-void
.end method

.method static synthetic access$2100(Lcom/huawei/ims/ImsServiceSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegisterState:I

    return v0
.end method

.method static synthetic access$2102(Lcom/huawei/ims/ImsServiceSub;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # I

    .line 145
    iput p1, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegisterState:I

    return p1
.end method

.method static synthetic access$2200(Lcom/huawei/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 145
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->handleCalls(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/huawei/ims/ImsServiceSub;Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 145
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->handleModifyCallRequest(Lcom/huawei/ims/ImsCallModification$CallModify;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/huawei/ims/ImsServiceSub;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # [I

    .line 145
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->handleModifyCallResult([I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/huawei/ims/ImsServiceSub;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mMainSlotChange:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/huawei/ims/ImsServiceSub;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/huawei/ims/ImsServiceSub;->mMainSlotChange:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->registerReceiverForBattery()V

    return-void
.end method

.method static synthetic access$2700(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->onUpdateIccAvailability()V

    return-void
.end method

.method static synthetic access$2800(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/huawei/ims/ImsServiceSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->getImsStateBindRat()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->notifyImsState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->queryCameraStatus()V

    return-void
.end method

.method static synthetic access$3100(Lcom/huawei/ims/ImsServiceSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mDmSyncRetryCount:I

    return v0
.end method

.method static synthetic access$3102(Lcom/huawei/ims/ImsServiceSub;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # I

    .line 145
    iput p1, p0, Lcom/huawei/ims/ImsServiceSub;->mDmSyncRetryCount:I

    return p1
.end method

.method static synthetic access$3108(Lcom/huawei/ims/ImsServiceSub;)I
    .locals 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mDmSyncRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/huawei/ims/ImsServiceSub;->mDmSyncRetryCount:I

    return v0
.end method

.method static synthetic access$3202(Lcom/huawei/ims/ImsServiceSub;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # I

    .line 145
    iput p1, p0, Lcom/huawei/ims/ImsServiceSub;->mCurrentBatteryStatus:I

    return p1
.end method

.method static synthetic access$3300(Lcom/huawei/ims/ImsServiceSub;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    return v0
.end method

.method static synthetic access$3400(Lcom/huawei/ims/ImsServiceSub;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # I

    .line 145
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->setSpeechCodec(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/huawei/ims/ImsServiceSub;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mSpeechInfoCodec:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/huawei/ims/ImsServiceSub;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # I

    .line 145
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->setImsRegisterState(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/huawei/ims/ImsServiceSub;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->optimizeImsRegisterState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800()[Ljava/lang/String;
    .locals 1

    .line 145
    sget-object v0, Lcom/huawei/ims/ImsServiceSub;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900()I
    .locals 1

    .line 145
    sget v0, Lcom/huawei/ims/ImsServiceSub;->FLAG_IS_VOLTE:I

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 145
    sget-boolean v0, Lcom/huawei/ims/ImsServiceSub;->mFirstReg:Z

    return v0
.end method

.method static synthetic access$4000()Z
    .locals 1

    .line 145
    sget-boolean v0, Lcom/huawei/ims/ImsServiceSub;->IS_VOWIFI_PROP_ON:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 145
    sput-boolean p0, Lcom/huawei/ims/ImsServiceSub;->mFirstReg:Z

    return p0
.end method

.method static synthetic access$4100(Lcom/huawei/ims/ImsServiceSub;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->isVolteSwitchOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->setVTCapabilityToModem()V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->updatePhoneBaseEvent()V

    return-void
.end method

.method static synthetic access$700(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->moveSharePreferenceToDE()V

    return-void
.end method

.method static synthetic access$800(Lcom/huawei/ims/ImsServiceSub;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsServiceSub;->processDMBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsServiceSub;

    .line 145
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    return-object v0
.end method

.method private convertCapability(II)I
    .locals 3
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 3163
    const/4 v0, -0x1

    .line 3164
    .local v0, "capConverted":I
    const/4 v1, 0x4

    if-nez p2, :cond_1

    .line 3165
    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 3176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertCapability capability not expected. capatility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 3177
    goto :goto_0

    .line 3170
    :pswitch_0
    const/4 v0, 0x1

    .line 3171
    goto :goto_0

    .line 3167
    :pswitch_1
    const/4 v0, 0x0

    .line 3168
    goto :goto_0

    .line 3173
    :cond_0
    const/4 v0, 0x4

    .line 3174
    goto :goto_0

    .line 3179
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 3180
    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_1

    .line 3191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertCapability capability not expected. capatility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 3192
    goto :goto_0

    .line 3185
    :pswitch_2
    const/4 v0, 0x3

    .line 3186
    goto :goto_0

    .line 3182
    :pswitch_3
    const/4 v0, 0x2

    .line 3183
    goto :goto_0

    .line 3188
    :cond_2
    const/4 v0, 0x5

    .line 3189
    goto :goto_0

    .line 3195
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertCapability radioTech not expected. radioTech = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " capability = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 3197
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private createFeatureCapabilityCallBackThread(Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;

    .line 1009
    new-instance v0, Lcom/huawei/ims/ImsServiceSub$3;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsServiceSub$3;-><init>(Lcom/huawei/ims/ImsServiceSub;Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;)V

    .line 1020
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "ImsServiceSubcreateFeatureCapabilityCallBackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1021
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1022
    return-void
.end method

.method private executeRequestLTEInfo()V
    .locals 3

    .line 3099
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->getLpdcpThreshold()I

    move-result v0

    .line 3100
    .local v0, "threshold":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/huawei/ims/ImsServiceSub;->requestLTEInfo(IILandroid/os/Message;)V

    .line 3101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeRequestLTEInfo, threshold is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 3102
    return-void
.end method

.method private getCurrentCallFromModem()V
    .locals 4

    .line 3113
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3114
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 3115
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceClassTracker;->haveCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3116
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->getCurrentCalls(Landroid/os/Message;)V

    .line 3119
    .end local v0    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    :cond_0
    return-void
.end method

.method private getEnhancedVideoFeature()I
    .locals 6

    .line 3045
    const/4 v0, -0x1

    .line 3046
    .local v0, "valueKeyConfig":I
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 3047
    .local v1, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v2

    .line 3048
    .local v2, "subId":I
    if-eqz v1, :cond_0

    .line 3049
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 3050
    .local v3, "b":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_0

    .line 3051
    const-string v4, "carrierconfig_enhanced_video_feature"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3052
    .local v4, "mValueKeyConfig":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 3054
    const/4 v5, 0x2

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    .line 3057
    goto :goto_0

    .line 3055
    :catch_0
    move-exception v5

    .line 3056
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    return v0

    .line 3061
    .end local v3    # "b":Landroid/os/PersistableBundle;
    .end local v4    # "mValueKeyConfig":Ljava/lang/String;
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVTCapabilityToModem valueKeyConfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 3062
    return v0
.end method

.method private getImsStateBindRat()I
    .locals 1

    .line 2543
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsStateBindRat:I

    return v0
.end method

.method private handleCSVTCalls(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .line 1179
    .local p1, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1180
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    .line 1181
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1182
    const-string v1, "Call for non-registered service class CSVT"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1186
    :cond_0
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    .line 1188
    :cond_1
    :goto_0
    return-void
.end method

.method private handleCalls(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1062
    const-string v0, ">handleCalls"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1068
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    :goto_0
    goto :goto_1

    .line 1069
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1072
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 1077
    .restart local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    :goto_1
    nop

    .line 1080
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .local v1, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .local v2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    const/4 v3, 0x0

    .line 1084
    .local v3, "hasActiveVideoCall":Z
    if-eqz v0, :cond_6

    .line 1086
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1087
    .local v4, "callListSize":I
    const/4 v5, 0x0

    move v6, v3

    move v3, v5

    .local v3, "i":I
    .local v6, "hasActiveVideoCall":Z
    :goto_2
    if-ge v3, v4, :cond_5

    .line 1088
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/ims/DriverCallIms;

    .line 1089
    .local v7, "dc":Lcom/huawei/ims/DriverCallIms;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCalls: dc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 1090
    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub;->isActiveVTCall(Lcom/huawei/ims/DriverCallIms;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1091
    const/4 v6, 0x1

    .line 1094
    :cond_1
    if-eqz v7, :cond_3

    iget-object v8, v7, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub;->mSpeechInfoCodec:[Ljava/lang/String;

    aget-object v8, v8, v5

    if-eqz v8, :cond_3

    .line 1095
    iget-object v8, v7, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v8, v8, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 1096
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update dc calldetails extras  use mSpeechInfoCodec[0] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub;->mSpeechInfoCodec:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 1097
    new-instance v8, Lcom/huawei/ims/CallDetails;

    iget-object v9, v7, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    invoke-direct {v8, v9}, Lcom/huawei/ims/CallDetails;-><init>(Lcom/huawei/ims/CallDetails;)V

    .line 1098
    .local v8, "newCdetails":Lcom/huawei/ims/CallDetails;
    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub;->mSpeechInfoCodec:[Ljava/lang/String;

    iput-object v9, v8, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 1099
    iget-object v9, v7, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    invoke-virtual {v9, v8}, Lcom/huawei/ims/CallDetails;->update(Lcom/huawei/ims/CallDetails;)Z

    .line 1100
    .end local v8    # "newCdetails":Lcom/huawei/ims/CallDetails;
    goto :goto_3

    .line 1101
    :cond_2
    iget-object v8, v7, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub;->mSpeechInfoCodec:[Ljava/lang/String;

    iput-object v9, v8, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 1105
    :cond_3
    :goto_3
    if-eqz v7, :cond_4

    iget-object v8, v7, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    if-eqz v8, :cond_4

    iget-object v8, v7, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v8, v8, Lcom/huawei/ims/CallDetails;->call_domain:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 1107
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1109
    :cond_4
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1114
    .end local v3    # "i":I
    .end local v4    # "callListSize":I
    .end local v7    # "dc":Lcom/huawei/ims/DriverCallIms;
    :cond_5
    move v3, v6

    .end local v6    # "hasActiveVideoCall":Z
    .local v3, "hasActiveVideoCall":Z
    :cond_6
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceSub;->openOrCloseLTEInfo(Z)V

    .line 1115
    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/ImsServiceSub;->setLastCallType(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1116
    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/ImsServiceSub;->handleMMTELCalls(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1117
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->handleCSVTCalls(Ljava/util/ArrayList;)V

    .line 1119
    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/ImsServiceSub;->isCurrentHaveCall(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1121
    return-void

    .line 1076
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    .end local v1    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    .end local v2    # "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    .end local v3    # "hasActiveVideoCall":Z
    :cond_7
    const-string v0, "else???"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 1077
    return-void
.end method

.method private handleMMTELCalls(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .line 1156
    .local p1, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    .local p2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1157
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    .line 1165
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1166
    const-string v1, "Call for non-registered service class MMTEL"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1170
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1171
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1173
    :cond_1
    const-string v1, "CS Call, ignore handle"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1176
    :cond_2
    :goto_0
    return-void
.end method

.method private handleModifyCallRequest(Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 2
    .param p1, "cm"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCallModifyRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1256
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 1257
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->handleModifyCallRequest(Lcom/huawei/ims/ImsCallModification$CallModify;)V

    goto :goto_0

    .line 1259
    :cond_0
    const-string v1, "ImsServiceClassTracker not found."

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1262
    :goto_0
    return-void
.end method

.method private handleModifyCallResult([I)V
    .locals 2
    .param p1, "modifyResult"    # [I

    .line 1266
    const-string v0, "handleModifyCallResult"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1270
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 1271
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->handleModifyCallResult([I)V

    goto :goto_0

    .line 1273
    :cond_0
    const-string v1, "ImsServiceClassTracker not found."

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1276
    :goto_0
    return-void
.end method

.method private initServiceStatus()V
    .locals 5

    .line 800
    const/4 v0, 0x5

    new-array v1, v0, [Lcom/huawei/ims/ServiceStatus;

    iput-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceStatus:[Lcom/huawei/ims/ServiceStatus;

    .line 801
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 802
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceStatus:[Lcom/huawei/ims/ServiceStatus;

    new-instance v4, Lcom/huawei/ims/ServiceStatus;

    invoke-direct {v4}, Lcom/huawei/ims/ServiceStatus;-><init>()V

    aput-object v4, v3, v2

    .line 807
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceStatus:[Lcom/huawei/ims/ServiceStatus;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    iput-object v4, v3, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    .line 808
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceStatus:[Lcom/huawei/ims/ServiceStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v1

    .line 801
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 811
    .end local v2    # "i":I
    :cond_0
    sget-boolean v0, Lcom/huawei/ims/ImsServiceSub;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_1

    .line 812
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->bindMapconService()V

    .line 814
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 815
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.hisi.vowifi.started"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.hisi.permission.VOWIFI_SPECIAL"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 823
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method private isActiveVTCall(Lcom/huawei/ims/DriverCallIms;)Z
    .locals 4
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .line 3066
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3069
    :cond_0
    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    if-eq v1, v3, :cond_1

    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v2, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_2

    move v0, v3

    nop

    :cond_2
    return v0

    .line 3067
    :cond_3
    :goto_0
    return v0
.end method

.method private isCdmaCardAndVoLTE()Z
    .locals 7

    .line 2772
    const/4 v0, 0x0

    .line 2773
    .local v0, "isCdmaCard":Z
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2774
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2775
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    .line 2776
    .local v4, "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v4, v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    move v0, v5

    .line 2778
    .end local v4    # "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_1
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isCdmaVoLTEAndISIM()Z

    move-result v4

    .line 2779
    .local v4, "isCdmaVoLTE":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCdmaCard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isCdmaVoLTE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2780
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    move v2, v3

    nop

    :cond_2
    return v2
.end method

.method private isCurrentHaveCall(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .line 1138
    .local p1, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    .local p2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 1142
    :cond_0
    const-string v0, "isCurrentHaveCall there is no new calling now"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 1143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCurrentHaveCall:Z

    .line 1144
    iget-boolean v1, p0, Lcom/huawei/ims/ImsServiceSub;->mShouldResetVTCapability:Z

    if-eqz v1, :cond_2

    .line 1145
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->setVTCapabilityToModem()V

    .line 1146
    iput-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mShouldResetVTCapability:Z

    goto :goto_1

    .line 1139
    :cond_1
    :goto_0
    const-string v0, "isCurrentHaveCall there  new calling now"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 1140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCurrentHaveCall:Z

    .line 1149
    :cond_2
    :goto_1
    return-void
.end method

.method private isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1035
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 1036
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1035
    :goto_0
    return v0
.end method

.method private isVoWifiRegistered()Z
    .locals 2

    .line 2938
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mAccessTechMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTelCapabilities:Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    .line 2939
    invoke-virtual {v0, v1}, Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2938
    :goto_0
    return v1
.end method

.method private isVolteSwitchOn()Z
    .locals 4

    .line 1043
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1044
    .local v0, "defPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1046
    .local v1, "isVolteSwitchOn":Z
    if-eqz v0, :cond_0

    .line 1047
    const/4 v1, 0x1

    .line 1049
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volte Switch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 1051
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 2549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceSub["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 2553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceSub["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    return-void
.end method

.method private moveSharePreferenceToDE()V
    .locals 3

    .line 2976
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2977
    .local v0, "sharedPreferenceName":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/ims/SharePreferenceUtil;->isNOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2978
    const-string v1, "moveSharePreferenceToDE"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2979
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 2980
    .local v1, "deviceContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/huawei/ims/SharePreferenceUtil;->moveSharedPreferencesFrom(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2981
    const-string v2, "Failed to move shared preference"

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2984
    .end local v1    # "deviceContext":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private notifyImsState(Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    .line 765
    const-string v0, "REGISTERED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 766
    iput v2, p0, Lcom/huawei/ims/ImsServiceSub;->mImsStateBindRat:I

    .line 767
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTelCapabilities:Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 768
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTelCapabilities:Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v2}, Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    goto :goto_0

    .line 770
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsStateBindRat:I

    .line 771
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTelCapabilities:Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 772
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTelCapabilities:Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v2}, Landroid/telephony/ims/compat/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 773
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/ImsServiceSub;->mAccessTechMode:I

    .line 776
    :goto_0
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->isVoWifiRegistered()Z

    move-result v0

    .line 781
    .local v0, "isVowifi":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify IMS state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isVowifi is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 782
    iget v1, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v1

    .line 783
    .local v1, "mSubId":I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "huawei.intent.action.IMS_SERVICE_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 784
    .local v2, "imsStateIntent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const-string v3, "vowifi_state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 786
    const-string v3, "subId"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const-string v4, "com.huawei.ims.permission.GET_IMS_SERVICE_STATE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 791
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 792
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceClassTracker;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/ImsServiceClassTracker;

    iget-object v5, v5, Lcom/huawei/ims/ImsServiceClassTracker;->mFeatureCapabilityListener:Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;

    invoke-direct {p0, v5}, Lcom/huawei/ims/ImsServiceSub;->createFeatureCapabilityCallBackThread(Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;)V

    .line 793
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceClassTracker;>;"
    goto :goto_1

    .line 795
    :cond_1
    return-void
.end method

.method private onUpdateIccAvailability()V
    .locals 8

    .line 2579
    const-string v0, "enter onUpdateIccAvailability"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2582
    const/4 v0, 0x0

    move-object v1, v0

    .line 2585
    .local v1, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 2590
    nop

    .line 2593
    if-nez v1, :cond_0

    .line 2594
    const-string v0, "uiccController is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2595
    return-void

    .line 2601
    :cond_0
    iget v2, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v2

    .line 2603
    .local v2, "phoneId":I
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2604
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsRIL;->getCurrentCalls(Landroid/os/Message;)V

    .line 2609
    :cond_1
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2610
    .local v3, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v4

    .line 2611
    .local v4, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    if-eq v3, v4, :cond_2

    .line 2612
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New Card State = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " Old Card State = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2614
    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2615
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v5, v4, :cond_2

    .line 2617
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->handleSimCardAbsent()V

    .line 2622
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    .line 2623
    .local v5, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v6, p0, Lcom/huawei/ims/ImsServiceSub;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2625
    .local v6, "oldUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v6, v5, :cond_7

    .line 2626
    const-string v7, "oldUiccApplication != newUiccApplication"

    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2627
    if-eqz v6, :cond_4

    .line 2628
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2629
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->unregisterForSimRecordEvents()V

    .line 2632
    :cond_3
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2637
    :cond_4
    if-eqz v5, :cond_5

    .line 2638
    const-string v0, "main slot changed, handle clear."

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mMainSlotChange:Z

    .line 2640
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->handleSimCardAbsent()V

    .line 2645
    :cond_5
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2648
    if-eqz v5, :cond_6

    .line 2649
    const-string v0, "New Uicc application found"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2650
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2651
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->registerForSimRecordEvents()V

    .line 2655
    :cond_6
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->updatePhoneBaseEvent()V

    .line 2658
    :cond_7
    return-void

    .line 2586
    .end local v2    # "phoneId":I
    .end local v3    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .end local v4    # "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .end local v5    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v6    # "oldUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catch_0
    move-exception v0

    .line 2587
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UiccController getInstance Exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2589
    return-void
.end method

.method private openOrCloseLTEInfo(Z)V
    .locals 3
    .param p1, "hasActiveVideoCall"    # Z

    .line 3077
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mIsReportLTEInfo:Z

    if-nez v0, :cond_0

    .line 3078
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->queryCameraStatus()V

    goto :goto_0

    .line 3079
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mIsReportLTEInfo:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3080
    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/huawei/ims/ImsServiceSub;->requestLTEInfo(IILandroid/os/Message;)V

    .line 3081
    iput-boolean v2, p0, Lcom/huawei/ims/ImsServiceSub;->mIsReportLTEInfo:Z

    .line 3082
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3083
    const-string v0, "request close report LTE Info"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 3085
    :cond_1
    :goto_0
    return-void
.end method

.method private optimizeImsRegisterState()Z
    .locals 3

    .line 2922
    const/4 v0, 0x1

    .line 2924
    .local v0, "optimize":Z
    iget v1, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegisterState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2925
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->isVoWifiRegistered()Z

    move-result v1

    .line 2926
    .local v1, "voWiFiRegistered":Z
    sget-boolean v2, Lcom/huawei/ims/ImsServiceSub;->IS_VOWIFI_PROP_ON:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 2927
    const/4 v0, 0x0

    .line 2929
    .end local v1    # "voWiFiRegistered":Z
    :cond_0
    goto :goto_0

    .line 2930
    :cond_1
    const/4 v0, 0x0

    .line 2933
    :goto_0
    return v0
.end method

.method private processDMBroadcast(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 2988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processDMBroadcast: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2990
    const/16 v0, 0x3f6

    const/16 v1, 0x3f7

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    .line 3019
    const-string v0, "processDMBroadcast: invalid type! "

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3016
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMUSER(Landroid/os/Message;)V

    .line 3017
    goto :goto_0

    .line 3013
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMSMS(Landroid/os/Message;)V

    .line 3014
    goto :goto_0

    .line 3010
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMDYN(Landroid/os/Message;)V

    .line 3011
    goto :goto_0

    .line 3007
    :pswitch_3
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMTIMER(Landroid/os/Message;)V

    .line 3008
    goto :goto_0

    .line 3004
    :pswitch_4
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMPCSCF(Landroid/os/Message;)V

    .line 3005
    goto :goto_0

    .line 3001
    :pswitch_5
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/huawei/ims/ImsRIL;->setDMSMS(Ljava/lang/String;Landroid/os/Message;)V

    .line 3002
    goto :goto_0

    .line 2998
    :pswitch_6
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/huawei/ims/ImsRIL;->setDMTIMER(Ljava/lang/String;Landroid/os/Message;)V

    .line 2999
    goto :goto_0

    .line 2995
    :pswitch_7
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/huawei/ims/ImsRIL;->setDMDYN(Ljava/lang/String;Landroid/os/Message;)V

    .line 2996
    goto :goto_0

    .line 2992
    :pswitch_8
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/huawei/ims/ImsRIL;->setDMPCSCF(Ljava/lang/String;Landroid/os/Message;)V

    .line 2993
    nop

    .line 3022
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private queryCameraStatus()V
    .locals 5

    .line 3089
    invoke-static {}, Lcom/huawei/ims/vt/CameraController;->getInstance()Lcom/huawei/ims/vt/CameraController;

    move-result-object v0

    .line 3090
    .local v0, "cameraController":Lcom/huawei/ims/vt/CameraController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraController;->isParamReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3091
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->executeRequestLTEInfo()V

    .line 3092
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/ims/ImsServiceSub;->mIsReportLTEInfo:Z

    goto :goto_0

    .line 3094
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3096
    :goto_0
    return-void
.end method

.method private registerBootCompleted()V
    .locals 3

    .line 2967
    const-string v0, "registerBootCompleted"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2968
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2969
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2970
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2971
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2973
    :cond_0
    return-void
.end method

.method private registerForSimRecordEvents()V
    .locals 4

    .line 2712
    const-string v0, "enter registerForSimRecordEvents"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2713
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2715
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 2716
    const-string v1, "registerForSimRecordEvents  is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2717
    return-void

    .line 2720
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2721
    return-void
.end method

.method private registerReceiverForBattery()V
    .locals 3

    .line 731
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isVolteLowbatteryEndcall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 732
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 733
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "registerReceiverForBattery"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 734
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 735
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 737
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private requestLTEInfo(IILandroid/os/Message;)V
    .locals 1
    .param p1, "enableReport"    # I
    .param p2, "threshold"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3107
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_0

    .line 3108
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/ims/ImsRIL;->requestGetLTEInfo(IILandroid/os/Message;)V

    .line 3110
    :cond_0
    return-void
.end method

.method private sendBatteryStatus(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 740
    const-string v0, "level"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 741
    .local v0, "level":I
    const-string v1, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 743
    .local v1, "plugType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "real battery level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlugType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 746
    if-eqz v1, :cond_0

    .line 747
    iput v2, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    goto :goto_0

    .line 748
    :cond_0
    const/4 v3, 0x2

    if-gt v0, v3, :cond_1

    .line 749
    iput v3, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    goto :goto_0

    .line 750
    :cond_1
    const/4 v3, 0x5

    if-gt v0, v3, :cond_2

    .line 751
    const/4 v2, 0x1

    iput v2, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    goto :goto_0

    .line 753
    :cond_2
    iput v2, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    .line 756
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old status is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mCurrentBatteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "new status is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 757
    iget v2, p0, Lcom/huawei/ims/ImsServiceSub;->mCurrentBatteryStatus:I

    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    if-eq v2, v3, :cond_3

    .line 758
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3fa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huawei/ims/ImsRIL;->sendBatteryStatus(ILandroid/os/Message;)V

    .line 760
    :cond_3
    return-void
.end method

.method private setImsRegisterState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 2533
    iput p1, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegisterState:I

    .line 2534
    return-void
.end method

.method private setLastCallType(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .line 1124
    .local p1, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    .local p2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1125
    const-string v0, "impossible to be here, pls check"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1126
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/ImsServiceSub;->mLastCallType:I

    goto :goto_0

    .line 1127
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1128
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsServiceSub;->mLastCallType:I

    goto :goto_0

    .line 1129
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1130
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/ImsServiceSub;->mLastCallType:I

    goto :goto_0

    .line 1132
    :cond_2
    const-string v0, "there is no new calling now"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 1135
    :goto_0
    return-void
.end method

.method private setSpeechCodec(I)V
    .locals 4
    .param p1, "speechCodec"    # I

    .line 3125
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3126
    .local v0, "imsphone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3129
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wb_show_hd"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3130
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.intent.action.SPEECH_CODEC_WB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3131
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3133
    const-string v2, "speechCodecWb"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3135
    const-string v2, "subscription"

    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3137
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3139
    return-void

    .line 3127
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void
.end method

.method private setVTCapabilityToModem()V
    .locals 8

    .line 3027
    iget-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCurrentHaveCall:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3028
    const-string v0, "the Current have a Call ,You should set the video capability when the call hangs up"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 3029
    iput-boolean v1, p0, Lcom/huawei/ims/ImsServiceSub;->mShouldResetVTCapability:Z

    .line 3030
    return-void

    .line 3032
    :cond_0
    const-string v0, "setVTCapabilityToModem"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 3033
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v0, v2}, Lcom/android/ims/HwImsManager;->isVtEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v0, v3}, Lcom/android/ims/HwImsManager;->isVtEnabledByUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    .line 3034
    invoke-static {v0, v3}, Lcom/android/ims/HwImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3035
    .local v0, "isSupportVt":Z
    :goto_0
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/huawei/ims/ImsRIL;->requestSetImsVtCapability(IILandroid/os/Message;)V

    .line 3036
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->getEnhancedVideoFeature()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 3038
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->getEnhancedVideoFeature()I

    move-result v3

    and-int/lit8 v3, v3, 0xc

    .line 3039
    .local v3, "videoCWCapability":I
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    .line 3040
    .local v4, "isSupportCWCapability":Z
    :goto_2
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v4, :cond_4

    move v2, v1

    nop

    :cond_4
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v1, v2, v6}, Lcom/huawei/ims/ImsRIL;->requestSetImsVtCapability(IILandroid/os/Message;)V

    .line 3042
    .end local v3    # "videoCWCapability":I
    .end local v4    # "isSupportCWCapability":Z
    :cond_5
    return-void
.end method

.method private unregisterForSimRecordEvents()V
    .locals 2

    .line 2724
    const-string v0, "enter unregisterForSimRecordEvents"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2725
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2727
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 2728
    return-void

    .line 2731
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2732
    return-void
.end method

.method private updatePhoneBaseEvent()V
    .locals 6

    .line 2867
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2868
    .local v0, "newPhoneBase":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 2870
    .local v1, "oldPhoneBase":Lcom/android/internal/telephony/Phone;
    if-eq v0, v1, :cond_3

    .line 2871
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2873
    if-eqz v1, :cond_1

    .line 2876
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2879
    const-string v2, "Unregister listening message of data reg state from old phone base"

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2880
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    .line 2884
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 2887
    iget-object v2, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSrvccStateChanged(Landroid/os/Handler;)V

    .line 2891
    :cond_1
    if-eqz v0, :cond_3

    .line 2894
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2897
    const-string v2, "register listening message of data reg state from new phone base"

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2898
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3ef

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2903
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f0

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2908
    iget-object v2, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f2

    invoke-interface {v2, v4, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2912
    :cond_3
    return-void
.end method


# virtual methods
.method public addListener(Lcom/huawei/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/ICallListListener;

    .line 1228
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1229
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 1230
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->addListener(Lcom/huawei/ims/ICallListListener;)V

    goto :goto_0

    .line 1232
    :cond_0
    const-string v1, "ImsServiceClassTracker not found."

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1234
    :goto_0
    return-void
.end method

.method protected bindMapconService()V
    .locals 5

    .line 2946
    sget-boolean v0, Lcom/huawei/ims/ImsServiceSub;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_0

    .line 2948
    new-instance v0, Lcom/huawei/ims/ImsServiceSub$4;

    invoke-direct {v0, p0}, Lcom/huawei/ims/ImsServiceSub$4;-><init>(Lcom/huawei/ims/ImsServiceSub;)V

    .line 2960
    .local v0, "mConnection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hisi.mapcon"

    const-string v3, "com.hisi.mapcon.MapconService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2961
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 2963
    .end local v0    # "mConnection":Landroid/content/ServiceConnection;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public changeFeatureValue(Landroid/telephony/ims/compat/feature/CapabilityChangeRequest$CapabilityPair;I)V
    .locals 5
    .param p1, "cap"    # Landroid/telephony/ims/compat/feature/CapabilityChangeRequest$CapabilityPair;
    .param p2, "value"    # I

    .line 3151
    invoke-virtual {p1}, Landroid/telephony/ims/compat/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ims/compat/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/ImsServiceSub;->convertCapability(II)I

    move-result v0

    .line 3152
    .local v0, "capConverted":I
    sget-object v1, Lcom/huawei/ims/ImsServiceSub;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telephony/ims/compat/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3153
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3152
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3154
    .local v1, "radioTechConverted":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const-string v2, "enabled"

    goto :goto_0

    :cond_0
    const-string v2, "disabled"

    .line 3156
    .local v2, "capStr":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeFeatureValue - cap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " radioTech: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 3159
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, p2, v4}, Lcom/huawei/ims/HwImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 3160
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 3
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .line 868
    const/4 v0, 0x0

    .line 869
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 870
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 871
    const-string v2, " Invalid service ID - cannot create profile"

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 875
    :cond_0
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    move-object v0, v2

    .line 878
    :goto_0
    return-object v0
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 4
    .param p1, "serviceType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 889
    const/4 v0, 0x0

    .line 890
    .local v0, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 891
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid service type - cannot create Call Session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {v1, p2}, Lcom/huawei/ims/ImsServiceClassTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 896
    :goto_0
    return-object v0
.end method

.method public createImsServiceClassTracker(ILcom/huawei/ims/ImsServiceClassTracker$InComingListener;Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;)V
    .locals 6
    .param p1, "serviceClass"    # I
    .param p2, "inComingListener"    # Lcom/huawei/ims/ImsServiceClassTracker$InComingListener;
    .param p3, "featureListener"    # Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter createImsServiceClassTracker.  serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 965
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 967
    return-void

    .line 970
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 971
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v1, :cond_1

    .line 972
    new-instance v2, Lcom/huawei/ims/ImsServiceClassTracker;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/huawei/ims/ImsServiceClassTracker;-><init>(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;)V

    move-object v1, v2

    .line 974
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    iput-object p2, v1, Lcom/huawei/ims/ImsServiceClassTracker;->mIncomingCallListener:Lcom/huawei/ims/ImsServiceClassTracker$InComingListener;

    .line 976
    iput-object p3, v1, Lcom/huawei/ims/ImsServiceClassTracker;->mFeatureCapabilityListener:Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;

    .line 978
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/huawei/ims/ImsRIL;->getImsRegistrationState(Landroid/os/Message;)V

    .line 979
    return-void
.end method

.method public findSessionByMediaId(I)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 2
    .param p1, "mediaId"    # I

    .line 1210
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1211
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->findSessionByMediaId(I)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getCallSessionByState(Lcom/huawei/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 2
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

    .line 1200
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1201
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->getCallSessionByState(Lcom/huawei/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 2

    .line 2662
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 2663
    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    .line 2664
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    return-object v1

    .line 2666
    :cond_0
    const-string v1, "can\'t get uiccCard"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2667
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-object v1
.end method

.method public getConfig()Lcom/huawei/ims/HwImsConfigImpl;
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    return-object v0
.end method

.method public getDMUSER()V
    .locals 3

    .line 2705
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_0

    .line 2706
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMUSER(Landroid/os/Message;)V

    .line 2708
    :cond_0
    return-void
.end method

.method getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 4

    .line 2820
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 2825
    .local v0, "slotId":I
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2827
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultPhone phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2829
    return-object v1

    .line 2830
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v1

    .line 2831
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2834
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEcbm()Lcom/huawei/ims/ImsEcbmImpl;
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsEcbmImpl:Lcom/huawei/ims/ImsEcbmImpl;

    return-object v0
.end method

.method getImsPhone()Lcom/android/internal/telephony/Phone;
    .locals 4

    .line 2806
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2808
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 2809
    const/4 v1, 0x0

    return-object v1

    .line 2812
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2814
    .local v1, "imsPhone":Lcom/android/internal/telephony/Phone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsPhone imsPhone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2815
    return-object v1
.end method

.method public getImsRegisterState()I
    .locals 1

    .line 2537
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegisterState:I

    return v0
.end method

.method public getImsRegistrationImpl()Landroid/telephony/ims/compat/stub/ImsRegistrationImplBase;
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegistrationImpl:Landroid/telephony/ims/compat/stub/ImsRegistrationImplBase;

    return-object v0
.end method

.method public getLastCallType()I
    .locals 1

    .line 2917
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mLastCallType:I

    return v0
.end method

.method public getServiceId(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 7
    .param p1, "serviceClass"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 838
    const/4 v0, 0x0

    .line 840
    .local v0, "serviceId":I
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    .line 842
    const/4 v0, -0x2

    goto :goto_0

    .line 844
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 845
    .local v2, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v2, :cond_1

    .line 846
    new-instance v3, Lcom/huawei/ims/ImsServiceClassTracker;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v6, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/huawei/ims/ImsServiceClassTracker;-><init>(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;)V

    move-object v2, v3

    .line 847
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 850
    :cond_1
    iput-object p3, v2, Lcom/huawei/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 853
    .end local v2    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceId returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 855
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/huawei/ims/ImsRIL;->getImsRegistrationState(Landroid/os/Message;)V

    .line 857
    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 2

    .line 2797
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2798
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getSubscription()I
    .locals 1

    .line 1218
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    return v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .line 2673
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2675
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 2676
    const/4 v1, 0x0

    return-object v1

    .line 2679
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    return-object v1
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .line 2559
    const-string v0, "enter UiccCardApplication"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2560
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 2563
    .local v0, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/huawei/ims/HwImsService;

    if-eqz v1, :cond_0

    .line 2565
    iget v1, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v1

    .line 2567
    .local v1, "phoneId":I
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    return-object v2

    .line 2570
    .end local v1    # "phoneId":I
    :cond_0
    const-string v1, "mContext is not a HwImsService!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2574
    const-string v1, "getUiccCardApplication fail"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2575
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUt()Lcom/huawei/ims/HwImsUtImpl;
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    return-object v0
.end method

.method public handleImsGetImpuDone(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 2735
    const-string v0, "enter handleImsGetImpuDone"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2736
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2738
    .local v0, "arImpu":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2739
    const-string v1, "get impu OK, set impu to ims sdk. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2742
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    if-eqz v1, :cond_0

    .line 2743
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->handleImsGetImpuDone(Ljava/lang/String;)V

    .line 2748
    :cond_0
    return-void
.end method

.method public handleImsRegMode(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2785
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v0, :cond_0

    .line 2786
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2788
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 2789
    .local v0, "regMode":I
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    .line 2790
    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->getIccId()Ljava/lang/String;

    move-result-object v4

    .line 2789
    invoke-static {v1, v0, v2, v3, v4}, Lcom/huawei/ims/cust/HwCustVZWIms;->setVZWImsRegMode(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 2793
    .end local v0    # "regMode":I
    :cond_0
    return-void
.end method

.method public handleSimCardAbsent()V
    .locals 1

    .line 2685
    const-string v0, "enter handleSimCardAbsent"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2688
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    if-eqz v0, :cond_0

    .line 2689
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSimCardAbsent()V

    .line 2692
    :cond_0
    return-void
.end method

.method public handleSimRecordsLoaded()V
    .locals 4

    .line 2751
    const-string v0, "enter handleSimRecordsLoaded"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2753
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 2754
    .local v0, "newImsi":Ljava/lang/String;
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->isCdmaCardAndVoLTE()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v1, :cond_0

    .line 2755
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->requestReadHomeDomainName(Landroid/os/Message;)V

    .line 2756
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->requestReadIsimIMPI(Landroid/os/Message;)V

    .line 2759
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    if-eqz v1, :cond_1

    .line 2760
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSimRecordsLoaded(Ljava/lang/String;)V

    .line 2764
    :cond_1
    const-string v1, "leave handleSimRecordsLoaded"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2766
    return-void
.end method

.method public registerForPhoneId(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 905
    return-void
.end method

.method public removeImsServiceClassTracker(I)V
    .locals 3
    .param p1, "serviceClass"    # I

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter removeImsServiceClassTracker.  serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 983
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 985
    return-void

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 989
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v0, :cond_1

    .line 990
    return-void

    .line 992
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    return-void
.end method

.method public removeListener(Lcom/huawei/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/ICallListListener;

    .line 1243
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1244
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->removeListener(Lcom/huawei/ims/ICallListListener;)V

    goto :goto_0

    .line 1247
    :cond_0
    const-string v1, "ImsServiceClassTracker not found."

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1249
    :goto_0
    return-void
.end method

.method public setFeatureCapabilityListener(Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;

    .line 956
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 957
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 958
    iput-object p1, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mFeatureCapabilityListener:Lcom/huawei/ims/ImsServiceClassTracker$FeatureCapatilityListener;

    .line 960
    :cond_0
    return-void
.end method

.method public setImsSmsConfig(I)V
    .locals 3
    .param p1, "imsSmsConfig"    # I

    .line 2698
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    const-string v2, "sms_ims_set_value"

    .line 2699
    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2698
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2700
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_0

    .line 2701
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->setImsSmsConfig(ILandroid/os/Message;)V

    .line 2703
    :cond_0
    return-void
.end method

.method public setIncomingListener(Lcom/huawei/ims/ImsServiceClassTracker$InComingListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/ImsServiceClassTracker$InComingListener;

    .line 949
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 950
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 951
    iput-object p1, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mIncomingCallListener:Lcom/huawei/ims/ImsServiceClassTracker$InComingListener;

    .line 953
    :cond_0
    return-void
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 939
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 940
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid service Id - cannot set reg listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 943
    :cond_0
    iput-object p2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 945
    :goto_0
    return-void
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 901
    return-void
.end method

.method public setVoWiFiRegErrReportEnable(I)V
    .locals 3
    .param p1, "enabled"    # I

    .line 3203
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x450

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->setVoWiFiRegErrReportEnable(ILandroid/os/Message;)V

    .line 3204
    return-void
.end method
