.class public Lcom/huawei/ims/DriverCallIms;
.super Lcom/android/internal/telephony/DriverCall;
.source "DriverCallIms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/DriverCallIms$State;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "DRIVERCALL-IMS"


# instance fields
.field public callDetails:Lcom/huawei/ims/CallDetails;

.field public callFailCause:Landroid/telephony/ims/ImsReasonInfo;

.field public peerVideoSupport:I

.field public radioTechFromRilImsCall:I

.field public redirectNumber:Ljava/lang/String;

.field public redirectNumberPresentation:I

.field public redirectNumberToa:I

.field public state:Lcom/huawei/ims/DriverCallIms$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 162
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->radioTechFromRilImsCall:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumber:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberToa:I

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberPresentation:I

    .line 163
    new-instance v0, Lcom/huawei/ims/CallDetails;

    invoke-direct {v0}, Lcom/huawei/ims/CallDetails;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/DriverCallIms;)V
    .locals 2
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->radioTechFromRilImsCall:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumber:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberToa:I

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberPresentation:I

    .line 137
    new-instance v0, Lcom/huawei/ims/CallDetails;

    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    invoke-direct {v0, v1}, Lcom/huawei/ims/CallDetails;-><init>(Lcom/huawei/ims/CallDetails;)V

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 138
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 139
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 140
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->index:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->index:I

    .line 141
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 142
    iget-boolean v0, p1, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    .line 143
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->TOA:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->TOA:I

    .line 144
    iget-boolean v0, p1, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    .line 145
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->als:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->als:I

    .line 146
    iget-boolean v0, p1, Lcom/huawei/ims/DriverCallIms;->isVoice:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isVoice:Z

    .line 147
    iget-boolean v0, p1, Lcom/huawei/ims/DriverCallIms;->isVoicePrivacy:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 148
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->numberPresentation:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->numberPresentation:I

    .line 149
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 150
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    .line 152
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->peerVideoSupport:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->peerVideoSupport:I

    .line 155
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->radioTechFromRilImsCall:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->radioTechFromRilImsCall:I

    .line 157
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->redirectNumberToa:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberToa:I

    .line 158
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->redirectNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumber:Ljava/lang/String;

    .line 159
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->redirectNumberPresentation:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberPresentation:I

    .line 160
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;)V
    .locals 4
    .param p1, "dc"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;

    .line 58
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->radioTechFromRilImsCall:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumber:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberToa:I

    .line 52
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberPresentation:I

    .line 59
    if-eqz p1, :cond_4

    .line 60
    new-instance v2, Lcom/huawei/ims/CallDetails;

    iget-object v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    invoke-direct {v2, v3}, Lcom/huawei/ims/CallDetails;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;)V

    iput-object v2, p0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 61
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 62
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->state:I

    invoke-static {v2}, Lcom/huawei/ims/DriverCallIms;->stateFromCall(I)Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 63
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->index:I

    iput v2, p0, Lcom/huawei/ims/DriverCallIms;->index:I

    .line 64
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->toa:I

    iput v2, p0, Lcom/huawei/ims/DriverCallIms;->TOA:I

    .line 65
    iget-object v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->number:Ljava/lang/String;

    iget v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->toa:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 66
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->isMT:B

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    .line 67
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->isMpty:B

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    .line 68
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->als:B

    iput v2, p0, Lcom/huawei/ims/DriverCallIms;->als:I

    .line 69
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->isVoice:B

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/huawei/ims/DriverCallIms;->isVoice:Z

    .line 70
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->isVoicePrivacy:B

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 71
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->numberPresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->numberPresentation:I

    .line 73
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 74
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->namePresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    .line 76
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->peerVideoSupport:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->peerVideoSupport:I

    .line 79
    :cond_4
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;)V
    .locals 4
    .param p1, "dc"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;

    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->radioTechFromRilImsCall:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumber:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberToa:I

    .line 52
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberPresentation:I

    .line 82
    if-eqz p1, :cond_4

    .line 83
    new-instance v2, Lcom/huawei/ims/CallDetails;

    iget-object v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    invoke-direct {v2, v3}, Lcom/huawei/ims/CallDetails;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;)V

    iput-object v2, p0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 84
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 85
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->state:I

    invoke-static {v2}, Lcom/huawei/ims/DriverCallIms;->stateFromCall(I)Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 86
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->index:I

    iput v2, p0, Lcom/huawei/ims/DriverCallIms;->index:I

    .line 87
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->toa:I

    iput v2, p0, Lcom/huawei/ims/DriverCallIms;->TOA:I

    .line 88
    iget-object v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->number:Ljava/lang/String;

    iget v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->toa:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 89
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMT:B

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    .line 90
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMpty:B

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    .line 91
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->als:B

    iput v2, p0, Lcom/huawei/ims/DriverCallIms;->als:I

    .line 92
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoice:B

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/huawei/ims/DriverCallIms;->isVoice:Z

    .line 93
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoicePrivacy:B

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 94
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->numberPresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->numberPresentation:I

    .line 96
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 97
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->namePresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    .line 99
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->peerVideoSupport:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->peerVideoSupport:I

    .line 101
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->imsDomain:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->radioTechFromRilImsCall:I

    .line 103
    :cond_4
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;)V
    .locals 4
    .param p1, "dc"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;

    .line 107
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->radioTechFromRilImsCall:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumber:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberToa:I

    .line 52
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberPresentation:I

    .line 108
    if-eqz p1, :cond_4

    .line 109
    new-instance v2, Lcom/huawei/ims/CallDetails;

    iget-object v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    invoke-direct {v2, v3}, Lcom/huawei/ims/CallDetails;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;)V

    iput-object v2, p0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 110
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 111
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->state:I

    invoke-static {v2}, Lcom/huawei/ims/DriverCallIms;->stateFromCall(I)Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 112
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->index:I

    iput v2, p0, Lcom/huawei/ims/DriverCallIms;->index:I

    .line 113
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->toa:I

    iput v2, p0, Lcom/huawei/ims/DriverCallIms;->TOA:I

    .line 114
    iget-object v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->number:Ljava/lang/String;

    iget v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->toa:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 115
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMT:B

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    .line 116
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMpty:B

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    .line 117
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->als:B

    iput v2, p0, Lcom/huawei/ims/DriverCallIms;->als:I

    .line 118
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoice:B

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/huawei/ims/DriverCallIms;->isVoice:Z

    .line 119
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoicePrivacy:B

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 120
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->numberPresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->numberPresentation:I

    .line 122
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 123
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->namePresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    .line 125
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->peerVideoSupport:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->peerVideoSupport:I

    .line 127
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->imsDomain:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->radioTechFromRilImsCall:I

    .line 128
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberToa:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberToa:I

    .line 129
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumber:Ljava/lang/String;

    iget v1, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberToa:I

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumber:Ljava/lang/String;

    .line 130
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberPresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberPresentation:I

    .line 133
    :cond_4
    return-void
