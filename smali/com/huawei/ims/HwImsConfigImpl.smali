.class public Lcom/huawei/ims/HwImsConfigImpl;
.super Lcom/huawei/ims/ImsConfigImpl;
.source "HwImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;,
        Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    }
.end annotation


# static fields
.field public static final CALL_WAITING_FROM_CS:I = 0x1

.field public static final CALL_WAITING_FROM_LOCAL:I = 0x2

.field public static final CALL_WAITING_FROM_UT:I = 0x0

.field public static final CALL_WAITING_FROM_UT_AND_NOT_SYNC_TO_CS_OR_IMS_SDK:I = 0x0

.field public static final CALL_WAITING_MODE_PROP_KEY:Ljava/lang/String; = "persist.ims.cwlocalset"

.field public static final CALL_WAITING_MODE_XML_KEY:Ljava/lang/String; = "callWaitingMode"

.field public static final CALL_WAITING_SOURCE_MASK:I = 0xc

.field public static final CALL_WAITING_SOURCE_OFFSET:I = 0x2

.field public static final CALL_WAITING_SYNC_TO_CS_MASK:I = 0x2

.field public static final CALL_WAITING_SYNC_TO_IMS_SDK_MASK:I = 0x1

.field public static final CARD_MCC_MNC_PREFER_TO_USE_UT_XML_KEY:Ljava/lang/String; = "cardMccMncPreferToUseUT"

.field public static final CARD_TYPE_PREFER_TO_USE_UT_XML_KEY:Ljava/lang/String; = "cardTypePreferToUseUT"

.field public static final CARRIER_BUILD_VERSION_BOOL:Ljava/lang/String; = "carrier_build_version_bool"

.field public static final CARRIER_SUPPORT_VOLTE:Ljava/lang/String; = "carrier_volte_available_bool"

.field public static final CARRIER_SUPPORT_VOWIFI:Ljava/lang/String; = "carrier_wfc_ims_available_bool"

.field public static final CFNRC_CHANGE_WITH_CFNL_XML_KEY:Ljava/lang/String; = "CFNRcChangeWithCFNL"

.field private static final CFNR_USE_IR92V10_OR_GREATER:I = 0x1

.field public static final CHECK_SERVICE_WHEN_INCOMING_CALL_XML_KEY:Ljava/lang/String; = "checkServiceWhenIncomingCall"

.field public static final CONFIG_NOT_INITIALIZED:I = -0x1e240

.field public static final CONTENT_TYPE_MODE_AUTO:I = 0x0

.field public static final CONTENT_TYPE_MODE_FIXED:I = 0x1

.field public static final CONTENT_TYPE_MODE_XML_KEY:Ljava/lang/String; = "ContentTypeMode"

.field public static final DC_FAIL_CAUSE_RELEASE_APN_XML_KEY:Ljava/lang/String; = "dcFailCauseToReleaseApn"

.field public static final DC_FAIL_CAUSE_XML_KEY:Ljava/lang/String; = "dcFailCauseForNonVolteSim"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_UT_GBA_LIFETIME_BE_USED:Z = false

.field private static final DEFAULT_UT_VOWIFI_DELAY_END_TIME:I = 0xea60

.field public static final FEATURE_VOLTE_DYN:Z

.field public static final FILE_PATH:Ljava/lang/String; = "/xml/hw_ims_config.xml"

.field public static final HANG_UP_WHEN_LOST_NET:Ljava/lang/String; = "hangUpWhenLostNet"

.field public static final IMPI_DOMAIN:Ljava/lang/String; = "impiDomain"

.field static final IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

.field static final IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

.field public static final IMS_CONFIG_KEY_GETDMUSER:Ljava/lang/String; = "getDMUSER"

.field public static final IMS_CONFIG_KEY_GETSMSCONFIG:Ljava/lang/String; = "getSmsConfig"

.field public static final IMS_CONFIG_KEY_SETSMSCONFIG:Ljava/lang/String; = "setSmsConfig"

.field private static final IMS_DATA_DELAY_END_IN_MS:I = 0x3e8

.field public static final IMS_DATA_DELAY_END_XML_KEY:Ljava/lang/String; = "utImsDataDelayEndTime"

.field public static final IMS_SS_BE_USED_XML_KEY:Ljava/lang/String; = "imsSsBeUsed"

.field public static final IMS_STATE_FOLLOW_VOICE_DOMAIN_XML_KEY:Ljava/lang/String; = "ImsStateFollowVoiceDomain"

.field private static final IS_ATT_WF:Z

.field private static final IS_VOWIFI_PROP_ON:Z

.field public static final KEEP_VOWIFI_FEATURE_UNDER_EMERGENCYCALL:Ljava/lang/String; = "keep_vowifi_feature_under_emergencycall"

.field static final LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

.field static final LOCAL_OIR_KEY:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "HwImsConfigImpl"

.field private static final MAPCON_BROADCAST_PERMISSION:Ljava/lang/String; = "com.hisi.permission.VOWIFI_SPECIAL"

.field private static final MAPCON_SERVICE_STARTED:Ljava/lang/String; = "com.hisi.vowifi.started"

.field public static final MCCMNC_MAX_LTH:I = 0x6

.field public static final MCC_LTH:I = 0x3

.field public static final MISSED_CALL_DISPLAY_XML_KEY:Ljava/lang/String; = "missedCallDisplay"

.field public static final MISSED_CALL_TIPS_DELAY_TIMER_DEFAULT:I = 0x1f400

.field public static final MISSED_CALL_TIPS_DELAY_TIMER_XML_KEY:Ljava/lang/String; = "missedCallTipsDelayTimer"

.field public static final MISSED_CALL_TIPS_DELAY_XML_KEY:Ljava/lang/String; = "missedCallTipsDelay"

.field public static final MISSED_CALL_TIPS_RING_TIMER_DEFAULT:I = 0x2ee0

.field public static final MISSED_CALL_TIPS_RING_TIMER_XML_KEY:Ljava/lang/String; = "missedCallTipsRingTimer"

.field public static final MISSED_CALL_TIPS_XML_KEY:Ljava/lang/String; = "missedCallTips"

.field private static final NODE_CFNR_USE_IR92V10_OR_GREATER:I = 0x11

.field public static final NULL_STRING_VALUE:Ljava/lang/String; = ""

.field public static final OIR_SOURCE_FROM_LOCAL:I = 0x1

.field public static final OIR_SOURCE_FROM_UT:I = 0x0

.field public static final PREFER_TO_USE_UT_XML_KEY:Ljava/lang/String; = "preferToUseUT"

.field public static final PROP_NAME_MAX:I = 0x1f

.field public static final SEPARATOR_TAG:Ljava/lang/String; = ","

.field public static final SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY:Ljava/lang/String; = "setDeactDefaultNoReplyTimer"

.field public static final SET_DEFAULT_NO_REPLY_TIMER_XML_KEY:Ljava/lang/String; = "setDefaultNoReplyTimer"

.field static final SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

.field static final SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

