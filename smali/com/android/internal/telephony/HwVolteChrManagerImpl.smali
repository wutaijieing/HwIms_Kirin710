.class public Lcom/android/internal/telephony/HwVolteChrManagerImpl;
.super Ljava/lang/Object;
.source "HwVolteChrManagerImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/HwVolteChrManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallEndReason;,
        Lcom/android/internal/telephony/HwVolteChrManagerImpl$CallCountEvent;
    }
.end annotation


# static fields
.field private static final ANSWER_FAIL:I = 0x4

.field private static final CALL_COUNT_LIST:Ljava/lang/String; = "call_count_list"

.field private static final CALL_FAIL_TYPE:Ljava/lang/String; = "call_fail_type"

.field private static final CALL_STATE:Ljava/lang/String; = "call_state"

.field private static final CALL_TYPE_AUDIO:Ljava/lang/String; = "VoLTE"

.field public static final CHR_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.android.permission.GET_CHR_DATA"

.field public static final CHR_DATA:Ljava/lang/String; = "chr_data"

.field private static final CS_REDIAL:I = 0x5

.field private static final Call_TYPE_VIDEO:Ljava/lang/String; = "VT"

.field public static final DBG:Z = true

.field private static final DROP_CALL:I = 0x2

.field public static final FAULT_ID:Ljava/lang/String; = "fault_id"

.field private static final FAULT_IMS_REG_FAIL_EVENT:I = 0xfa2

.field private static final FAULT_IMS_SS_PERFORMANCE_EVENT:I = 0xfa4

.field private static final FAULT_IMS_VT_FAIL_EVENT:I = 0xfa3

.field private static final FAULT_VOLTE_PERFORMANCE_EVENT:I = 0xfa1

.field private static final HANDOVER_CANCELED:I = 0x3

.field private static final HANDOVER_COMPLETED:I = 0x1

.field private static final HANDOVER_FAILED:I = 0x2

.field private static final HANDOVER_STARTED:I = 0x0

.field private static final HANGUP_FAIL:I = 0x3

.field public static final INTENT_CHR:Ljava/lang/String; = "com.huawei.android.chr.action.ACTION_REPORT_CHR"

.field private static final INVITE_TO_RING_TIME:Ljava/lang/String; = "invite_to_ring_time"

.field private static final IS_MULTI_PARTY:Ljava/lang/String; = "is_multi_party"

.field public static final LOG_TAG:Ljava/lang/String; = "HwVolteChrManager"

.field public static final MAX_MONITOR_TIME:I = 0xffff

.field private static final MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field private static final MODIFY_FAIL:I = 0x8

.field public static final MODULE_ID:Ljava/lang/String; = "module_id"

.field private static final MO_FAIL:I = 0x1

.field private static final MT_EVENT:I = 0x2

.field private static final MT_FAIL:I = 0x7

.field private static final MT_NW_FAIL_EVENT:I = 0x9

.field public static final NO_SERVICE_CAUSE_INCALL:I = 0x9003

.field public static final NO_SERVICE_CAUSE_MO:I = 0x9001

.field public static final NO_SERVICE_CAUSE_MT:I = 0x9002

.field public static final NO_SERVICE_OFFSET_BASE:I = 0x9000

.field private static final PRECISE_DISCONNECT_CAUSE:Ljava/lang/String; = "precise_disconnect_cause"

.field private static final RESERVE_FAIL:I = 0xa

.field private static final SRVCC_CANCEL:I = 0x9

.field private static final SRVCC_FAIL:I = 0x6

.field private static final VOLTE_MODULE_ID:I = 0xfa0

.field private static final VOLTE_STATISTIC_EVENT:I = 0xfa5

.field private static mInstance:Lcom/android/internal/telephony/HwVolteChrManager;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIsMissedCallTipsOn:Z

.field public mRemoteCauseCode:I

.field public mSrvccFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl;

    invoke-direct {v0}, Lcom/android/internal/telephony/HwVolteChrManagerImpl;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl;->mInstance:Lcom/android/internal/telephony/HwVolteChrManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HwVolteChrManagerImpl;->mIsMissedCallTipsOn:Z

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/HwVolteChrManagerImpl;->mRemoteCauseCode:I

    .line 59
    iput-boolean v0, p0, Lcom/android/internal/telephony/HwVolteChrManagerImpl;->mSrvccFlag:Z

    return-void
.end method

.method public static getDefault()Lcom/android/internal/telephony/HwVolteChrManager;
    .locals 1

    .line 84
    sget-object v0, Lcom/android/internal/telephony/HwVolteChrManagerImpl;->mInstance:Lcom/android/internal/telephony/HwVolteChrManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/HwVolteChrManagerImpl;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method public notifyCSRedial()V
    .locals 0

    .line 102
    return-void
.end method

.method public notifySrvccState(I)V
    .locals 0

    .line 101
    return-void
.end method

.method public setRemoteCauseCode(I)V
    .locals 0

    .line 103
    return-void
.end method

.method public setSrvccFlag(Z)V
    .locals 0

    .line 100
    return-void
.end method

.method public triggerAnswerFailedEvent(I)V
    .locals 0

    .line 96
    return-void
.end method

.method public triggerCallLostEvent(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/internal/telephony/imsphone/ImsPhone;I)V
    .locals 0

    .line 94
    return-void
.end method

.method public triggerHangupFailedEvent()V
    .locals 0

    .line 95
    return-void
.end method

.method public triggerImsRegFailEvent(Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .locals 0

    .line 99
    const/4 p1, 0x1

    return p1
.end method

.method public triggerMtCallFailEvent(JJII)V
    .locals 0

    .line 97
    return-void
.end method

.method public triggerNoServiceDuringCallEvent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 0

    .line 98
    return-void
.end method

.method public updateCallLog(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0

    .line 92
    return-void
.end method

.method public updateMtCallLog(I)V
    .locals 0

    .line 93
    return-void
.end method