.end method

.method private isChanged(Lcom/huawei/ims/DriverCallIms;)Z
    .locals 3
    .param p1, "update"    # Lcom/huawei/ims/DriverCallIms;

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v1, v2, :cond_0

    .line 219
    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    iput-object v1, p0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 220
    const/4 v0, 0x1

    .line 222
    :cond_0
    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->index:I

    iget v2, p1, Lcom/huawei/ims/DriverCallIms;->index:I

    if-eq v1, v2, :cond_1

    .line 223
    iget v1, p1, Lcom/huawei/ims/DriverCallIms;->index:I

    iput v1, p0, Lcom/huawei/ims/DriverCallIms;->index:I

    .line 224
    const/4 v0, 0x1

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 229
    :cond_3
    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 230
    const/4 v0, 0x1

    .line 232
    :cond_4
    iget-boolean v1, p0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    iget-boolean v2, p1, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    if-eq v1, v2, :cond_5

    .line 233
    iget-boolean v1, p1, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    iput-boolean v1, p0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    .line 234
    const/4 v0, 0x1

    .line 236
    :cond_5
    iget-boolean v1, p0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    iget-boolean v2, p1, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    if-eq v1, v2, :cond_6

    .line 237
    iget-boolean v1, p1, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    iput-boolean v1, p0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    .line 238
    const/4 v0, 0x1

    .line 240
    :cond_6
    return v0
.end method

.method public static stateFromCall(I)Lcom/huawei/ims/DriverCallIms$State;
    .locals 3
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    .line 167
    packed-switch p0, :pswitch_data_0

    .line 183
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :pswitch_0
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 179
    :pswitch_1
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->WAITING:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 177
    :pswitch_2
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 175
    :pswitch_3
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 173
    :pswitch_4
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 171
    :pswitch_5
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 169
    :pswitch_6
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

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


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",toa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->TOA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-boolean v1, p0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    if-eqz v1, :cond_0

    const-string v1, "conf"

    goto :goto_0

    :cond_0
    const-string v1, "norm"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    if-eqz v1, :cond_1

    const-string v1, "mt"

    goto :goto_1

    :cond_1
    const-string v1, "mo"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->als:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-boolean v1, p0, Lcom/huawei/ims/DriverCallIms;->isVoice:Z

    if-eqz v1, :cond_2

    const-string v1, "voc"

    goto :goto_2

    :cond_2
    const-string v1, "nonvoc"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-boolean v1, p0, Lcom/huawei/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v1, :cond_3

    const-string v1, "evp"

    goto :goto_3

    :cond_3
    const-string v1, "noevp"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",peerVideoSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->peerVideoSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",radioTechFromRilImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->radioTechFromRilImsCall:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",,cli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Call Details ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",redirectNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumber:Ljava/lang/String;

    const/4 v2, 0x0

    .line 256
    invoke-static {v1, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",redirectNumberToa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberToa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",redirectNumberPresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->redirectNumberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    return-object v0
.end method

.method public update(Lcom/huawei/ims/DriverCallIms;)Z
    .locals 5
    .param p1, "update"    # Lcom/huawei/ims/DriverCallIms;

    .line 189
    if-nez p1, :cond_0

    .line 190
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/DriverCallIms;->isChanged(Lcom/huawei/ims/DriverCallIms;)Z

    move-result v0

    .line 193
    .local v0, "hasChanged":Z
    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    if-eqz v1, :cond_4

    .line 194
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    if-nez v1, :cond_1

    .line 195
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    iget-object v3, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v3, v3, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, v4, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v1, v1, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    if-eq v1, v2, :cond_2

    .line 200
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    iput v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v1, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    if-eq v1, v2, :cond_3

    .line 203
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iput v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    iput-object v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 210
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    invoke-virtual {v1, v2}, Lcom/huawei/ims/CallDetails;->update(Lcom/huawei/ims/CallDetails;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 211
    const/4 v0, 0x1

    .line 213
    :cond_5
    return v0
.end method