.field static final SIM_IMSI_KEY:[Ljava/lang/String;

.field public static final SS_NOT_SUPPORT_MMI_CODE_XML_KEY:Ljava/lang/String; = "ssNotSupportMMICode"

.field public static final SS_TYPE_FORBID_FALLBACK_CS_XML_KEY:Ljava/lang/String; = "ssTypeForbidFallbackCS"

.field public static final SS_TYPE_USE_CS_ONLY_PROP_KEY:Ljava/lang/String; = "persist.ut.ssTypeUseCsOnly"

.field public static final SS_TYPE_USE_CS_ONLY_XML_KEY:Ljava/lang/String; = "ssTypeUseCsOnly"

.field public static final STRING_NOT_INITIALIZED:Ljava/lang/String; = "SNIT"

.field public static final TRUE_VALUE:Ljava/lang/String; = "true"

.field public static final USE_403_FOR_LOCAL_CW:Ljava/lang/String; = "use_403_for_local_cw"

.field public static final UT_409_SHOW_PHRASE:Ljava/lang/String; = "ut409ShowPhrase"

.field public static final UT_BEARER_DEFAULT:I = 0x0

.field public static final UT_BEARER_IMS:I = 0x2

.field public static final UT_BEARER_LTE:I = 0x1

.field public static final UT_BEARER_LTE_AND_IMS:I = 0x3

.field public static final UT_BEARER_TYPE_PROP_KEY:Ljava/lang/String; = "persist.ut.bearType"

.field public static final UT_BEARER_TYPE_XML_KEY:Ljava/lang/String; = "utBearType"

.field public static final UT_BSF_AUTH_BE_USED_XML_KEY:Ljava/lang/String; = "utBsfAuthBeUsed"

.field public static final UT_BSF_PORT_DEFAULT:I = 0x1f90

.field public static final UT_BSF_PORT_PROP_KEY:Ljava/lang/String; = "persist.ut.bsfport"

.field public static final UT_BSF_PORT_XML_KEY:Ljava/lang/String; = "utBsfPort"

.field public static final UT_BSF_SRV_ADDR_PROP_KEY:Ljava/lang/String; = "persist.ut.bsfsrvaddr"

.field public static final UT_BSF_SRV_ADDR_XML_KEY:Ljava/lang/String; = "utBsfSrvAddr"

.field public static final UT_BSF_USE_HTTPS:Z

.field public static final UT_BSF_USE_HTTPS_PROP_KEY:Ljava/lang/String; = "persist.ut.bsfusehttps"

.field public static final UT_BSF_USE_HTTPS_XML_KEY:Ljava/lang/String; = "utBsfUsehttps"

.field public static final UT_CAN_USE_WIFI_XML_KEY:Ljava/lang/String; = "utCanUseWifi"

.field public static final UT_CS_BE_USED:Z

.field public static final UT_CS_BE_USED_PROP_KEY:Ljava/lang/String; = "persist.ut.csbeused"

.field public static final UT_CS_BE_USED_XML_KEY:Ljava/lang/String; = "utCSBeUsed"

.field public static final UT_FORBIDDEN_TIME_XML_KEY:Ljava/lang/String; = "utForbiddenTimer"

.field public static final UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF:Ljava/lang/String; = "utForbiddenWhenVolteSwitchOff"

.field public static final UT_FORBIDDEN_WVSO_PROP_KEY:Ljava/lang/String; = "persist.ut.forbiddenWVSO"

.field public static final UT_GBA_ME_TYPE:I = 0x0

.field public static final UT_GBA_TYPE:I

.field public static final UT_GBA_TYPE_PROP_KEY:Ljava/lang/String; = "persist.ut.gbatype"

.field public static final UT_GBA_TYPE_XML_KEY:Ljava/lang/String; = "utGbaType"

.field public static final UT_HRS_LOG:Z

.field public static final UT_HRS_LOG_PROP_KEY:Ljava/lang/String; = "persist.ut.hrslog"

.field public static final UT_HRS_LOG_XML_KEY:Ljava/lang/String; = "utHrsLog"

.field public static final UT_IMPI:Ljava/lang/String;

.field public static final UT_IMPI_PROP_KEY:Ljava/lang/String; = "persist.ut.authusername"

.field public static final UT_IMPI_XML_KEY:Ljava/lang/String; = "utIMPI"

.field public static final UT_IMPU:Ljava/lang/String;

.field public static final UT_IMPU_PROP_KEY:Ljava/lang/String; = "persist.ut.localusername"

.field public static final UT_IMPU_XML_KEY:Ljava/lang/String; = "utIMPU"

.field public static final UT_KSNAF_USE_BASE64:Z

.field public static final UT_KSNAF_USE_BASE64_PROP_KEY:Ljava/lang/String; = "persist.ut.ksnafbase64"

.field public static final UT_KSNAF_USE_BASE64_XML_KEY:Ljava/lang/String; = "utKsnafUseBase64"

.field public static final UT_NAF_PORT_DEFAULT:I = 0x50

.field public static final UT_NAF_PORT_PROP_KEY:Ljava/lang/String; = "persist.ut.nafport"

.field public static final UT_NAF_PORT_XML_KEY:Ljava/lang/String; = "utNafPort"

.field public static final UT_NAF_SRV_ADDR_PROP_KEY:Ljava/lang/String; = "persist.ut.nafsrvaddr"

.field public static final UT_NAF_SRV_ADDR_XML_KEY:Ljava/lang/String; = "utNafSrvAddr"

.field public static final UT_NAF_USE_HTTPS:Z

.field public static final UT_NAF_USE_HTTPS_PROP_KEY:Ljava/lang/String; = "persist.ut.usehttps"

.field public static final UT_NAF_USE_HTTPS_XML_KEY:Ljava/lang/String; = "utNafUseHttps"

.field public static final UT_OIR_DEFAULT_MODE_XML_KEY:Ljava/lang/String; = "utOIRDefaultMode"

.field public static final UT_OIR_SOURCE_MODE_XML_KEY:Ljava/lang/String; = "utOIRSourceMode"

.field public static final UT_PARAMS_CFG_LENGTH:I = 0x2

.field public static final UT_PARAMS_CONFIG_XML_KEY:Ljava/lang/String; = "utParamsCfg"

.field private static final UT_PARAMS_KEY_GBA_LIFETIME_BE_USED:I = 0x13

.field private static final UT_PARAMS_VALUE_GBA_LIFETIME_BE_USED:I = 0x1

.field public static final UT_PREFER_OPTION_KEY:Ljava/lang/String; = "utPreferOption"

.field public static final UT_PREFER_TO_USE_UT_PROP_KEY:Ljava/lang/String; = "persist.ut.preferToUseUT"

.field public static final UT_PREFER_USE_DEFAULT_MODE:I = 0x0

.field public static final UT_PREFER_USE_VOLTE_MODE:I = 0x1

.field public static final UT_PREFER_VOWIFI_WHEN_VOWIFI_REG_KEY:Ljava/lang/String; = "ut_prefer_vowifi_when_vowifi_registered"

.field public static final UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY:Ljava/lang/String; = "utQueryDnsIgnoreNetId"

.field public static final UT_RETRY_INTERVAL_XML_KEY:Ljava/lang/String; = "utRetryInterval"

.field public static final UT_USE_APN_XML_KEY:Ljava/lang/String; = "utUseApn"

.field public static final UT_USE_DEFAULT_DATA_APN:I = 0x0

.field public static final UT_USE_IMS_APN:I = 0x2

.field public static final UT_USE_MULTI_CF:Ljava/lang/String; = "utUseMultiCF"

.field public static final UT_USE_NODE_SELECTOR:Z

.field public static final UT_USE_NODE_SELECTOR_PROP_KEY:Ljava/lang/String; = "persist.ut.usenodeselector"

.field public static final UT_USE_NODE_SELECTOR_XML_KEY:Ljava/lang/String; = "utUseNodeSelector"

.field public static final UT_USE_TMPI:Z

.field public static final UT_USE_TMPI_PROP_KEY:Ljava/lang/String; = "persist.ut.usetmpi"

.field public static final UT_USE_TMPI_XML_KEY:Ljava/lang/String; = "utUseTmpi"

.field public static final UT_USE_UT_COMPLEX_APN:I = 0x3

.field public static final UT_USE_UT_RESERVED_APN:I = 0x1

.field public static final UT_USE_XCAP_NAMESPACE:Z

.field public static final UT_USE_XCAP_NAMESPACE_PROP_KEY:Ljava/lang/String; = "persist.ut.usexcapnamespace"

.field public static final UT_USE_XCAP_NAMESPACE_XML_KEY:Ljava/lang/String; = "utUseXcapNamespace"

.field public static final UT_VOWIFI_DELAY_END_TIME_XML_KEY:Ljava/lang/String; = "utVoWifiDelayEndTime"

.field public static final UT_XCAP_ROOT_URI_PROP_KEY:Ljava/lang/String; = "persist.ut.xcapRootUri"

.field public static final UT_XCAP_ROOT_XML_KEY:Ljava/lang/String; = "utXcapRootUri"

.field public static final UT_X_3GPP_INTEND_ID:Ljava/lang/String;

.field public static final UT_X_3GPP_INTEND_ID_PROP_KEY:Ljava/lang/String; = "persist.ut.x3gppintendid"

.field public static final UT_X_3GPP_INTEND_ID_XML_KEY:Ljava/lang/String; = "utX3gppIntendId"

.field public static final VOLTE_LOWBATTERY_ENDCALL_XML_KEY:Ljava/lang/String; = "volte_lowbattery_endcall"

.field public static final VOWIFI_CONFIG_KEY_SETIMSREGERRORREPORT:Ljava/lang/String; = "setImsRegErrorReport"

.field public static final VOWIFI_UT_SWITCH_XML_KEY:Ljava/lang/String; = "vowifi_ut_switch"

.field public static final isATT:Z


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mBsfAddrFromSim:Ljava/lang/String;

.field private mBuildVersionCarrier:Z

.field private mCFNRcChangeWithCFNL:Z

.field private mCallWaitingMode:I

.field private mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

.field private mCardMccMncPreferToUseUt:[Ljava/lang/String;

.field private mCardTypePreferToUseUT:[I

.field private mCarrierSupportVoWifi:Z

.field private mCarrierSupportVolte:Z

.field private mCheckServiceWhenIncomingCall:Z

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mConfigIntValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigStringValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentTypeMode:I

.field private mContext:Landroid/content/Context;

.field private mCurrentIMSI:Ljava/lang/String;

.field private mDcFailCause:[Ljava/lang/String;

.field private mDcFailCauseToReleaseApn:[Ljava/lang/String;

.field private mDcFailCode:[I

.field private mDcFailCodeToReleaseApn:[I

.field private mDefBuildVersionCarrier:Z

.field private mDefCFNRcChangeWithCFNL:Z

.field private mDefCallWaitingMode:I

.field private mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

.field private mDefCardTypePreferToUseUT:[I

.field private mDefCheckServiceWhenIncomingCall:Z

.field private mDefContentTypeMode:I

.field private mDefDcFailCode:[I

.field private mDefDefaultNeedNoReplyTimer:I

.field private mDefDefaultNoReplyTimer:I

.field private mDefEmergencyUnderWifi:Z

.field private mDefHangUpWhenLostNet:Z

.field private mDefImpiDomain:Ljava/lang/String;

.field private mDefImsSsBeUsed:Z

.field private mDefImsStateFollowVoiceDomain:Z

.field private mDefMissedCallDisplay:Z

.field private mDefMissedCallTips:Z

.field private mDefMissedCallTipsDelay:Z

.field private mDefMissedCallTipsDelayTimer:I

.field private mDefMissedCallTipsRingTimer:I

.field private mDefNotSupportMMICode:[Ljava/lang/String;

.field private mDefPreferToUseUt:Z

.field private mDefSSForbidFallbackCS:[I

.field private mDefSSTypeUseCsOnly:[I

.field private mDefUse403ForLocalCW:Z

.field private mDefUseMultCondition:Z

.field private mDefUt409ShowPhrase:Z

.field private mDefUtBearerType:I

.field private mDefUtBsfAuthBeUsed:Z

.field private mDefUtBsfPort:I

.field private mDefUtBsfSrvAddr:Ljava/lang/String;

.field private mDefUtBsfUseHttps:Z

.field private mDefUtCSBeUsed:Z

.field private mDefUtCanUseWifi:Z

.field private mDefUtForbiddenWhenVolteSwitchOff:Z

.field private mDefUtGbaType:I

.field private mDefUtHrsLog:Z

.field private mDefUtIMPI:Ljava/lang/String;

.field private mDefUtIMPU:Ljava/lang/String;

.field private mDefUtImsDataDelayEndTime:I

.field private mDefUtKsnafUseBase64:Z

.field private mDefUtNafPort:I

.field private mDefUtNafSrvAddr:Ljava/lang/String;

.field private mDefUtNafUseHttps:Z

.field private mDefUtOIRDefaultMode:I

.field private mDefUtOIRSourceMode:I

.field private mDefUtParamsCfg:[Ljava/lang/String;

.field private mDefUtPreferOption:I

.field private mDefUtPreferVowifiWhenVowifiReg:Z

.field private mDefUtQueryDnsIgnoreNetId:Z

.field private mDefUtRetryInterval:[I

.field private mDefUtUseApn:I

.field private mDefUtUseNodeSelector:Z

.field private mDefUtUseTmpi:Z

.field private mDefUtUseXcapNamespace:Z

.field private mDefUtVoWifiDelayEndTime:I

.field private mDefUtX3gppIntendId:Ljava/lang/String;

.field private mDefUtXcapRootUri:Ljava/lang/String;

.field private mDefVolteLowbatteryEndcall:Z

.field private mDefaultNeedNoReplyTimer:I

.field private mDefaultNoReplyTimer:I

.field private mDefaultUtForbiddenTimer:I

.field private mDefaultVowifiUtSwitch:Z

.field private mDomainNameFromSim:Ljava/lang/String;

.field private mHangUpWhenLostNet:Z

.field private mImpiDomain:Ljava/lang/String;

.field private mImpiFromSim:Ljava/lang/String;

.field private mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

.field private mImsSsBeUsed:Z

.field private mImsStateFollowVoiceDomain:Z

.field private mIsCallWaitingSyncToCs:Z

.field private mIsCallWaitingSyncToImsSdk:Z

.field private mIsEmergencyUnderWifi:Z

.field private mIsProtocolIR92V10orGreater:Z

.field private mIsUseMultCondition:Z

.field private mMapconService:Lcom/hisi/mapcon/IMapconService;

.field private mMissedCallDisplay:Z

.field private mMissedCallTips:Z

.field private mMissedCallTipsDelay:Z

.field private mMissedCallTipsDelayTimer:I

.field private mMissedCallTipsRingTimer:I

.field private mNotSupportMMICode:[Ljava/lang/String;

.field private mPreferToUseUt:Z

.field private mSSForbidFallbackCS:[I

.field private mSSTypeUseCsOnly:[I

.field private mSpValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpliceMncMcc:Ljava/lang/String;

.field private mSubId:I

.field private mUse403ForLocalCW:Z

.field private mUt409ShowPhrase:Z

.field private mUtBearerType:I

.field private mUtBsfAuthBeUsed:Z

.field private mUtBsfPort:I

.field private mUtBsfSrvAddr:Ljava/lang/String;

.field private mUtBsfUseHttps:Z

.field private mUtCSBeUsed:Z

.field private mUtCanUseWifi:Z

.field private mUtForbiddenTimer:I

.field private mUtForbiddenWhenVolteSwitchOff:Z

.field private mUtGbaLifetimeBeUsed:Z

.field private mUtGbaType:I

.field private mUtHrsLog:Z

.field private mUtIMPI:Ljava/lang/String;

.field private mUtIMPU:Ljava/lang/String;

.field private mUtImsDataDelayEndTime:I

.field private mUtKsnafUseBase64:Z

.field private mUtNafPort:I

.field private mUtNafSrvAddr:Ljava/lang/String;

.field private mUtNafUseHttps:Z

.field private mUtOIRDefaultMode:I

.field private mUtOIRSourceMode:I

.field private mUtParamsCfg:[Ljava/lang/String;

.field private mUtPreferOption:I

.field private mUtPreferVowifiWhenVowifiReg:Z

.field private mUtQueryDnsIgnoreNetId:Z

.field private mUtRetryInterval:[I

.field private mUtUseApn:I

.field private mUtUseNodeSelector:Z

.field private mUtUseTmpi:Z

.field private mUtUseXcapNamespace:Z

.field private mUtVoWifiDelayEndTime:I

.field private mUtX3gppIntendId:Ljava/lang/String;

.field private mUtXcapRootUri:Ljava/lang/String;

.field private mVolteLowbatteryEndcall:Z

.field private mVowifiUtSwitch:Z

.field private mXcapRootURIFromSim:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 87
    const-string v0, "sim_imsi_key"

    const-string v1, "sim_imsi_key2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    .line 88
    const-string v0, "impu_from_network_key"

    const-string v1, "impu_from_network_key2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    .line 89
    const-string v0, "impu_from_sim_imsi_key"

    const-string v1, "impu_from_sim_imsi_key2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    .line 92
    const-string v0, "local_call_waiting_key"

    const-string v1, "local_call_waiting_key2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    .line 95
    const-string v0, "local_OIR_key"

    const-string v1, "local_OIR_key2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    .line 108
    const-string v0, "profile_key"

    const-string v1, "profile_key2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    .line 109
    const-string v0, "profile_param"

    const-string v1, "profile_param2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    .line 139
    const-string v0, "07"

    const-string v1, "ro.config.hw_opta"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "840"

    const-string v3, "ro.config.hw_optb"

    .line 140
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->isATT:Z

    .line 394
    const-string v0, "persist.ut.csbeused"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_CS_BE_USED:Z

    .line 395
    const-string v0, "persist.ut.hrslog"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_HRS_LOG:Z

    .line 396
    const-string v0, "persist.ut.usehttps"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_NAF_USE_HTTPS:Z

    .line 397
    const-string v0, "persist.ut.bsfusehttps"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_BSF_USE_HTTPS:Z

    .line 398
    const-string v0, "persist.ut.usenodeselector"

    .line 399
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_NODE_SELECTOR:Z

    .line 400
    const-string v0, "persist.ut.usexcapnamespace"

    .line 401
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_XCAP_NAMESPACE:Z

    .line 402
    const-string v0, "persist.ut.ksnafbase64"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_KSNAF_USE_BASE64:Z

    .line 403
    const-string v0, "persist.ut.gbatype"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_GBA_TYPE:I

    .line 404
    const-string v0, "persist.ut.usetmpi"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_TMPI:Z

    .line 405
    const-string v0, "persist.ut.x3gppintendid"

    const-string v1, ""

    .line 406
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_X_3GPP_INTEND_ID:Ljava/lang/String;

    .line 407
    const-string v0, "persist.ut.localusername"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPU:Ljava/lang/String;

    .line 408
    const-string v0, "persist.ut.authusername"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPI:Ljava/lang/String;

    .line 410
    const-string v0, "ro.config.hw_att_wificall"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_ATT_WF:Z

    .line 589
    const-string v0, "ro.config.hw_volte_dyn"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z

    .line 604
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVowifiPropOn()Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsServiceSub;I)V
    .locals 5
    .param p1, "imsServiceSub"    # Lcom/huawei/ims/ImsServiceSub;
    .param p2, "subId"    # I

    .line 644
    invoke-direct {p0}, Lcom/huawei/ims/ImsConfigImpl;-><init>()V

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsSsBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsSsBeUsed:Z

    .line 442
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenWhenVolteSwitchOff:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtForbiddenWhenVolteSwitchOff:Z

    .line 443
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseApn:I

    .line 445
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCanUseWifi:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCanUseWifi:Z

    .line 447
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardTypePreferToUseUT:[I

    .line 448
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

    .line 449
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSTypeUseCsOnly:[I

    .line 450
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefNotSupportMMICode:[Ljava/lang/String;

    .line 451
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCSBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCSBeUsed:Z

    .line 452
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsProtocolIR92V10orGreater:Z

    .line 453
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSForbidFallbackCS:[I

    .line 454
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCFNRcChangeWithCFNL:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCFNRcChangeWithCFNL:Z

    .line 455
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNoReplyTimer:I

    .line 457
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNeedNoReplyTimer:I

    .line 459
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefContentTypeMode:I

    .line 462
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsStateFollowVoiceDomain:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsStateFollowVoiceDomain:Z

    .line 464
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCallWaitingMode:I

    .line 466
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtHrsLog:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtHrsLog:Z

    .line 467
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafSrvAddr:Ljava/lang/String;

    .line 468
    const/16 v3, 0x50

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafPort:I

    .line 469
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafUseHttps:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafUseHttps:Z

    .line 470
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfSrvAddr:Ljava/lang/String;

    .line 471
    const/16 v3, 0x1f90

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfPort:I

    .line 472
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfUseHttps:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfUseHttps:Z

    .line 473
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseNodeSelector:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseNodeSelector:Z

    .line 474
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseXcapNamespace:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseXcapNamespace:Z

    .line 475
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtKsnafUseBase64:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtKsnafUseBase64:Z

    .line 478
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferOption:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtPreferOption:I

    .line 480
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtGbaType:I

    .line 481
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseTmpi:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseTmpi:Z

    .line 482
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtX3gppIntendId:Ljava/lang/String;

    .line 483
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPU:Ljava/lang/String;

    .line 484
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPI:Ljava/lang/String;

    .line 485
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtRetryInterval:[I

    .line 486
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTips:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTips:Z

    .line 487
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelay:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelay:Z

    .line 488
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallDisplay:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallDisplay:Z

    .line 489
    const/16 v3, 0x2ee0

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsRingTimer:I

    .line 491
    const v3, 0x1f400

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelayTimer:I

    .line 493
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCheckServiceWhenIncomingCall:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCheckServiceWhenIncomingCall:Z

    .line 495
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHangUpWhenLostNet:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefHangUpWhenLostNet:Z

    .line 498
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtParamsCfg:[Ljava/lang/String;

    .line 501
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtXcapRootUri:Ljava/lang/String;

    .line 504
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfAuthBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfAuthBeUsed:Z

    .line 507
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRSourceMode:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRSourceMode:I

    .line 510
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRDefaultMode:I

    .line 511
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRDefaultMode:I

    .line 515
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUt409ShowPhrase:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUt409ShowPhrase:Z

    .line 519
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I

    .line 523
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBearerType:I

    .line 527
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDcFailCode:[I

    .line 528
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    .line 532
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    .line 533
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    .line 537
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaLifetimeBeUsed:Z

    .line 538
    const v0, 0xea60

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtVoWifiDelayEndTime:I

    .line 543
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferVowifiWhenVowifiReg:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtPreferVowifiWhenVowifiReg:Z

    .line 546
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtQueryDnsIgnoreNetId:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtQueryDnsIgnoreNetId:Z

    .line 550
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVowifiUtSwitch:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultVowifiUtSwitch:Z

    .line 553
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mPreferToUseUt:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefPreferToUseUt:Z

    .line 554
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBuildVersionCarrier:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefBuildVersionCarrier:Z

    .line 555
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUse403ForLocalCW:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUse403ForLocalCW:Z

    .line 556
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVolte:Z

    .line 557
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUseMultCondition:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUseMultCondition:Z

    .line 559
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultUtForbiddenTimer:I

    .line 562
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsEmergencyUnderWifi:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefEmergencyUnderWifi:Z

    .line 565
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVoWifi:Z

    .line 570
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;

    .line 571
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 572
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;

    .line 573
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    .line 574
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    .line 575
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDomainNameFromSim:Ljava/lang/String;

    .line 577
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImpiDomain:Ljava/lang/String;

    .line 580
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigIntValue:Ljava/util/HashMap;

    .line 581
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigStringValue:Ljava/util/HashMap;

    .line 584
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    .line 585
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    .line 586
    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 598
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVolteLowbatteryEndcall:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefVolteLowbatteryEndcall:Z

    .line 608
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    .line 611
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    .line 625
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 632
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsConfigImpl$1;-><init>(Lcom/huawei/ims/HwImsConfigImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 645
    iput p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    .line 646
    const-string v0, "HwImsConfigImpl construtor"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 648
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->isValidServiceSubIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    const-string v0, "subId is invalid"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 650
    return-void

    .line 652
    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    if-nez v0, :cond_1

    goto :goto_0

    .line 656
    :cond_1
    iget-object v0, p1, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 657
    const-string v0, "context is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 658
    return-void

    .line 661
    :cond_2
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    .line 663
    iget-object v0, p1, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    .line 665
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->init(Landroid/content/Context;)V

    .line 666
    iget-object v0, p1, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 670
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_3

    .line 671
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->bindMapconService()V

    .line 672
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 673
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.hisi.vowifi.started"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.hisi.permission.VOWIFI_SPECIAL"

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 679
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    return-void

    .line 653
    :cond_4
    :goto_0
    const-string v0, "imsServiceSub or imsRIL is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/HwImsConfigImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsConfigImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/HwImsConfigImpl;)Lcom/hisi/mapcon/IMapconService;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsConfigImpl;

    .line 77
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/huawei/ims/HwImsConfigImpl;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsConfigImpl;
    .param p1, "x1"    # Lcom/hisi/mapcon/IMapconService;

    .line 77
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/huawei/ims/HwImsConfigImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsConfigImpl;

    .line 77
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->bindMapconService()V

    return-void
.end method

.method private bindMapconService()V
    .locals 5

    .line 2651
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_0

    .line 2652
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsConfigImpl$2;-><init>(Lcom/huawei/ims/HwImsConfigImpl;)V

    .line 2665
    .local v0, "mConnection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hisi.mapcon"

    const-string v3, "com.hisi.mapcon.MapconService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2666
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 2668
    .end local v0    # "mConnection":Landroid/content/ServiceConnection;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "spValueEncrypt"    # Ljava/lang/String;
    .param p2, "sKey"    # Ljava/lang/String;
    .param p3, "sParam"    # Ljava/lang/String;

    .line 1984
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1992
    :cond_0
    const/16 v0, 0x100

    invoke-static {p2, v0}, Lcom/huawei/ims/EncryptUtils;->decodeAESKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1995
    if-nez p2, :cond_1

    .line 1996
    return-object v1

    .line 2000
    :cond_1
    invoke-static {p2, p3}, Lcom/huawei/ims/EncryptUtils;->decodeAESParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2003
    if-nez p3, :cond_2

    .line 2004
    return-object v1

    .line 2008
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/huawei/ims/AESEncrypter;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1985
    :cond_3
    :goto_0
    const-string v0, "value or key is not exist"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1987
    return-object v1
.end method

.method private encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "spValue"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 1930
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1931
    const-string v1, "spValue is null, do not encrypt"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1933
    return-object v0

    .line 1936
    :cond_0
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1938
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1941
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1942
    .local v3, "sKey":Ljava/lang/String;
    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v4, v4, v5

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1945
    .local v4, "sParam":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x100

    if-nez v5, :cond_3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 1961
    :cond_1
    invoke-static {v3, v6}, Lcom/huawei/ims/EncryptUtils;->decodeAESKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1964
    if-nez v3, :cond_2

    .line 1965
    return-object v0

    .line 1969
    :cond_2
    invoke-static {v3, v4}, Lcom/huawei/ims/EncryptUtils;->decodeAESParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1972
    if-nez v4, :cond_4

    .line 1973
    return-object v0

    .line 1946
    :cond_3
    :goto_0
    const-string v0, "create AES key"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1949
    invoke-static {v6}, Lcom/huawei/ims/EncryptUtils;->generateRandomString(I)Ljava/lang/String;

    move-result-object v3

    .line 1950
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/huawei/ims/EncryptUtils;->generateRandomString(I)Ljava/lang/String;

    move-result-object v4

    .line 1954
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v0, v0, v5

    invoke-static {v3, v6}, Lcom/huawei/ims/EncryptUtils;->encodeAESKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1955
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v0, v0, v5

    invoke-static {v3, v4}, Lcom/huawei/ims/EncryptUtils;->encodeAESParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1957
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1978
    :cond_4
    invoke-static {p1, v3, v4}, Lcom/huawei/ims/AESEncrypter;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDcFailCause([I)[Ljava/lang/String;
    .locals 9
    .param p1, "codes"    # [I

    .line 1098
    const/4 v0, 0x0

    .line 1099
    .local v0, "failCauses":[Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    .line 1100
    array-length v1, p1

    .line 1101
    .local v1, "size":I
    new-array v0, v1, [Ljava/lang/String;

    .line 1102
    const/4 v2, 0x0

    .line 1103
    .local v2, "cause":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1104
    .local v3, "i":I
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, p1, v5

    .line 1105
    .local v6, "code":I
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1106
    add-int/lit8 v7, v3, 0x1

    .local v7, "i":I
    aput-object v2, v0, v3

    .line 1107
    .end local v3    # "i":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initDcFailCause code:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cause : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1104
    .end local v6    # "code":I
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_0

    .line 1110
    .end local v1    # "size":I
    .end local v2    # "cause":Ljava/lang/String;
    .end local v7    # "i":I
    :cond_0
    return-object v0
.end method

.method private getParamFromUtParamsCfg(I)I
    .locals 7
    .param p1, "key"    # I

    .line 1694
    const/4 v0, 0x0

    .line 1695
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtParamsCfg()[Ljava/lang/String;

    move-result-object v1

    .line 1696
    .local v1, "utParamsCfgArray":[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1697
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 1698
    aget-object v4, v1, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1699
    .local v4, "utParamsCfg":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    aget-object v5, v4, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    aget-object v6, v4, v5

    .line 1700
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1707
    :cond_0
    :try_start_0
    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1708
    .local v6, "utParam0":I
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    .local v5, "utParam1":I
    nop

    .line 1711
    nop

    .line 1713
    if-ne p1, v6, :cond_2

    .line 1714
    move v0, v5

    .line 1715
    goto :goto_3

    .line 1709
    .end local v5    # "utParam1":I
    .end local v6    # "utParam0":I
    :catch_0
    move-exception v5

    .line 1710
    .local v5, "ex":Ljava/lang/NumberFormatException;
    const-string v6, "getParamFromUtParamsCfg : NumberFormatException "

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1711
    goto :goto_2

    .line 1701
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    const-string v5, "getParamFromUtParamsCfg : config param not right"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1702
    nop

    .line 1697
    .end local v4    # "utParamsCfg":[Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1719
    .end local v3    # "i":I
    :cond_3
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamFromUtParamsCfg: key ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1720
    return v0
.end method

.method private getRootUriFromSim()Ljava/lang/String;
    .locals 3

    .line 2516
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2517
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;

    return-object v0

    .line 2520
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2521
    const-string v0, "xcap.ims."

    .line 2523
    .local v0, "sRootURI":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pub.3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2524
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;

    .line 2526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRootURI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2528
    return-object v0

    .line 2532
    .end local v0    # "sRootURI":Ljava/lang/String;
    :cond_1
    const-string v0, "getRootURI error: Get wrong MCC MNC "

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2534
    const/4 v0, 0x0

    return-object v0
.end method

.method private final declared-synchronized handleBoolTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2061
    if-nez p2, :cond_0

    .line 2062
    monitor-exit p0

    return-void

    .line 2066
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleBoolTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleBoolTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2072
    :goto_0
    goto :goto_1

    .line 2060
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2070
    .restart local p1    # "value":Ljava/lang/String;
    .restart local p2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2071
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 2068
    :catch_1
    move-exception v0

    .line 2069
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuntimeException, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 2073
    :goto_1
    monitor-exit p0

    return-void

    .line 2060
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleBoolTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2075
    :try_start_0
    const-string v0, "utCSBeUsed"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCSBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCSBeUsed:Z

    goto/16 :goto_0

    .line 2078
    :cond_0
    const-string v0, "CFNRcChangeWithCFNL"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2079
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCFNRcChangeWithCFNL:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCFNRcChangeWithCFNL:Z

    goto/16 :goto_0

    .line 2081
    :cond_1
    const-string v0, "ImsStateFollowVoiceDomain"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2082
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsStateFollowVoiceDomain:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsStateFollowVoiceDomain:Z

    goto/16 :goto_0

    .line 2084
    :cond_2
    const-string v0, "utHrsLog"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2085
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtHrsLog:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtHrsLog:Z

    goto/16 :goto_0

    .line 2087
    :cond_3
    const-string v0, "utNafUseHttps"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2088
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafUseHttps:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafUseHttps:Z

    goto :goto_0

    .line 2090
    :cond_4
    const-string v0, "utBsfUsehttps"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2091
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfUseHttps:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfUseHttps:Z

    goto :goto_0

    .line 2093
    :cond_5
    const-string v0, "utUseNodeSelector"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2094
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseNodeSelector:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseNodeSelector:Z

    goto :goto_0

    .line 2096
    :cond_6
    const-string v0, "utUseXcapNamespace"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2097
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseXcapNamespace:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseXcapNamespace:Z

    goto :goto_0

    .line 2099
    :cond_7
    const-string v0, "utKsnafUseBase64"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2100
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtKsnafUseBase64:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtKsnafUseBase64:Z

    goto :goto_0

    .line 2102
    :cond_8
    const-string v0, "utUseTmpi"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2103
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseTmpi:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseTmpi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2105
    :cond_9
    :goto_0
    monitor-exit p0

    return-void

    .line 2074
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleBoolTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2107
    :try_start_0
    const-string v0, "missedCallTips"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2108
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTips:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTips:Z

    goto/16 :goto_0

    .line 2110
    :cond_0
    const-string v0, "missedCallDisplay"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2111
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallDisplay:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallDisplay:Z

    goto/16 :goto_0

    .line 2113
    :cond_1
    const-string v0, "missedCallTipsDelay"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2114
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelay:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelay:Z

    goto/16 :goto_0

    .line 2116
    :cond_2
    const-string v0, "checkServiceWhenIncomingCall"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2117
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCheckServiceWhenIncomingCall:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCheckServiceWhenIncomingCall:Z

    goto/16 :goto_0

    .line 2119
    :cond_3
    const-string v0, "utForbiddenWhenVolteSwitchOff"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2120
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtForbiddenWhenVolteSwitchOff:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenWhenVolteSwitchOff:Z

    goto/16 :goto_0

    .line 2122
    :cond_4
    const-string v0, "imsSsBeUsed"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2123
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsSsBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsSsBeUsed:Z

    goto :goto_0

    .line 2125
    :cond_5
    const-string v0, "hangUpWhenLostNet"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2126
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefHangUpWhenLostNet:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHangUpWhenLostNet:Z

    goto :goto_0

    .line 2129
    :cond_6
    const-string v0, "utCanUseWifi"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2130
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCanUseWifi:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCanUseWifi:Z

    goto :goto_0

    .line 2134
    :cond_7
    const-string v0, "utBsfAuthBeUsed"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2135
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfAuthBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfAuthBeUsed:Z

    goto :goto_0

    .line 2138
    :cond_8
    const-string v0, "utQueryDnsIgnoreNetId"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2139
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtQueryDnsIgnoreNetId:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtQueryDnsIgnoreNetId:Z

    goto :goto_0

    .line 2143
    :cond_9
    const-string v0, "volte_lowbattery_endcall"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2144
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefVolteLowbatteryEndcall:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVolteLowbatteryEndcall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2147
    :cond_a
    :goto_0
    monitor-exit p0

    return-void

    .line 2106
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleIntTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2153
    if-nez p2, :cond_0

    .line 2154
    monitor-exit p0

    return-void

    .line 2158
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleIntTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleIntTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2164
    :goto_0
    goto :goto_1

    .line 2152
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2162
    .restart local p1    # "value":Ljava/lang/String;
    .restart local p2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2163
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 2160
    :catch_1
    move-exception v0

    .line 2161
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuntimeException, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 2165
    :goto_1
    monitor-exit p0

    return-void

    .line 2152
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleIntTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2167
    :try_start_0
    const-string v0, "setDefaultNoReplyTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2168
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNoReplyTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I

    goto :goto_0

    .line 2170
    :cond_0
    const-string v0, "ContentTypeMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2171
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefContentTypeMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I

    goto :goto_0

    .line 2173
    :cond_1
    const-string v0, "callWaitingMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2174
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCallWaitingMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I

    goto :goto_0

    .line 2176
    :cond_2
    const-string v0, "utNafPort"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2177
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafPort:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I

    goto :goto_0

    .line 2179
    :cond_3
    const-string v0, "utBsfPort"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2180
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfPort:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I

    goto :goto_0

    .line 2182
    :cond_4
    const-string v0, "utGbaType"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2183
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtGbaType:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I

    goto :goto_0

    .line 2186
    :cond_5
    const-string v0, "utBearType"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2187
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBearerType:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2190
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 2166
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleIntTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2192
    :try_start_0
    const-string v0, "missedCallTipsRingTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2193
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsRingTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I

    goto/16 :goto_0

    .line 2195
    :cond_0
    const-string v0, "missedCallTipsDelayTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2196
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelayTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I

    goto/16 :goto_0

    .line 2198
    :cond_1
    const-string v0, "utUseApn"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2199
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseApn:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I

    goto/16 :goto_0

    .line 2202
    :cond_2
    const-string v0, "utOIRSourceMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2203
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRSourceMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRSourceMode:I

    goto :goto_0

    .line 2207
    :cond_3
    const-string v0, "utOIRDefaultMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2208
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRDefaultMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRDefaultMode:I

    goto :goto_0

    .line 2212
    :cond_4
    const-string v0, "utImsDataDelayEndTime"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2213
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I

    goto :goto_0

    .line 2217
    :cond_5
    const-string v0, "setDeactDefaultNoReplyTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2218
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNeedNoReplyTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I

    goto :goto_0

    .line 2222
    :cond_6
    const-string v0, "utVoWifiDelayEndTime"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2223
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtVoWifiDelayEndTime:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I

    goto :goto_0

    .line 2227
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown config, value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2229
    :goto_0
    monitor-exit p0

    return-void

    .line 2191
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleStringTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2235
    if-nez p2, :cond_0

    .line 2236
    monitor-exit p0

    return-void

    .line 2240
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleStringTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 2241
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleStringTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2247
    :goto_0
    goto :goto_1

    .line 2234
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2245
    .restart local p1    # "value":Ljava/lang/String;
    .restart local p2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2246
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 2243
    :catch_1
    move-exception v0

    .line 2244
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuntimeException, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 2248
    :goto_1
    monitor-exit p0

    return-void

    .line 2234
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleStringTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2251
    :try_start_0
    const-string v0, "cardTypePreferToUseUT"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2252
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardTypePreferToUseUT:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    goto :goto_0

    .line 2254
    :cond_0
    const-string v0, "cardMccMncPreferToUseUT"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2255
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    goto :goto_0

    .line 2257
    :cond_1
    const-string v0, "ssTypeForbidFallbackCS"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2258
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSForbidFallbackCS:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    goto :goto_0

    .line 2260
    :cond_2
    const-string v0, "ssNotSupportMMICode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2261
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefNotSupportMMICode:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    goto :goto_0

    .line 2263
    :cond_3
    const-string v0, "ssTypeUseCsOnly"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2264
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSTypeUseCsOnly:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    goto :goto_0

    .line 2266
    :cond_4
    const-string v0, "utNafSrvAddr"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2267
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafSrvAddr:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    goto :goto_0

    .line 2269
    :cond_5
    const-string v0, "utBsfSrvAddr"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2270
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfSrvAddr:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2272
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 2250
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleStringTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2274
    :try_start_0
    const-string v0, "utX3gppIntendId"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2275
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtX3gppIntendId:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;

    goto/16 :goto_0

    .line 2277
    :cond_0
    const-string v0, "utIMPU"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2278
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPU:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    goto :goto_0

    .line 2280
    :cond_1
    const-string v0, "utIMPI"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2281
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPI:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    goto :goto_0

    .line 2283
    :cond_2
    const-string v0, "utRetryInterval"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2284
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtRetryInterval:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    goto :goto_0

    .line 2287
    :cond_3
    const-string v0, "utParamsCfg"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2288
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtParamsCfg:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;

    goto :goto_0

    .line 2292
    :cond_4
    const-string v0, "utXcapRootUri"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2293
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtXcapRootUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;

    goto :goto_0

    .line 2297
    :cond_5
    const-string v0, "dcFailCauseForNonVolteSim"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2298
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDcFailCode:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    goto :goto_0

    .line 2302
    :cond_6
    const-string v0, "dcFailCauseToReleaseApn"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2303
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    .line 2304
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->getDcFailCause([I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2307
    :cond_7
    :goto_0
    monitor-exit p0

    return-void

    .line 2273
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private static hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 2566
    invoke-static {p0, p1}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 1860
    const-string v0, "init enter"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1862
    const/4 v0, 0x0

    .line 1863
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 1864
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 1865
    .local v2, "result":Z
    const/4 v3, 0x0

    move-object v4, v3

    .line 1868
    .local v4, "file":Ljava/io/File;
    :try_start_0
    const-string v5, "/xml/hw_ims_config.xml"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/huawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    move-object v4, v5

    .line 1870
    if-eqz v4, :cond_0

    .line 1873
    const-string v5, "get file successfully"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1876
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v5

    .line 1877
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v1, v5

    .line 1878
    const-string v5, "UTF-8"

    invoke-interface {v1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1879
    invoke-direct {p0, p1, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loadImsConfig(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1880
    const/4 v2, 0x1

    .line 1885
    nop

    .line 1886
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1887
    const/4 v0, 0x0

    .line 1890
    if-eqz v1, :cond_2

    const-class v5, Landroid/content/res/XmlResourceParser;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1891
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1894
    :catch_0
    move-exception v5

    .line 1895
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 1871
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    new-instance v5, Ljava/io/FileNotFoundException;

    const-string v6, "File \'/xml/hw_ims_config.xml\' does not exist"

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1884
    :catchall_0
    move-exception v5

    goto/16 :goto_a

    .line 1881
    :catch_1
    move-exception v5

    .line 1882
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1885
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 1886
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1887
    const/4 v0, 0x0

    goto :goto_0

    .line 1894
    :catch_2
    move-exception v5

    goto :goto_2

    .line 1890
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const-class v5, Landroid/content/res/XmlResourceParser;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1891
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1892
    :goto_1
    const/4 v1, 0x0

    goto :goto_4

    .line 1894
    :goto_2
    nop

    .line 1895
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v7, "Exception e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1897
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 1896
    :cond_2
    :goto_4
    nop

    .line 1899
    :goto_5
    if-nez v2, :cond_5

    .line 1900
    const-string v5, "ImsConfig load from R.xml.hw_ims_config"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1902
    nop

    .line 1906
    .local v3, "xmlParser":Landroid/content/res/XmlResourceParser;
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f020000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v3, v5

    .line 1907
    if-eqz v3, :cond_3

    .line 1908
    invoke-direct {p0, p1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loadImsConfig(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1914
    :cond_3
    if-eqz v3, :cond_5

    .line 1915
    :goto_6
    const/4 v3, 0x0

    goto :goto_8

    .line 1914
    :catchall_1
    move-exception v5

    goto :goto_7

    .line 1911
    :catch_3
    move-exception v5

    .line 1912
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load R.xml.hw_ims_config caught e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1914
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_5

    goto :goto_6

    :goto_7
    if-eqz v3, :cond_4

    .line 1915
    const/4 v3, 0x0

    :cond_4
    throw v5

    .line 1921
    .end local v3    # "xmlParser":Landroid/content/res/XmlResourceParser;
    :cond_5
    :goto_8
    :try_start_7
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->resolveCallWaitingMode()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1924
    goto :goto_9

    .line 1922
    :catch_4
    move-exception v3

    .line 1923
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t resolve call waiting mode, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1926
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_9
    const-string v3, "init finish"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1927
    return-void

    .line 1884
    :goto_a
    nop

    .line 1885
    if-eqz v0, :cond_6

    .line 1886
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1887
    const/4 v0, 0x0

    goto :goto_b

    .line 1894
    :catch_5
    move-exception v3

    goto :goto_c

    .line 1890
    :cond_6
    :goto_b
    if-eqz v1, :cond_7

    const-class v6, Landroid/content/res/XmlResourceParser;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1891
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 1892
    const/4 v1, 0x0

    goto :goto_d

    .line 1894
    :goto_c
    nop

    .line 1895
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .end local v3    # "e":Ljava/lang/Exception;
    nop

    .line 1896
    :cond_7
    :goto_d
    throw v5
.end method

.method private isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "propType"    # Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    .line 2538
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2540
    .local v0, "keyLength":I
    const/16 v1, 0x1f

    if-ge v1, v0, :cond_0

    .line 2541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the prop name length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2543
    const/4 v1, 0x0

    return v1

    .line 2546
    :cond_0
    const/4 v1, 0x0

    .line 2548
    .local v1, "hasConfigInProp":Z
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$3;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CONFIG_TYPE:[I

    invoke-virtual {p2}, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2558
    const-string v2, "can\'t recognise this prop type"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2552
    :pswitch_0
    const-string v2, ""

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2553
    .local v2, "propValue":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2554
    const/4 v1, 0x1

    .line 2562
    .end local v2    # "propValue":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isContainInIMSConfig([II)Z
    .locals 4
    .param p1, "imsConfig"    # [I
    .param p2, "serviceValue"    # I

    .line 2363
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2369
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "number":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 2370
    aget v3, p1, v2

    if-ne p2, v3, :cond_1

    .line 2371
    const-string v1, "Current SS type or card type is contained by ims config."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2373
    return v0

    .line 2369
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2377
    .end local v2    # "number":I
    :cond_2
    return v1

    .line 2364
    :cond_3
    :goto_1
    const-string v1, "ims config is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2366
    return v0
.end method

.method private isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "imsConfig"    # [Ljava/lang/String;
    .param p2, "serviceValue"    # Ljava/lang/String;

    .line 2381
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2382
    const-string v1, "ims config is null. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2384
    return v0

    .line 2387
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "number":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 2388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2390
    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 2391
    aget-object v3, p1, v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2392
    const-string v1, "serviceValue is contained by ims config."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2394
    return v0

    .line 2387
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2399
    .end local v2    # "number":I
    :cond_2
    return v1
.end method

.method private final isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cfgTag"    # Ljava/lang/String;
    .param p2, "xmlTag"    # Ljava/lang/String;

    .line 2012
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2014
    .local v0, "cfgLen":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2015
    return v2

    .line 2018
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2019
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    .line 2020
    return v2

    .line 2018
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2024
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private loadImsConfig(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 2312
    :try_start_0
    const-string v0, "ims_config"

    invoke-direct {p0, p2, v0}, Lcom/huawei/ims/HwImsConfigImpl;->startPositionOfIMSConfigXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2315
    :goto_0
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2316
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2318
    .local v0, "tag":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2319
    nop

    .line 2348
    .end local v0    # "tag":Ljava/lang/String;
    instance-of v0, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_0

    .line 2349
    move-object v0, p2

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2352
    :cond_0
    instance-of v0, p2, Lorg/kxml2/io/KXmlParser;

    if-eqz v0, :cond_8

    .line 2354
    :try_start_1
    move-object v0, p2

    check-cast v0, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v0}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2355
    :catch_0
    move-exception v0

    .line 2356
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v2, "Exception e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2357
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    goto/16 :goto_4

    .line 2322
    .local v0, "tag":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 2323
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 2324
    .local v1, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2326
    .local v3, "text":Ljava/lang/String;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 2327
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 2330
    :cond_2
    const-string v4, "name"

    invoke-direct {p0, v4, v2}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2331
    const-string v4, "bool"

    invoke-direct {p0, v4, v0}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2333
    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->handleBoolTypeConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2334
    :cond_3
    const-string v4, "int"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2336
    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->handleIntTypeConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2337
    :cond_4
    const-string v4, "string"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2339
    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->handleStringTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2342
    .end local v0    # "tag":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_0

    .line 2348
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 2345
    :catch_1
    move-exception v0

    .line 2346
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2348
    .end local v0    # "e":Ljava/lang/Exception;
    instance-of v0, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_6

    .line 2349
    move-object v0, p2

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2352
    :cond_6
    instance-of v0, p2, Lorg/kxml2/io/KXmlParser;

    if-eqz v0, :cond_8

    .line 2354
    :try_start_4
    move-object v0, p2

    check-cast v0, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v0}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 2355
    :catch_2
    move-exception v0

    .line 2356
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    .line 2343
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 2344
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuntimeException e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2348
    .end local v0    # "e":Ljava/lang/RuntimeException;
    instance-of v0, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_7

    .line 2349
    move-object v0, p2

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2352
    :cond_7
    instance-of v0, p2, Lorg/kxml2/io/KXmlParser;

    if-eqz v0, :cond_8

    .line 2354
    :try_start_6
    move-object v0, p2

    check-cast v0, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v0}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    .line 2355
    :catch_4
    move-exception v0

    .line 2356
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    .line 2360
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_4
    return-void

    .line 2348
    :goto_5
    instance-of v1, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_9

    .line 2349
    move-object v1, p2

    check-cast v1, Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2352
    :cond_9
    instance-of v1, p2, Lorg/kxml2/io/KXmlParser;

    if-eqz v1, :cond_a

    .line 2354
    :try_start_7
    move-object v1, p2

    check-cast v1, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v1}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 2357
    goto :goto_6

    .line 2355
    :catch_5
    move-exception v1

    .line 2356
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2357
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_6
    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsConfigImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsConfigImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

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

    .line 2576
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsConfigImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARN] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    return-void
.end method

.method private final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2049
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    .end local v1    # "type":I
    goto :goto_0

    .line 2053
    .restart local v1    # "type":I
    :cond_0
    return-void
.end method

.method private readBoolCarrierConfig(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 1795
    if-nez p1, :cond_0

    .line 1796
    return-void

    .line 1799
    :cond_0
    const-string v0, "utCSBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "utCSBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCSBeUsed:Z

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCSBeUsed:Z

    .line 1800
    const-string v0, "CFNRcChangeWithCFNL"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "CFNRcChangeWithCFNL"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCFNRcChangeWithCFNL:Z

    :goto_1
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCFNRcChangeWithCFNL:Z

    .line 1801
    const-string v0, "ImsStateFollowVoiceDomain"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "ImsStateFollowVoiceDomain"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsStateFollowVoiceDomain:Z

    :goto_2
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsStateFollowVoiceDomain:Z

    .line 1802
    const-string v0, "utHrsLog"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "utHrsLog"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtHrsLog:Z

    :goto_3
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtHrsLog:Z

    .line 1803
    const-string v0, "utNafUseHttps"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "utNafUseHttps"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    :cond_5
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafUseHttps:Z

    :goto_4
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafUseHttps:Z

    .line 1804
    const-string v0, "utBsfUsehttps"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "utBsfUsehttps"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5

    :cond_6
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfUseHttps:Z

    :goto_5
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfUseHttps:Z

    .line 1805
    const-string v0, "utUseNodeSelector"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "utUseNodeSelector"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :cond_7
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseNodeSelector:Z

    :goto_6
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseNodeSelector:Z

    .line 1806
    const-string v0, "utUseXcapNamespace"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "utUseXcapNamespace"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7

    :cond_8
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseXcapNamespace:Z

    :goto_7
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseXcapNamespace:Z

    .line 1807
    const-string v0, "utKsnafUseBase64"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "utKsnafUseBase64"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_8

    :cond_9
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtKsnafUseBase64:Z

    :goto_8
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtKsnafUseBase64:Z

    .line 1808
    const-string v0, "utUseTmpi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "utUseTmpi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9

    :cond_a
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseTmpi:Z

    :goto_9
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseTmpi:Z

    .line 1809
    const-string v0, "missedCallTips"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "missedCallTips"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    :cond_b
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTips:Z

    :goto_a
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTips:Z

    .line 1810
    const-string v0, "missedCallDisplay"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "missedCallDisplay"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_b

    :cond_c
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallDisplay:Z

    :goto_b
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallDisplay:Z

    .line 1811
    const-string v0, "missedCallTipsDelay"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v0, "missedCallTipsDelay"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_c

    :cond_d
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelay:Z

    :goto_c
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelay:Z

    .line 1812
    const-string v0, "checkServiceWhenIncomingCall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "checkServiceWhenIncomingCall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_d

    :cond_e
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCheckServiceWhenIncomingCall:Z

    :goto_d
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCheckServiceWhenIncomingCall:Z

    .line 1813
    const-string v0, "utForbiddenWhenVolteSwitchOff"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v0, "utForbiddenWhenVolteSwitchOff"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_e

    :cond_f
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtForbiddenWhenVolteSwitchOff:Z

    :goto_e
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenWhenVolteSwitchOff:Z

    .line 1814
    const-string v0, "imsSsBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v0, "imsSsBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f

    :cond_10
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsSsBeUsed:Z

    :goto_f
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsSsBeUsed:Z

    .line 1816
    const-string v0, "preferToUseUT"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v0, "preferToUseUT"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10

    :cond_11
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefPreferToUseUt:Z

    :goto_10
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mPreferToUseUt:Z

    .line 1818
    const-string v0, "utCanUseWifi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v0, "utCanUseWifi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_11

    :cond_12
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCanUseWifi:Z

    :goto_11
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCanUseWifi:Z

    .line 1820
    const-string v0, "hangUpWhenLostNet"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v0, "hangUpWhenLostNet"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_12

    :cond_13
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefHangUpWhenLostNet:Z

    :goto_12
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHangUpWhenLostNet:Z

    .line 1822
    const-string v0, "utBsfAuthBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v0, "utBsfAuthBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_13

    :cond_14
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfAuthBeUsed:Z

    :goto_13
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfAuthBeUsed:Z

    .line 1825
    const-string v0, "vowifi_ut_switch"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v0, "vowifi_ut_switch"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14

    :cond_15
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultVowifiUtSwitch:Z

    :goto_14
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVowifiUtSwitch:Z

    .line 1827
    const-string v0, "carrier_build_version_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v0, "carrier_build_version_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_15

    :cond_16
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefBuildVersionCarrier:Z

    :goto_15
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBuildVersionCarrier:Z

    .line 1828
    const-string v0, "use_403_for_local_cw"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v0, "use_403_for_local_cw"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_16

    :cond_17
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUse403ForLocalCW:Z

    :goto_16
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUse403ForLocalCW:Z

    .line 1830
    const-string v0, "ut409ShowPhrase"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v0, "ut409ShowPhrase"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_17

    :cond_18
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUt409ShowPhrase:Z

    :goto_17
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUt409ShowPhrase:Z

    .line 1832
    const-string v0, "carrier_volte_available_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    const-string v0, "carrier_volte_available_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_18

    :cond_19
    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVolte:Z

    .line 1833
    const-string v0, "utUseMultiCF"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v0, "utUseMultiCF"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_19

    :cond_1a
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUseMultCondition:Z

    :goto_19
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUseMultCondition:Z

    .line 1835
    const-string v0, "utQueryDnsIgnoreNetId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v0, "utQueryDnsIgnoreNetId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1a

    :cond_1b
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtQueryDnsIgnoreNetId:Z

    :goto_1a
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtQueryDnsIgnoreNetId:Z

    .line 1838
    const-string v0, "carrier_wfc_ims_available_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v0, "carrier_wfc_ims_available_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    nop

    :cond_1c
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVoWifi:Z

    .line 1841
    const-string v0, "volte_lowbattery_endcall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v0, "volte_lowbattery_endcall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1b

    :cond_1d
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefVolteLowbatteryEndcall:Z

    :goto_1b
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVolteLowbatteryEndcall:Z

    .line 1844
    const-string v0, "keep_vowifi_feature_under_emergencycall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1845
    const-string v0, "keep_vowifi_feature_under_emergencycall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1c

    :cond_1e
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefEmergencyUnderWifi:Z

    :goto_1c
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsEmergencyUnderWifi:Z

    .line 1848
    const-string v0, "ut_prefer_vowifi_when_vowifi_registered"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1849
    const-string v0, "ut_prefer_vowifi_when_vowifi_registered"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1d

    :cond_1f
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtPreferVowifiWhenVowifiReg:Z

    :goto_1d
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferVowifiWhenVowifiReg:Z

    .line 1851
    return-void
.end method

.method private readIntCarrierConfig(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 1751
    if-nez p1, :cond_0

    .line 1752
    return-void

    .line 1755
    :cond_0
    const-string v0, "setDefaultNoReplyTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "setDefaultNoReplyTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNoReplyTimer:I

    :goto_0
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I

    .line 1756
    const-string v0, "ContentTypeMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "ContentTypeMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefContentTypeMode:I

    :goto_1
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I

    .line 1757
    const-string v0, "callWaitingMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "callWaitingMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCallWaitingMode:I

    :goto_2
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I

    .line 1758
    const-string v0, "utNafPort"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "utNafPort"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafPort:I

    :goto_3
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I

    .line 1759
    const-string v0, "utBsfPort"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "utBsfPort"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_5
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfPort:I

    :goto_4
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I

    .line 1760
    const-string v0, "utGbaType"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "utGbaType"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :cond_6
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtGbaType:I

    :goto_5
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I

    .line 1762
    const-string v0, "setDeactDefaultNoReplyTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "setDeactDefaultNoReplyTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    :cond_7
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNeedNoReplyTimer:I

    :goto_6
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I

    .line 1766
    const-string v0, "utBearType"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "utBearType"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_7

    :cond_8
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBearerType:I

    :goto_7
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I

    .line 1769
    const-string v0, "missedCallTipsRingTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "missedCallTipsRingTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :cond_9
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsRingTimer:I

    :goto_8
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I

    .line 1770
    const-string v0, "missedCallTipsDelayTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "missedCallTipsDelayTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_9

    :cond_a
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelayTimer:I

    :goto_9
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I

    .line 1771
    const-string v0, "utUseApn"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "utUseApn"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_a

    :cond_b
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseApn:I

    :goto_a
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I

    .line 1773
    const-string v0, "utOIRSourceMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "utOIRSourceMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_b

    :cond_c
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRSourceMode:I

    :goto_b
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRSourceMode:I

    .line 1776
    const-string v0, "utOIRDefaultMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v0, "utOIRDefaultMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    :cond_d
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRDefaultMode:I

    :goto_c
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRDefaultMode:I

    .line 1779
    const-string v0, "utImsDataDelayEndTime"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "utImsDataDelayEndTime"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_d

    :cond_e
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I

    :goto_d
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I

    .line 1783
    const-string v0, "utVoWifiDelayEndTime"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1784
    const-string v0, "utVoWifiDelayEndTime"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_e

    :cond_f
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtVoWifiDelayEndTime:I

    :goto_e
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I

    .line 1787
    const-string v0, "utForbiddenTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v0, "utForbiddenTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_f

    :cond_10
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultUtForbiddenTimer:I

    :goto_f
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenTimer:I

    .line 1790
    const-string v0, "utPreferOption"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v0, "utPreferOption"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_10

    :cond_11
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtPreferOption:I

    :goto_10
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferOption:I

    .line 1792
    return-void
.end method

.method private readStringCarrierConfig(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 1733
    if-nez p1, :cond_0

    .line 1734
    return-void

    .line 1737
    :cond_0
    const-string v0, "utNafSrvAddr"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "utNafSrvAddr"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafSrvAddr:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    .line 1738
    const-string v0, "utBsfSrvAddr"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "utBsfSrvAddr"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfSrvAddr:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    .line 1739
    const-string v0, "utX3gppIntendId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "utX3gppIntendId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtX3gppIntendId:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;

    .line 1740
    const-string v0, "utIMPU"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "utIMPU"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPU:Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    .line 1741
    const-string v0, "utIMPI"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "utIMPI"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPI:Ljava/lang/String;

    :goto_4
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    .line 1743
    const-string v0, "utXcapRootUri"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "utXcapRootUri"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtXcapRootUri:Ljava/lang/String;

    :goto_5
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;

    .line 1746
    const-string v0, "impiDomain"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "impiDomain"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImpiDomain:Ljava/lang/String;

    :goto_6
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    .line 1748
    return-void
.end method

.method private resolveCallWaitingMode()V
    .locals 4

    .line 2477
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingMode()I

    move-result v0

    .line 2479
    .local v0, "callWaitingMode":I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2480
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    goto :goto_0

    .line 2482
    :cond_0
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    .line 2485
    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 2486
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    goto :goto_1

    .line 2488
    :cond_1
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    .line 2491
    :goto_1
    and-int/lit8 v1, v0, 0xc

    shr-int/lit8 v1, v1, 0x2

    .line 2493
    .local v1, "callWaitingSource":I
    packed-switch v1, :pswitch_data_0

    .line 2504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call waiting source is not exist, source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 2501
    :pswitch_0
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 2502
    goto :goto_2

    .line 2498
    :pswitch_1
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_CS:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 2499
    goto :goto_2

    .line 2495
    :pswitch_2
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 2496
    nop

    .line 2508
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveCallWaitingMode finished, callWaitingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsCallWaitingSyncToImsSdk="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsCallWaitingSyncToCs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCallWaitingSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2512
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setVoWifiStatus(I)V
    .locals 4
    .param p1, "value"    # I

    .line 2758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoWifiStatus value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2759
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_0

    .line 2760
    return-void

    .line 2762
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    if-nez v0, :cond_1

    .line 2763
    const-string v0, "mMapconService is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2764
    return-void

    .line 2768
    :cond_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 2772
    .local v0, "phoneId":I
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2774
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v2, v0}, Lcom/hisi/mapcon/IMapconService;->setVoWifiOn(I)I

    .line 2775
    const-string v2, "set vowifi on successful"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2777
    sget-boolean v2, Lcom/huawei/ims/HwImsConfigImpl;->IS_ATT_WF:Z

    if-eqz v2, :cond_2

    .line 2778
    const-string v2, "HwImsConfigImpl"

    const-string v3, "Wifi-Call HwImsConfigImpl set vowifi on successful"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->setWifiEmergencyAid(ZLandroid/os/Message;)V

    goto :goto_0

    .line 2786
    :pswitch_1
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v2, v0}, Lcom/hisi/mapcon/IMapconService;->setVoWifiOff(I)I

    .line 2787
    const-string v2, "set vowifi off successful"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2789
    sget-boolean v2, Lcom/huawei/ims/HwImsConfigImpl;->IS_ATT_WF:Z

    if-eqz v2, :cond_2

    .line 2790
    const-string v2, "HwImsConfigImpl"

    const-string v3, "Wifi-Call HwImsConfigImpl set vowifi off successful"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->setWifiEmergencyAid(ZLandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2800
    :catch_0
    move-exception v1

    .line 2801
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "set vowifi status failed"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 2802
    :cond_2
    :goto_0
    nop

    .line 2803
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final startPositionOfIMSConfigXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2031
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    .end local v1    # "type":I
    goto :goto_0

    .line 2036
    .restart local v1    # "type":I
    :cond_0
    if-ne v1, v2, :cond_2

    .line 2040
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2044
    return-void

    .line 2041
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2037
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stringToIntArray(Ljava/lang/String;)[I
    .locals 6
    .param p1, "stringText"    # Ljava/lang/String;

    .line 2403
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2404
    const-string v1, "stringText is null. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2406
    new-array v0, v0, [I

    return-object v0

    .line 2410
    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2412
    .local v1, "stringReplaceSpace":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2413
    const-string v2, "stringText is null after replace space. "

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2415
    new-array v0, v0, [I

    return-object v0

    .line 2418
    :cond_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2420
    .local v2, "stringTextArray":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_2

    .line 2421
    const-string v3, "stringTextArray length is 0 after replace space."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2423
    new-array v0, v0, [I

    return-object v0

    .line 2426
    :cond_2
    array-length v3, v2

    new-array v3, v3, [I

    .line 2428
    .local v3, "intArray":[I
    nop

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 2429
    const-string v4, ""

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2430
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 2432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intArray[i] =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 2434
    :cond_3
    const v4, -0x1e240

    aput v4, v3, v0

    .line 2428
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2438
    .end local v0    # "i":I
    :cond_4
    return-object v3
.end method

.method private stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "stringText"    # Ljava/lang/String;

    .line 2442
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2443
    const-string v1, "stringText is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2445
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 2449
    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2451
    .local v1, "stringReplaceSpace":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2452
    const-string v2, "stringText is null after replace space."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2454
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 2457
    :cond_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2459
    .local v2, "stringArray":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_2

    .line 2460
    const-string v3, "stringArray length is 0 after replace space."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2462
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 2465
    :cond_2
    nop

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 2466
    const-string v3, ""

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2467
    const-string v3, "SNIT"

    aput-object v3, v2, v0

    .line 2470
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stringArray[i]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2473
    .end local v0    # "i":I
    :cond_4
    return-object v2
.end method


# virtual methods
.method public getBoolCarrierBuildVersion()Z
    .locals 1

    .line 2806
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBuildVersionCarrier:Z

    return v0
.end method

.method declared-synchronized getBoolFromSP(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 2
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defValue"    # Z

    monitor-enter p0

    .line 1598
    :try_start_0
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1600
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 1597
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "defValue":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized getBsfAddrFromSIM()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1440
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1441
    const-string v0, "bsf."

    .line 1443
    .local v0, "sBsf":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pub.3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1444
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;

    .line 1446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sBsf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1448
    monitor-exit p0

    return-object v0

    .line 1452
    .end local v0    # "sBsf":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v0, "getBsfAddrFromSIM error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1454
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1435
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getCallWaitingMode()I
    .locals 3

    monitor-enter p0

    .line 894
    :try_start_0
    const-string v0, "persist.ims.cwlocalset"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, "callWaitingMode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallWaitingMode, callWaitingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 897
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 898
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    :goto_0
    monitor-exit p0

    return v1

    .line 893
    .end local v0    # "callWaitingMode":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    .locals 1

    monitor-enter p0

    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method public getConfigInt(I)I
    .locals 2
    .param p1, "item"    # I

    .line 2634
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2635
    .local v0, "it":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigIntValue:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2636
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigIntValue:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 2638
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I

    .line 2643
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2644
    .local v0, "it":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigStringValue:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2645
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigStringValue:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2647
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method declared-synchronized getContentTypeMode()I
    .locals 1

    monitor-enter p0

    .line 880
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getDefUtImsDataDelayEndTime()I
    .locals 1

    monitor-enter p0

    .line 1498
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getDefaultNeedNoReplyTimer()I
    .locals 1

    monitor-enter p0

    .line 872
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getDefaultNoReplyTimer()I
    .locals 1

    monitor-enter p0

    .line 864
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getDomainName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1249
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDomainNameFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getIMSI()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1307
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getIccId()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1387
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 1389
    .local v0, "phoneId":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1390
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return-object v2

    .line 1386
    .end local v0    # "phoneId":I
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getImpiFromSIM()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1414
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1418
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@ims."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".3gppnetwork.org"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1421
    .local v0, "sImpi":Ljava/lang/String;
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 1423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sImpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1425
    monitor-exit p0

    return-object v0

    .line 1429
    .end local v0    # "sImpi":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v0, "getImpiFromSIM error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1431
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1413
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getImpuFromSIM()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1396
    :try_start_0
    const-string v0, "sip:"

    .line 1398
    .local v0, "sIMPU":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@ims."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assemble IMPU from SIM, sIMPU = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1403
    monitor-exit p0

    return-object v0

    .line 1407
    :cond_0
    :try_start_1
    const-string v1, "getSimIMPU error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1409
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 1395
    .end local v0    # "sIMPU":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method public getImsConfig(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 5
    .param p1, "configKey"    # Ljava/lang/String;

    .line 2730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsConfig, configKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2731
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 2732
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-eqz p1, :cond_3

    .line 2733
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x111c7745

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x1420b6aa

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "getDMUSER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v2, "getSmsConfig"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsConfig, configKey not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 2742
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    const-string v3, "dm_user_ims_value"

    .line 2743
    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2742
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2744
    .local v1, "dmUserValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsConfig, dmUserValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2745
    const-string v2, "getDMUSER"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    goto :goto_1

    .line 2735
    .end local v1    # "dmUserValue":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    const-string v3, "sms_ims_set_value"

    .line 2736
    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    .line 2735
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2738
    .local v1, "smsConfigValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsConfig, smsConfigValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2739
    const-string v2, "getSmsConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 2740
    nop

    .line 2749
    .end local v1    # "smsConfigValue":I
    :goto_1
    goto :goto_2

    .line 2752
    :cond_3
    const-string v1, "getImsConfig, configKey is null!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2754
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized getIntFromSP(Ljava/lang/String;Landroid/content/Context;I)I
    .locals 2
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defValue"    # I

    monitor-enter p0

    .line 1614
    :try_start_0
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1616
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 1613
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "defValue":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized getIsEmergencyUnderWifi()Z
    .locals 1

    monitor-enter p0

    .line 2824
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsEmergencyUnderWifi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getIsUseMultCondition()Z
    .locals 1

    monitor-enter p0

    .line 790
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUseMultCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getMissedCallTipsDelayTimer()I
    .locals 1

    monitor-enter p0

    .line 1299
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getMissedCallTipsRingTimer()I
    .locals 1

    monitor-enter p0

    .line 1295
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getOIRDefaultMode()I
    .locals 1

    monitor-enter p0

    .line 1486
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRDefaultMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getOIRSourceMode()I
    .locals 1

    monitor-enter p0

    .line 1477
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRSourceMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1532
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter getSharedPreferences, spKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1541
    .local v0, "valueInMap":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1542
    const-string v1, "value is already stored in map."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    monitor-exit p0

    return-object v0

    .line 1547
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1551
    .local v1, "sp":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1552
    .local v2, "sKey":Ljava/lang/String;
    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1555
    .local v3, "sParam":Ljava/lang/String;
    const-string v4, ""

    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1557
    .local v4, "spValueEncrypt":Ljava/lang/String;
    invoke-direct {p0, v4, v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1559
    .local v5, "valueInSp":Ljava/lang/String;
    iget-object v6, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1561
    monitor-exit p0

    return-object v5

    .line 1531
    .end local v0    # "valueInMap":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "sKey":Ljava/lang/String;
    .end local v3    # "sParam":Ljava/lang/String;
    .end local v4    # "spValueEncrypt":Ljava/lang/String;
    .end local v5    # "valueInSp":Ljava/lang/String;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized getSimOperator()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1377
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 1380
    .local v0, "phoneId":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1381
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return-object v2

    .line 1376
    .end local v0    # "phoneId":I
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUt409ShowPhrase()Z
    .locals 1

    monitor-enter p0

    .line 1504
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUt409ShowPhrase:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtBearerType()I
    .locals 3

    monitor-enter p0

    .line 1089
    :try_start_0
    const-string v0, "persist.ut.bearType"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    .local v0, "utBearerType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUtBearerType, utBearerType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1092
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    .line 1088
    .end local v0    # "utBearerType":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtBsfPort()I
    .locals 3

    monitor-enter p0

    .line 1035
    :try_start_0
    const-string v0, "persist.ut.bsfport"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, "utBsfPort":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUtBsfPort, utBsfPort "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1038
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    .line 1034
    .end local v0    # "utBsfPort":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtBsfSrvAddr()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 982
    :try_start_0
    const-string v0, "persist.ut.bsfsrvaddr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "utBsfSrvAddr":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use bsf addr from prop, bsf addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    monitor-exit p0

    return-object v0

    .line 990
    :cond_0
    :try_start_1
    const-string v1, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use bsf addr from xml, bsf addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 993
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 996
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getBsfAddrFromSIM()Ljava/lang/String;

    move-result-object v1

    .line 998
    .local v1, "bsfAddr":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use bsf addr from sim, bsf addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1001
    monitor-exit p0

    return-object v1

    .line 1004
    :cond_2
    :try_start_3
    const-string v2, "pick bsf addr fail."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1006
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 981
    .end local v0    # "utBsfSrvAddr":Ljava/lang/String;
    .end local v1    # "bsfAddr":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method public getUtForbiddenTimer()I
    .locals 1

    .line 1724
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenTimer:I

    return v0
.end method

.method declared-synchronized getUtGbaType()I
    .locals 2

    monitor-enter p0

    .line 1081
    :try_start_0
    const-string v0, "persist.ut.gbatype"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_INT:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_GBA_TYPE:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtIMPI()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 1204
    :try_start_0
    const-string v0, "persist.ut.authusername"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use impi from prop, impi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPI:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1207
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1210
    :cond_0
    :try_start_1
    const-string v0, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use impi from xml, impi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1218
    :cond_1
    :try_start_2
    const-string v0, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "impi from sim already exist, impi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 1221
    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1220
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1223
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1226
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin to assemble impi from imsi, mSpliceMncMcc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1229
    const/4 v0, 0x0

    .line 1230
    .local v0, "sImpi":Ljava/lang/String;
    const-string v2, ""

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1233
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@ims."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".3gppnetwork.org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1236
    :goto_0
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 1238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after assemble, impi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1240
    monitor-exit p0

    return-object v0

    .line 1244
    .end local v0    # "sImpi":Ljava/lang/String;
    :cond_4
    :try_start_4
    const-string v0, "getImpiFromSIM error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1246
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1203
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtIMPU(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1161
    :try_start_0
    const-string v0, "persist.ut.localusername"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use impu from prop, impu="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPU:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1164
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPU:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1167
    :cond_0
    :try_start_1
    const-string v0, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use impu from xml, impu="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1170
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1173
    :cond_1
    const/4 v0, 0x0

    .line 1176
    .local v0, "impu":Ljava/lang/String;
    :try_start_2
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2, p1}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1179
    if-eqz v0, :cond_2

    .line 1180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use impu from network, impu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1182
    monitor-exit p0

    return-object v0

    .line 1186
    :cond_2
    :try_start_3
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2, p1}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1189
    if-eqz v0, :cond_3

    .line 1190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use impu from imsi, impu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1192
    monitor-exit p0

    return-object v0

    .line 1195
    :cond_3
    :try_start_4
    const-string v1, "pick impu fail."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1197
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 1160
    .end local v0    # "impu":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized getUtIMPUFromNetwork()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1153
    :try_start_0
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtImsDataDelayEndTime()I
    .locals 1

    monitor-enter p0

    .line 1492
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtNafPort()I
    .locals 3

    monitor-enter p0

    .line 964
    :try_start_0
    const-string v0, "persist.ut.nafport"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "utNafPort":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUtNafPort, utNafPort "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 967
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    .line 963
    .end local v0    # "utNafPort":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtNafSrvAddr()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 933
    :try_start_0
    const-string v0, "persist.ut.nafsrvaddr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, "utNafSrvAddr":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use naf addr from prop, naf addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    monitor-exit p0

    return-object v0

    .line 941
    :cond_0
    :try_start_1
    const-string v1, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use naf addr from xml, naf addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 944
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 947
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getRootUriFromSim()Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, "nafAddr":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use naf addr from sim, naf addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 952
    monitor-exit p0

    return-object v1

    .line 955
    :cond_2
    :try_start_3
    const-string v2, "pick naf addr fail."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 957
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 932
    .end local v0    # "utNafSrvAddr":Ljava/lang/String;
    .end local v1    # "nafAddr":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtParamsCfg()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1465
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtPreferOption()I
    .locals 1

    monitor-enter p0

    .line 1074
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferOption:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtRetryInterval(I)I
    .locals 2
    .param p1, "index"    # I

    monitor-enter p0

    .line 1266
    const/4 v0, -0x1

    if-gez p1, :cond_0

    .line 1267
    monitor-exit p0

    return v0

    .line 1270
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    array-length v1, v1

    if-gt v1, p1, :cond_1

    goto :goto_0

    .line 1274
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1271
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    .line 1265
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized getUtRetryMaxCounts()I
    .locals 1

    monitor-enter p0

    .line 1255
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1256
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 1258
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 1254
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtUseApn()I
    .locals 1

    monitor-enter p0

    .line 725
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtVoWifiDelayEndTime()I
    .locals 1

    monitor-enter p0

    .line 1514
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtX3gppIntendId()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1144
    :try_start_0
    const-string v0, "persist.ut.x3gppintendid"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_X_3GPP_INTEND_ID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1143
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtXcapRootUri()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1024
    :try_start_0
    const-string v0, "persist.ut.xcapRootUri"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "utXcapRootUri":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUtXcapRootUri, utXcapRootUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1027
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    .line 1023
    .end local v0    # "utXcapRootUri":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getVowifiUtSwitch()Z
    .locals 1

    monitor-enter p0

    .line 1020
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVowifiUtSwitch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isCFNRcChangeWithCFNL()Z
    .locals 1

    monitor-enter p0

    .line 857
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCFNRcChangeWithCFNL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isCallWaitingSyncToCs()Z
    .locals 1

    monitor-enter p0

    .line 912
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isCallWaitingSyncToImsSdk()Z
    .locals 1

    monitor-enter p0

    .line 905
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isCardMccMncPreferToUseUT(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cardMccMnc"    # Ljava/lang/String;

    monitor-enter p0

    .line 763
    :try_start_0
    const-string v0, "persist.ut.preferToUseUT"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "preferToUseUt":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 765
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 769
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 771
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mPreferToUseUt:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVolte()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVoWifi()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return v2

    .line 776
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_4

    goto :goto_1

    .line 780
    :cond_4
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 777
    :cond_5
    :goto_1
    monitor-exit p0

    return v2

    .line 762
    .end local v0    # "preferToUseUt":Ljava/lang/String;
    .end local p1    # "cardMccMnc":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized isCardTypePreferToUseUT(I)Z
    .locals 2
    .param p1, "cardType"    # I

    monitor-enter p0

    .line 745
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCardTypePreferToUseUT, Card type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 748
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "mCardTypePreferToUseUT is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 744
    .end local p1    # "cardType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized isCarrierSupportVoWifi()Z
    .locals 1

    monitor-enter p0

    .line 785
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVoWifi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isCarrierSupportVolte()Z
    .locals 1

    monitor-enter p0

    .line 732
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVolte:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isCheckServiceWhenIncomingCall()Z
    .locals 1

    monitor-enter p0

    .line 1303
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCheckServiceWhenIncomingCall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isDcFailCauseForNonVolteSim(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/String;

    monitor-enter p0

    .line 1114
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1115
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "mDcFailCause is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1116
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1113
    .end local p1    # "cause":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized isDcFailCauseToReleaseApn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/String;

    monitor-enter p0

    .line 1125
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1126
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "isDcFailCauseToReleaseApn fasle mDcFailCauseToReleaseApn is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1127
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1124
    .end local p1    # "cause":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized isHangUpWhenLostNet()Z
    .locals 1

    monitor-enter p0

    .line 1459
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHangUpWhenLostNet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isIMPUConfigured()Z
    .locals 2

    monitor-enter p0

    .line 1315
    :try_start_0
    const-string v0, "persist.ut.localusername"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1318
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1316
    :cond_1
    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1314
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isImsSsBeUsed()Z
    .locals 1

    monitor-enter p0

    .line 707
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsSsBeUsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isImsStateFollowVoiceDomain()Z
    .locals 1

    monitor-enter p0

    .line 887
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsStateFollowVoiceDomain:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isMissedCallDisplay()Z
    .locals 1

    monitor-enter p0

    .line 1287
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallDisplay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isMissedCallTips()Z
    .locals 1

    monitor-enter p0

    .line 1279
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallTipsInternal()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isMissedCallTipsDelay()Z
    .locals 1

    monitor-enter p0

    .line 1291
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isMissedCallTipsInternal()Z
    .locals 1

    monitor-enter p0

    .line 1283
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTips:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method public isProtocolIR92V10orGreater()Z
    .locals 1

    .line 1729
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsProtocolIR92V10orGreater:Z

    return v0
.end method

.method declared-synchronized isSSForbidFallbackCS(I)Z
    .locals 2
    .param p1, "ssType"    # I

    monitor-enter p0

    .line 841
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSSForbidFallbackCS, ss type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 844
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "mSSForbidFallbackCS is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 840
    .end local p1    # "ssType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized isSSUseCsOnly(I)Z
    .locals 3
    .param p1, "ssType"    # I

    monitor-enter p0

    .line 798
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSSUseCsOnly, ss type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 800
    const-string v0, "persist.ut.ssTypeUseCsOnly"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, "SSTypeUseCsOnly":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSSUseCsOnly, SSTypeUseCsOnly "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 803
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 804
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    :goto_0
    iput-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    .line 806
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 812
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    invoke-direct {p0, v1, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 807
    :cond_2
    :goto_1
    :try_start_1
    const-string v1, "mSSTypeUseCsOnly is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 797
    .end local v0    # "SSTypeUseCsOnly":Ljava/lang/String;
    .end local p1    # "ssType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized isUnSupportMMICode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "MMIcode"    # Ljava/lang/String;

    monitor-enter p0

    .line 819
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMI code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 822
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "mNotSupportMMICode is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 818
    .end local p1    # "MMIcode":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized isUse403ForLocalCW()Z
    .locals 1

    monitor-enter p0

    .line 729
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUse403ForLocalCW:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtBsfAuthBeUsed()Z
    .locals 1

    monitor-enter p0

    .line 1471
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfAuthBeUsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtBsfUseHttps()Z
    .locals 2

    monitor-enter p0

    .line 1045
    :try_start_0
    const-string v0, "persist.ut.bsfusehttps"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_BSF_USE_HTTPS:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfUseHttps:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    :goto_0
    monitor-exit p0

    return v0

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtCSBeUsed()Z
    .locals 2

    monitor-enter p0

    .line 834
    :try_start_0
    const-string v0, "persist.ut.csbeused"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_CS_BE_USED:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCSBeUsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtCanUseWifi()Z
    .locals 1

    monitor-enter p0

    .line 736
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCanUseWifi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtForbiddenWhenVolteSwitchOff()Z
    .locals 3

    monitor-enter p0

    .line 714
    :try_start_0
    const-string v0, "persist.ut.forbiddenWVSO"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "utForbiddenWhenVolteSwitchOff":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "utForbiddenWhenVolteSwitchOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 717
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 718
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenWhenVolteSwitchOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    :goto_0
    monitor-exit p0

    return v1

    .line 713
    .end local v0    # "utForbiddenWhenVolteSwitchOff":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtGbaLifetimeBeUsed()Z
    .locals 1

    monitor-enter p0

    .line 1510
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaLifetimeBeUsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtKsnafEncodedByBase64()Z
    .locals 2

    monitor-enter p0

    .line 1069
    :try_start_0
    const-string v0, "persist.ut.ksnafbase64"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_KSNAF_USE_BASE64:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtKsnafUseBase64:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    :goto_0
    monitor-exit p0

    return v0

    .line 1068
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtNafUseHttps()Z
    .locals 2

    monitor-enter p0

    .line 974
    :try_start_0
    const-string v0, "persist.ut.usehttps"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_NAF_USE_HTTPS:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafUseHttps:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    :goto_0
    monitor-exit p0

    return v0

    .line 973
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtOpenHrsLog()Z
    .locals 2

    monitor-enter p0

    .line 926
    :try_start_0
    const-string v0, "persist.ut.hrslog"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_HRS_LOG:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtHrsLog:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtPreferVowifiWhenVowifiReg()Z
    .locals 1

    monitor-enter p0

    .line 1010
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferVowifiWhenVowifiReg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtQueryDnsIgnoreNetId()Z
    .locals 1

    monitor-enter p0

    .line 1520
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtQueryDnsIgnoreNetId:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtUseNodeSelector()Z
    .locals 2

    monitor-enter p0

    .line 1053
    :try_start_0
    const-string v0, "persist.ut.usenodeselector"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_NODE_SELECTOR:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseNodeSelector:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    :goto_0
    monitor-exit p0

    return v0

    .line 1052
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtUseTmpi()Z
    .locals 2

    monitor-enter p0

    .line 1137
    :try_start_0
    const-string v0, "persist.ut.usetmpi"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_TMPI:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseTmpi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtUseXcapNameSpace()Z
    .locals 2

    monitor-enter p0

    .line 1061
    :try_start_0
    const-string v0, "persist.ut.usexcapnamespace"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_XCAP_NAMESPACE:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseXcapNamespace:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    :goto_0
    monitor-exit p0

    return v0

    .line 1060
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isVolteLowbatteryEndcall()Z
    .locals 1

    monitor-enter p0

    .line 2819
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVolteLowbatteryEndcall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method public processOnTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processOnTransact , code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 686
    const/16 v0, 0xbb9

    if-eq p1, v0, :cond_0

    .line 701
    const/4 v0, 0x0

    return v0

    .line 689
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "mmiCode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 691
    .local v1, "result":I
    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUnSupportMMICode(Ljava/lang/String;)Z

    move-result v2

    .line 693
    .local v2, "isUnSupportMMICode":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUnSupportMMICode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 694
    move v1, v2

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    const/4 v3, 0x1

    return v3
.end method

.method declared-synchronized readCarrierConfig(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1638
    :try_start_0
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 1640
    :cond_0
    :try_start_1
    const-string v0, "readCarrierConfig begin"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1641
    const-string v0, "carrier_config"

    .line 1642
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1645
    .local v0, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v1

    .line 1647
    .local v1, "subId":I
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1649
    .local v2, "b":Landroid/os/PersistableBundle;
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->readBoolCarrierConfig(Landroid/os/PersistableBundle;)V

    .line 1650
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->readIntCarrierConfig(Landroid/os/PersistableBundle;)V

    .line 1651
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->readStringCarrierConfig(Landroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1654
    :try_start_2
    const-string v3, "cardTypePreferToUseUT"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "cardTypePreferToUseUT"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardTypePreferToUseUT:[I

    :goto_0
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    .line 1655
    const-string v3, "ssTypeForbidFallbackCS"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "ssTypeForbidFallbackCS"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSForbidFallbackCS:[I

    :goto_1
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    .line 1656
    const-string v3, "ssTypeUseCsOnly"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "ssTypeUseCsOnly"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSTypeUseCsOnly:[I

    :goto_2
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    .line 1657
    const-string v3, "utRetryInterval"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "utRetryInterval"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtRetryInterval:[I

    :goto_3
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    .line 1660
    const-string v3, "cardMccMncPreferToUseUT"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v3, "cardMccMncPreferToUseUT"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

    :goto_4
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    .line 1661
    const-string v3, "ssNotSupportMMICode"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v3, "ssNotSupportMMICode"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefNotSupportMMICode:[Ljava/lang/String;

    :goto_5
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    .line 1663
    const-string v3, "utParamsCfg"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v3, "utParamsCfg"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_7
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtParamsCfg:[Ljava/lang/String;

    :goto_6
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;

    .line 1666
    const-string v3, "dcFailCauseForNonVolteSim"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v3, "dcFailCauseForNonVolteSim"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_7

    :cond_8
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDcFailCode:[I

    :goto_7
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    .line 1667
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getDcFailCause([I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    .line 1670
    const-string v3, "dcFailCauseToReleaseApn"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v3, "dcFailCauseToReleaseApn"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    :goto_8
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    .line 1671
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getDcFailCause([I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    .line 1675
    :catch_0
    move-exception v3

    .line 1676
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_a

    .line 1673
    :catch_1
    move-exception v3

    .line 1674
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RuntimeException, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1677
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_9
    nop

    .line 1681
    :goto_a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->resolveCallWaitingMode()V

    .line 1684
    const/16 v3, 0x11

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getParamFromUtParamsCfg(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_a

    move v3, v5

    goto :goto_b

    :cond_a
    move v3, v4

    :goto_b
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsProtocolIR92V10orGreater:Z

    .line 1686
    const/16 v3, 0x13

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getParamFromUtParamsCfg(I)I

    move-result v3

    if-ne v3, v5, :cond_b

    move v4, v5

    nop

    :cond_b
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaLifetimeBeUsed:Z

    .line 1688
    const-string v3, "readCarrierConfig end"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1689
    monitor-exit p0

    return-void

    .line 1637
    .end local v0    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v1    # "subId":I
    .end local v2    # "b":Landroid/os/PersistableBundle;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method public removeKeyInSp(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 2811
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2812
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2813
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2814
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2815
    return-void
.end method

.method declared-synchronized setBoolToSP(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 2
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1604
    :try_start_0
    invoke-static {p3}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1606
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1608
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1609
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    monitor-exit p0

    return-void

    .line 1603
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "spValue":Z
    .end local p3    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized setBsfAddrFromSIM(Ljava/lang/String;)V
    .locals 0
    .param p1, "bsfAddr"    # Ljava/lang/String;

    monitor-enter p0

    .line 1337
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    monitor-exit p0

    return-void

    .line 1336
    .end local p1    # "bsfAddr":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method public setConfig(II)I
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 2586
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_0

    .line 2587
    const/4 v0, 0x0

    return v0

    .line 2590
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    if-nez v0, :cond_1

    .line 2591
    const-string v0, "setProvisionedValue,mMapconService is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2592
    const/4 v0, -0x1

    return v0

    .line 2596
    :cond_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 2599
    .local v0, "phoneId":I
    const/4 v1, 0x0

    .line 2600
    .local v1, "ret":I
    const/16 v2, 0x1a

    if-ne v2, p1, :cond_2

    .line 2602
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set VOICE_OVER_WIFI_ROAMING,value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2603
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v2, v0}, Lcom/hisi/mapcon/IMapconService;->notifyRoaming(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2604
    :catch_0
    move-exception v2

    .line 2605
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "set VOICE_OVER_WIFI_ROAMING failed"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2606
    const/4 v1, 0x1

    .line 2607
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 2608
    :cond_2
    const/16 v2, 0x1b

    if-ne v2, p1, :cond_3

    .line 2610
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set VOICE_OVER_WIFI_MODE,value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2611
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v2, v0, p2}, Lcom/hisi/mapcon/IMapconService;->setDomain(II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2615
    goto :goto_1

    .line 2612
    :catch_1
    move-exception v2

    .line 2613
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "set VOICE_OVER_WIFI_MODE failed"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2614
    const/4 v1, 0x1

    .line 2618
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 2619
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2622
    :cond_4
    return v1
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 2
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 2627
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2628
    .local v0, "it":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigStringValue:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2629
    const/4 v1, 0x0

    return v1
.end method

.method declared-synchronized setCurrentImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    monitor-enter p0

    .line 1323
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    monitor-exit p0

    return-void

    .line 1322
    .end local p1    # "imsi":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized setDomainNameFromSIM(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;

    monitor-enter p0

    .line 1334
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDomainNameFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    monitor-exit p0

    return-void

    .line 1333
    .end local p1    # "domainName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 2
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 2673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFeatureValue feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2674
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2687
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/huawei/ims/HwImsConfigImpl;->setVoWifiStatus(I)V

    .line 2688
    goto :goto_0

    .line 2685
    :pswitch_1
    goto :goto_0

    .line 2676
    :pswitch_2
    nop

    .line 2692
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized setIMSI(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    monitor-enter p0

    .line 1311
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1312
    monitor-exit p0

    return-void

    .line 1310
    .end local p1    # "imsi":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized setImpiFromSIM(Ljava/lang/String;)V
    .locals 0
    .param p1, "impi"    # Ljava/lang/String;

    monitor-enter p0

    .line 1331
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    monitor-exit p0

    return-void

    .line 1330
    .end local p1    # "impi":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method public setImsConfig(Ljava/lang/String;Landroid/os/PersistableBundle;)I
    .locals 6
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "configValue"    # Landroid/os/PersistableBundle;

    .line 2696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsConfig, configKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", configValue = *** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2697
    const/4 v0, 0x1

    .line 2698
    .local v0, "ret":I
    if-eqz p1, :cond_4

    .line 2699
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x54049995

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    const v3, 0x6d7037b9

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "setSmsConfig"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v5

    goto :goto_0

    :cond_1
    const-string v2, "setImsRegErrorReport"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v4

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2719
    const-string v1, "setImsConfig, configKey not exist!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 2710
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-eqz v1, :cond_3

    .line 2711
    const-string v1, "setImsRegErrorReport"

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {p2, v1, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2713
    .local v1, "enabled":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/ImsServiceSub;->setVoWiFiRegErrReportEnable(I)V

    .line 2714
    const/4 v0, 0x0

    .line 2715
    .end local v1    # "enabled":I
    goto :goto_1

    .line 2701
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-eqz v1, :cond_3

    .line 2702
    const-string v1, "setSmsConfig"

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {p2, v1, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2704
    .local v1, "smsConfig":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/ImsServiceSub;->setImsSmsConfig(I)V

    .line 2705
    const/4 v0, 0x0

    .line 2706
    .end local v1    # "smsConfig":I
    nop

    .line 2720
    :cond_3
    :goto_1
    goto :goto_2

    .line 2723
    :cond_4
    const-string v1, "setImsConfig, configKey is null!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2725
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized setIntToSP(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 2
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1620
    :try_start_0
    invoke-static {p3}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1622
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1624
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1625
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1626
    monitor-exit p0

    return-void

    .line 1619
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "spValue":I
    .end local p3    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized setNafAddrFromSIM(Ljava/lang/String;)V
    .locals 0
    .param p1, "nsfAddr"    # Ljava/lang/String;

    monitor-enter p0

    .line 1341
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    monitor-exit p0

    return-void

    .line 1340
    .end local p1    # "nsfAddr":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1571
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter setSharedPreferences, spKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1574
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1580
    .local v0, "valueInMap":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1581
    const-string v1, "value is not changed, need not to store in SP again."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1583
    monitor-exit p0

    return-void

    .line 1586
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    invoke-static {p3}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1589
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1591
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p2, p3}, Lcom/huawei/ims/HwImsConfigImpl;->encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1593
    .local v3, "spValueEncrypt":Ljava/lang/String;
    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1594
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1595
    monitor-exit p0

    return-void

    .line 1570
    .end local v0    # "valueInMap":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "spValueEncrypt":Ljava/lang/String;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "spValue":Ljava/lang/String;
    .end local p3    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized setSpliceMncMcc(Ljava/lang/String;)V
    .locals 0
    .param p1, "spliceMncMcc"    # Ljava/lang/String;

    monitor-enter p0

    .line 1327
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    monitor-exit p0

    return-void

    .line 1326
    .end local p1    # "spliceMncMcc":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized spliceMncMcc()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 1345
    const/4 v0, 0x0

    .line 1347
    .local v0, "spMncMcc":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 1350
    .local v1, "simOperator":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simOperator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-ne v4, v3, :cond_0

    .line 1354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mnc0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1355
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v4, v3, :cond_1

    .line 1356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mnc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1363
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mcc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spMCCMNC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    monitor-exit p0

    return-object v0

    .line 1358
    :cond_1
    :try_start_1
    const-string v3, "spliceMncMcc error: Get wrong MCC MNC"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1360
    monitor-exit p0

    return-object v2

    .line 1370
    :cond_2
    :try_start_2
    const-string v3, "spliceMncMcc error: Cannot get sim MCC MNC "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1372
    monitor-exit p0

    return-object v2

    .line 1344
    .end local v0    # "spMncMcc":Ljava/lang/String;
    .end local v1    # "simOperator":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method
