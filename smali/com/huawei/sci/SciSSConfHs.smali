.class public Lcom/huawei/sci/SciSSConfHs;
.super Ljava/lang/Object;
.source "SciSSConfHs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;,
        Lcom/huawei/sci/SciSSConfHs$CallDiversionActionType;,
        Lcom/huawei/sci/SciSSConfHs$OIRDefaultBehaviorType;,
        Lcom/huawei/sci/SciSSConfHs$ParamCfgType;,
        Lcom/huawei/sci/SciSSConfHs$GbaType;,
        Lcom/huawei/sci/SciSSConfHs$CallBarringCondition;,
        Lcom/huawei/sci/SciSSConfHs$CallForwardReason;
    }
.end annotation


# static fields
.field public static final CHR_UT_ERROR_MOUDLE_NULL:I = 0x0

.field public static final CHR_UT_ERROR_MOUDLE_UT:I = 0x1

.field public static final CHR_UT_ERROR_OP_TYPE_GET:I = 0x0

.field public static final CHR_UT_ERROR_OP_TYPE_PUT:I = 0x1

.field public static final CHR_UT_ERROR_PHASE_RECV_BSF_RETURN_200:I = 0x6

.field public static final CHR_UT_ERROR_PHASE_RECV_BSF_RETURN_401:I = 0x4

.field public static final CHR_UT_ERROR_PHASE_RECV_NAF_401_BEFORE_GBA:I = 0x2

.field public static final CHR_UT_ERROR_PHASE_RECV_NAF_RETURN_200_AFTER_GBA:I = 0xa

.field public static final CHR_UT_ERROR_PHASE_RECV_NAF_RETURN_401_AFTER_GBA:I = 0x8

.field public static final CHR_UT_ERROR_PHASE_SEND_BSF_GET_WITHOUT_AUTH:I = 0x3

.field public static final CHR_UT_ERROR_PHASE_SEND_BSF_GET_WITH_AUTH:I = 0x5

.field public static final CHR_UT_ERROR_PHASE_SEND_NAF_WITHOUT_AUTH_AFTER_GBA:I = 0x7

.field public static final CHR_UT_ERROR_PHASE_SEND_NAF_WITHOUT_AUTH_BEFORE_GBA:I = 0x1

.field public static final CHR_UT_ERROR_PHASE_SEND_NAF_WITH_AUTH_AFTER_GBA:I = 0x9

.field public static final CHR_UT_ERROR_PHASE_UNKNOWN:I = 0x0

.field public static final CHR_UT_ERROR_REASON_304_NOT_MDFY:I = 0x19

.field public static final CHR_UT_ERROR_REASON_400_BAD_REQ:I = 0x15

.field public static final CHR_UT_ERROR_REASON_403_FORBIDDEN:I = 0x16

.field public static final CHR_UT_ERROR_REASON_404_NOT_FOUND:I = 0x1a

.field public static final CHR_UT_ERROR_REASON_409_CONFLICT:I = 0x1b

.field public static final CHR_UT_ERROR_REASON_412_PRECOND_FAIL:I = 0x17

.field public static final CHR_UT_ERROR_REASON_503_SRV_UNAVAIL:I = 0x18

.field public static final CHR_UT_ERROR_REASON_6XX_SERV_ERR:I = 0x1c

.field public static final CHR_UT_ERROR_REASON_ADD_CHILD_SERVICE_NODE:I = 0x1e

.field public static final CHR_UT_ERROR_REASON_AUTH_FAILED:I = 0xf

.field public static final CHR_UT_ERROR_REASON_AUTH_TRY_TIMES_OVER:I = 0x20

.field public static final CHR_UT_ERROR_REASON_BSF_AUTH_RESULT_SYN_SQN:I = 0x10

.field public static final CHR_UT_ERROR_REASON_BSF_DNS_REQUEST:I = 0x5

.field public static final CHR_UT_ERROR_REASON_BSF_DNS_RESPONSE:I = 0x6

.field public static final CHR_UT_ERROR_REASON_BSF_HTTP_OPEN_FAIL:I = 0x1d

.field public static final CHR_UT_ERROR_REASON_BSF_TCP_LINK_CONN:I = 0x8

.field public static final CHR_UT_ERROR_REASON_BSF_TCP_LINK_OPEN:I = 0x7

.field public static final CHR_UT_ERROR_REASON_CONN_TIMEOUT:I = 0xa

.field public static final CHR_UT_ERROR_REASON_HEADER_ANALYSIS_FAIL:I = 0x14

.field public static final CHR_UT_ERROR_REASON_IN_REQING:I = 0xe

.field public static final CHR_UT_ERROR_REASON_MAKE_XML_BODY_FAIL:I = 0x1f

.field public static final CHR_UT_ERROR_REASON_NAF_DNS_REQUEST:I = 0x2

.field public static final CHR_UT_ERROR_REASON_NAF_DNS_RESPONSE:I = 0x3

.field public static final CHR_UT_ERROR_REASON_NAF_TCP_LINK_BUILD:I = 0x4

.field public static final CHR_UT_ERROR_REASON_NORMAL:I = 0x0

.field public static final CHR_UT_ERROR_REASON_OTHER_ERROR_CODE:I = 0x9

.field public static final CHR_UT_ERROR_REASON_SEND_FAIL:I = 0xc

.field public static final CHR_UT_ERROR_REASON_SERV_DISCED:I = 0xb

.field public static final CHR_UT_ERROR_REASON_SOCKET_ERR:I = 0x1

.field public static final CHR_UT_ERROR_REASON_UNAUTHOR_GBA:I = 0x11

.field public static final CHR_UT_ERROR_REASON_UNAUTHOR_GBA_UICC:I = 0x12

.field public static final CHR_UT_ERROR_REASON_WAIT_RSP_TIMEOUT:I = 0xd

.field public static final CHR_UT_ERROR_REASON_XML_ANALYSIS_FAIL:I = 0x13

.field public static final CHR_UT_ERROR_TYPE_ALL:I = 0x0

.field public static final CHR_UT_ERROR_TYPE_BAIC:I = 0xf

.field public static final CHR_UT_ERROR_TYPE_BAICr:I = 0x13

.field public static final CHR_UT_ERROR_TYPE_BAOC:I = 0x10

.field public static final CHR_UT_ERROR_TYPE_BAOIC:I = 0x11

.field public static final CHR_UT_ERROR_TYPE_BAOICxH:I = 0x12

.field public static final CHR_UT_ERROR_TYPE_CB_ALL:I = 0x15

.field public static final CHR_UT_ERROR_TYPE_CDIV:I = 0x5

.field public static final CHR_UT_ERROR_TYPE_CDIV_ALL:I = 0x16

.field public static final CHR_UT_ERROR_TYPE_CDIV_ALL_COND:I = 0x17

.field public static final CHR_UT_ERROR_TYPE_CFB:I = 0x9

.field public static final CHR_UT_ERROR_TYPE_CFNL:I = 0x8

.field public static final CHR_UT_ERROR_TYPE_CFNR:I = 0xa

.field public static final CHR_UT_ERROR_TYPE_CFNRc:I = 0xb

.field public static final CHR_UT_ERROR_TYPE_CFT:I = 0xc

.field public static final CHR_UT_ERROR_TYPE_CFU:I = 0x7

.field public static final CHR_UT_ERROR_TYPE_CW:I = 0x14

.field public static final CHR_UT_ERROR_TYPE_ICB:I = 0xd

.field public static final CHR_UT_ERROR_TYPE_NRT:I = 0x6

.field public static final CHR_UT_ERROR_TYPE_OCB:I = 0xe

.field public static final CHR_UT_ERROR_TYPE_OIP:I = 0x1

.field public static final CHR_UT_ERROR_TYPE_OIR:I = 0x3

.field public static final CHR_UT_ERROR_TYPE_TIP:I = 0x2

.field public static final CHR_UT_ERROR_TYPE_TIR:I = 0x4

.field private static final GET_SSTYPE_FAILED:I = -0x1

.field public static final HOST_IP_MAX_COUNT:I = 0x5

.field private static final MAX_TIME_NUMBER:I = 0x2

.field private static final RET_MEDIA_AUDIO:I = 0x1

.field private static final RET_MEDIA_NONE:I = 0x0

.field private static final RET_MEDIA_VIDEO:I = 0x2

.field private static chrUtCallBack:Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;

.field private static isInitLibPath:Z

.field private static isInitSystem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/sci/SciSSConfHs;->isInitSystem:Z

    .line 22
    sput-boolean v0, Lcom/huawei/sci/SciSSConfHs;->isInitLibPath:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 3

    const-class v0, Lcom/huawei/sci/SciSSConfHs;

    monitor-enter v0

    .line 226
    :try_start_0
    const-string v1, "SciSSConfHs"

    const-string v2, "Start to stop service."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->destroy()I

    .line 228
    invoke-static {}, Lcom/huawei/sci/SciSys;->destory()V

    .line 229
    const/4 v1, 0x0

    sput-boolean v1, Lcom/huawei/sci/SciSSConfHs;->isInitLibPath:Z

    .line 230
    sput-boolean v1, Lcom/huawei/sci/SciSSConfHs;->isInitSystem:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit v0

    return-void

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getCFActionTypeString(I)Ljava/lang/String;
    .locals 2
    .param p0, "iCFActionType"    # I

    .line 1313
    const/4 v0, 0x0

    .line 1315
    .local v0, "strCFActionType":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1330
    :pswitch_0
    const/4 v1, 0x0

    return-object v1

    .line 1327
    :pswitch_1
    const-string v0, "erasure"

    .line 1328
    goto :goto_0

    .line 1324
    :pswitch_2
    const-string v0, "registration"

    .line 1325
    goto :goto_0

    .line 1321
    :pswitch_3
    const-string v0, "active"

    .line 1322
    goto :goto_0

    .line 1318
    :pswitch_4
    const-string v0, "deactive"

    .line 1319
    nop

    .line 1333
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getCallBarringEnable(I)Ljava/lang/Boolean;
    .locals 2
    .param p0, "callBarringCondition"    # I

    .line 1207
    packed-switch p0, :pswitch_data_0

    .line 1230
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1226
    :pswitch_0
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOCr:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 1227
    .local v0, "ssType":I
    goto :goto_0

    .line 1213
    .end local v0    # "ssType":I
    :pswitch_1
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAICr:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 1214
    .restart local v0    # "ssType":I
    goto :goto_0

    .line 1222
    .end local v0    # "ssType":I
    :pswitch_2
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOICxH:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 1223
    .restart local v0    # "ssType":I
    goto :goto_0

    .line 1219
    .end local v0    # "ssType":I
    :pswitch_3
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 1220
    .restart local v0    # "ssType":I
    goto :goto_0

    .line 1216
    .end local v0    # "ssType":I
    :pswitch_4
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 1217
    .restart local v0    # "ssType":I
    goto :goto_0

    .line 1210
    .end local v0    # "ssType":I
    :pswitch_5
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 1211
    .restart local v0    # "ssType":I
    nop

    .line 1233
    :goto_0
    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->getSSConfEnabled(I)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCallDiversionEnable(I)Ljava/lang/Boolean;
    .locals 3
    .param p0, "callForwardReason"    # I

    .line 650
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->getSsTypeFromCallForwardReason(I)I

    move-result v0

    .line 652
    .local v0, "getSsTypeResult":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 654
    move v1, v0

    .line 656
    .local v1, "ssType":I
    nop

    .line 659
    invoke-static {v1}, Lcom/huawei/sci/SciSSConf;->getSSConfEnabled(I)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 656
    .end local v1    # "ssType":I
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getCallDiversionNoReplyTimer()Ljava/lang/String;
    .locals 2

    .line 941
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_NRT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallForwardTargetNumber(I)Ljava/lang/String;
    .locals 6
    .param p0, "callForwardReason"    # I

    .line 671
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->getSsTypeFromCallForwardReason(I)I

    move-result v0

    .line 673
    .local v0, "getSsTypeResult":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 675
    move v1, v0

    .line 677
    .local v1, "ssType":I
    nop

    .line 680
    sget-object v2, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_FORWARD_TO_TARGET:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v2

    invoke-static {v1, v2}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(II)Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, "targetNumber":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 687
    const-string v3, "(?i)(sip|tel):(\\+?[0123456789abc*#]+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 688
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 689
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 691
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 696
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "m":Ljava/util/regex/Matcher;
    :cond_0
    return-object v2

    .line 677
    .end local v1    # "ssType":I
    .end local v2    # "targetNumber":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCallForwardTime()[Ljava/util/Date;
    .locals 10

    .line 746
    const/4 v0, 0x0

    .line 748
    .local v0, "dateArray":[Ljava/util/Date;
    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFU:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_TIME:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v2

    invoke-static {v1, v2}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(II)Ljava/lang/String;

    move-result-object v1

    .line 752
    .local v1, "timeQuantum":Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 754
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "strArray":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    .line 757
    const-string v3, "SciSSConfHs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The time quantum is error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return-object v4

    .line 761
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 762
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    new-array v0, v5, [Ljava/util/Date;

    .line 764
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 768
    :try_start_0
    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 769
    .local v6, "date":Ljava/util/Date;
    aput-object v6, v0, v5
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    .end local v6    # "date":Ljava/util/Date;
    nop

    .line 764
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 771
    :catch_0
    move-exception v6

    .line 773
    .local v6, "e":Ljava/text/ParseException;
    const-string v7, "SciSSConfHs"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parse time failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-object v4

    .line 779
    .end local v2    # "strArray":[Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "i":I
    .end local v6    # "e":Ljava/text/ParseException;
    :cond_1
    return-object v0
.end method

.method public static getCallWaitingEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1375
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CW:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->getSSConfEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaType(I)I
    .locals 3
    .param p0, "ssType"    # I

    .line 1396
    const-string v0, ""

    .line 1398
    .local v0, "mediaType":Ljava/lang/String;
    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFU:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNRc:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOICxH:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAICr:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOCr:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 1414
    return v2

    .line 1417
    :cond_0
    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_MEDIATYPE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v1

    invoke-static {p0, v1}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(II)Ljava/lang/String;

    move-result-object v0

    .line 1420
    if-nez v0, :cond_1

    .line 1422
    return v2

    .line 1424
    :cond_1
    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1426
    const/4 v1, 0x1

    return v1

    .line 1428
    :cond_2
    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1430
    const/4 v1, 0x2

    return v1

    .line 1433
    :cond_3
    const-string v1, "MEDIA_TYPE is "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    return v2
.end method

.method private static getMediaTypeString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mediaType"    # I

    .line 1343
    const/4 v0, 0x0

    .line 1345
    .local v0, "type":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1354
    const/4 v1, 0x0

    return-object v1

    .line 1351
    :pswitch_0
    const-string v0, "video"

    .line 1352
    goto :goto_0

    .line 1348
    :pswitch_1
    const-string v0, "audio"

    .line 1349
    nop

    .line 1357
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getOIRDefaulBehaviorType(I)Ljava/lang/String;
    .locals 1
    .param p0, "defaultBehaviorType"    # I

    .line 1084
    const/4 v0, 0x0

    .line 1086
    .local v0, "defaultBehaviorValue":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1095
    const-string v0, "presentation-not-restricted"

    goto :goto_0

    .line 1092
    :pswitch_0
    const-string v0, "presentation-restricted"

    .line 1093
    goto :goto_0

    .line 1089
    :pswitch_1
    const-string v0, "presentation-not-restricted"

    .line 1090
    nop

    .line 1098
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getOIRDefaultBehavior()I
    .locals 4

    .line 1041
    const/4 v0, 0x0

    .line 1042
    .local v0, "ssType":I
    const/4 v1, 0x0

    .line 1043
    .local v1, "defaultBehaviorValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1045
    .local v2, "OIREnable":Ljava/lang/String;
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 1047
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v3

    invoke-static {v0, v3}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(II)Ljava/lang/String;

    move-result-object v2

    .line 1049
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v3

    invoke-static {v0, v3}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(II)Ljava/lang/String;

    move-result-object v1

    .line 1051
    if-nez v2, :cond_0

    .line 1053
    const/4 v3, 0x3

    return v3

    .line 1056
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1058
    const-string v3, "presentation-not-restricted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1060
    const/4 v3, 0x1

    return v3

    .line 1064
    :cond_1
    const/4 v3, 0x2

    return v3

    .line 1069
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public static getOriginatingIdentityPresentationEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 979
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->getSSConfEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getOriginatingIdentityRestrictionEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1035
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->getSSConfEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static getSsTypeFromCallForwardReason(I)I
    .locals 1
    .param p0, "callForwardReason"    # I

    .line 703
    packed-switch p0, :pswitch_data_0

    .line 733
    const/4 v0, -0x1

    return v0

    .line 728
    :pswitch_0
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 729
    .local v0, "ssType":I
    goto :goto_0

    .line 725
    .end local v0    # "ssType":I
    :pswitch_1
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 726
    .restart local v0    # "ssType":I
    goto :goto_0

    .line 721
    .end local v0    # "ssType":I
    :pswitch_2
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFU:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 722
    .restart local v0    # "ssType":I
    goto :goto_0

    .line 715
    .end local v0    # "ssType":I
    :pswitch_3
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNRc:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 716
    .restart local v0    # "ssType":I
    goto :goto_0

    .line 712
    .end local v0    # "ssType":I
    :pswitch_4
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 713
    .restart local v0    # "ssType":I
    goto :goto_0

    .line 706
    .end local v0    # "ssType":I
    :pswitch_5
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 707
    .restart local v0    # "ssType":I
    goto :goto_0

    .line 709
    .end local v0    # "ssType":I
    :pswitch_6
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 710
    .restart local v0    # "ssType":I
    goto :goto_0

    .line 718
    .end local v0    # "ssType":I
    :pswitch_7
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFU:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    .line 719
    .restart local v0    # "ssType":I
    nop

    .line 736
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static getTerminatingIdentityPresentationEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1007
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->getSSConfEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getTerminatingIdentityRestrictionEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1167
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->getSSConfEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Z)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "isWriteLog"    # Z

    const-class v0, Lcom/huawei/sci/SciSSConfHs;

    monitor-enter v0

    .line 168
    const-wide/16 v1, -0x3599

    .line 170
    .local v1, "dwCompMask":J
    :try_start_0
    sget-boolean v3, Lcom/huawei/sci/SciSSConfHs;->isInitSystem:Z

    if-nez v3, :cond_3

    .line 172
    new-instance v3, Lcom/huawei/sci/SciLogCfg;

    invoke-direct {v3}, Lcom/huawei/sci/SciLogCfg;-><init>()V

    .line 173
    .local v3, "logCfg":Lcom/huawei/sci/SciLogCfg;
    const-wide/16 v4, 0x14

    iput-wide v4, v3, Lcom/huawei/sci/SciLogCfg;->fileCount:J

    .line 174
    const-wide/32 v4, 0x7d000

    iput-wide v4, v3, Lcom/huawei/sci/SciLogCfg;->fileSize:J

    .line 175
    const-string v4, ""

    iput-object v4, v3, Lcom/huawei/sci/SciLogCfg;->fileName:Ljava/lang/String;

    .line 176
    const-string v4, ""

    iput-object v4, v3, Lcom/huawei/sci/SciLogCfg;->filePath:Ljava/lang/String;

    .line 177
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/huawei/sci/SciLogCfg;->closeCache:Z

    .line 179
    const-string v5, "SciSSConfHs"

    const-string v6, "Start init ut service."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v5, "SciSSConfHs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWriteLog "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz p1, :cond_0

    .line 184
    const-string v5, "SciSSConfHs"

    const-string v6, "init: Write log."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v6, "arm64-v8a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 188
    sget-boolean v5, Lcom/huawei/sci/SciSSConfHs;->isInitLibPath:Z

    if-nez v5, :cond_1

    .line 190
    const-string v5, "/system/app/HwIms/lib/arm"

    invoke-static {v5}, Lcom/huawei/sci/SciSSConfHs;->setLibPath(Ljava/lang/String;)I

    .line 196
    :cond_1
    const-string v5, "SciSSConfHs"

    const-string v6, "Start init sdk."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v5, "1.0"

    invoke-static {p0, v5, v3, v1, v2}, Lcom/huawei/sci/SciSys;->init(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/sci/SciLogCfg;J)I

    .line 204
    invoke-static {}, Lcom/huawei/sci/SciDefaultTls;->load()I

    .line 206
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->init()I

    move-result v5

    if-eqz v5, :cond_2

    .line 208
    const-string v5, "SciSSConfHs"

    const-string v6, "Init ut failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit v0

    return v4

    .line 212
    :cond_2
    :try_start_1
    const-string v5, "/system/etc/security/cacerts"

    invoke-static {v5}, Lcom/huawei/sci/SciSSConfHs;->setTrustCaPath(Ljava/lang/String;)I

    .line 214
    sput-boolean v4, Lcom/huawei/sci/SciSSConfHs;->isInitSystem:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .end local v3    # "logCfg":Lcom/huawei/sci/SciLogCfg;
    :cond_3
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 167
    .end local v1    # "dwCompMask":J
    .end local p0    # "ctx":Landroid/content/Context;
    .end local p1    # "isWriteLog":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isSupportNodeSelector(Z)I
    .locals 1
    .param p0, "isSupport"    # Z

    .line 416
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setSupportNodeSelector(Z)I

    move-result v0

    return v0
.end method

.method public static queryAll()I
    .locals 1

    .line 629
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryCallDiversion()I
    .locals 1

    .line 638
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryCallWaiting()I
    .locals 1

    .line 1366
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CW:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryIncomingCallBarring()I
    .locals 1

    .line 1186
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ICB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryOriginatingIdentityPresentation()I
    .locals 1

    .line 970
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryOriginatingIdentityRestriction()I
    .locals 1

    .line 1026
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryOutgoingCallBarring()I
    .locals 1

    .line 1195
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OCB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryTerminatingIdentityPresentation()I
    .locals 1

    .line 998
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryTerminatingIdentityRestriction()I
    .locals 1

    .line 1158
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static reset(I)I
    .locals 2
    .param p0, "iLevel"    # I

    .line 1459
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->EN_CAAS_SSCONF_RESET_LEVEL_BASE:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_3

    sget-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->EN_CAAS_SSCONF_RESET_LEVEL_INVALID:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 1465
    :cond_0
    sget-boolean v0, Lcom/huawei/sci/SciSSConfHs;->isInitSystem:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1467
    return v1

    .line 1470
    :cond_1
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->reset(I)V

    .line 1471
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->EN_CAAS_SSCONF_RESET_LEVEL_ALL:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_2

    .line 1473
    const-string v0, "/system/etc/security/cacerts"

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->setTrustCaPath(Ljava/lang/String;)I

    .line 1476
    :cond_2
    return v1

    .line 1462
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static reset()V
    .locals 1

    .line 1454
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->EN_CAAS_SSCONF_RESET_LEVEL_BASE:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 1455
    return-void
.end method

.method public static setAuthUserName(Ljava/lang/String;)I
    .locals 1
    .param p0, "authUserName"    # Ljava/lang/String;

    .line 580
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const/4 v0, 0x1

    return v0

    .line 585
    :cond_0
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuthInfo;->setImpi(Ljava/lang/String;)V

    .line 587
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setAuthUserName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setBsfAddr(Ljava/lang/String;IZ)I
    .locals 1
    .param p0, "srvAddr"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "useHttps"    # Z

    .line 490
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/huawei/sci/SciSSConf;->setBsfAddr(Ljava/lang/String;IZ)I

    move-result v0

    return v0

    .line 492
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static setCallBarring(IZ)I
    .locals 1
    .param p0, "callBarringCondition"    # I
    .param p1, "enabled"    # Z

    .line 1245
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/huawei/sci/SciSSConfHs;->setCallBarring(IZI)I

    move-result v0

    return v0
.end method

.method public static setCallBarring(IZI)I
    .locals 7
    .param p0, "callBarringCondition"    # I
    .param p1, "enabled"    # Z
    .param p2, "mediaType"    # I

    .line 1250
    const/4 v0, 0x0

    .line 1251
    .local v0, "cbMediaType":Ljava/lang/String;
    const-string v1, "true"

    .line 1253
    .local v1, "activeValue":Ljava/lang/String;
    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    .line 1276
    return v2

    .line 1272
    :pswitch_0
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOCr:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v3

    .line 1273
    .local v3, "ssType":I
    goto :goto_0

    .line 1259
    .end local v3    # "ssType":I
    :pswitch_1
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAICr:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v3

    .line 1260
    .restart local v3    # "ssType":I
    goto :goto_0

    .line 1268
    .end local v3    # "ssType":I
    :pswitch_2
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOICxH:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v3

    .line 1269
    .restart local v3    # "ssType":I
    goto :goto_0

    .line 1265
    .end local v3    # "ssType":I
    :pswitch_3
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v3

    .line 1266
    .restart local v3    # "ssType":I
    goto :goto_0

    .line 1262
    .end local v3    # "ssType":I
    :pswitch_4
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v3

    .line 1263
    .restart local v3    # "ssType":I
    goto :goto_0

    .line 1256
    .end local v3    # "ssType":I
    :pswitch_5
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v3

    .line 1257
    .restart local v3    # "ssType":I
    nop

    .line 1280
    :goto_0
    invoke-static {p2}, Lcom/huawei/sci/SciSSConfHs;->getMediaTypeString(I)Ljava/lang/String;

    move-result-object v4

    .line 1282
    .local v4, "getMediaTypeResult":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1284
    move-object v0, v4

    .line 1289
    if-nez p1, :cond_0

    .line 1291
    const-string v1, "false"

    .line 1294
    :cond_0
    sget-object v5, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v5}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v5

    sget-object v6, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v6}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v6

    invoke-static {v3, v5, v6, v1}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 1298
    sget-object v5, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v5}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v5

    sget-object v6, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_MEDIATYPE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v6}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v6

    invoke-static {v3, v5, v6, v0}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 1302
    return v2

    .line 1304
    :cond_1
    sget-object v2, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v2

    invoke-static {v3, v2}, Lcom/huawei/sci/SciSSConf;->startConf(II)I

    move-result v2

    return v2

    .line 1307
    :cond_2
    return v2

    .line 1286
    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setCallDiversion(IZLjava/lang/String;I)I
    .locals 6
    .param p0, "callForwardReason"    # I
    .param p1, "enabled"    # Z
    .param p2, "callForwardTargetNumber"    # Ljava/lang/String;
    .param p3, "mediaType"    # I

    .line 792
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversion(IZLjava/lang/String;Ljava/util/Date;Ljava/util/Date;I)I

    move-result v0

    return v0
.end method

.method public static setCallDiversion(IZLjava/lang/String;Ljava/util/Date;Ljava/util/Date;I)I
    .locals 7
    .param p0, "callForwardReason"    # I
    .param p1, "enabled"    # Z
    .param p2, "callForwardTargetNumber"    # Ljava/lang/String;
    .param p3, "startTime"    # Ljava/util/Date;
    .param p4, "endTime"    # Ljava/util/Date;
    .param p5, "mediaType"    # I

    .line 800
    const/4 v6, -0x1

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversion(IZLjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v0

    return v0
.end method

.method public static setCallDiversion(IZLjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I
    .locals 8
    .param p0, "callForwardReason"    # I
    .param p1, "enabled"    # Z
    .param p2, "callForwardTargetNumber"    # Ljava/lang/String;
    .param p3, "startTime"    # Ljava/util/Date;
    .param p4, "endTime"    # Ljava/util/Date;
    .param p5, "mediaType"    # I
    .param p6, "noReplyTimer"    # I

    .line 817
    const/4 v0, 0x0

    .line 819
    .local v0, "iCFActionType":I
    if-eqz p1, :cond_0

    .line 821
    const/4 v0, 0x1

    .line 824
    :cond_0
    move v1, p0

    move v2, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNew(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v1

    return v1
.end method

.method public static setCallDiversionNew(IILjava/lang/String;II)I
    .locals 7
    .param p0, "callForwardReason"    # I
    .param p1, "iCFActionType"    # I
    .param p2, "callForwardTargetNumber"    # Ljava/lang/String;
    .param p3, "mediaType"    # I
    .param p4, "noReplyTimer"    # I

    .line 830
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNew(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v0

    return v0
.end method

.method public static setCallDiversionNew(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I
    .locals 14
    .param p0, "callForwardReason"    # I
    .param p1, "iCFActionType"    # I
    .param p2, "callForwardTargetNumber"    # Ljava/lang/String;
    .param p3, "startTime"    # Ljava/util/Date;
    .param p4, "endTime"    # Ljava/util/Date;
    .param p5, "mediaType"    # I
    .param p6, "noReplyTimer"    # I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 837
    const/4 v3, 0x0

    .line 839
    .local v3, "cdivMediaType":Ljava/lang/String;
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->getSsTypeFromCallForwardReason(I)I

    move-result v4

    .line 841
    .local v4, "getSsTypeResult":I
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v4, v5, :cond_a

    .line 843
    move v7, v4

    .line 845
    .local v7, "ssType":I
    nop

    .line 848
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->getCFActionTypeString(I)Ljava/lang/String;

    move-result-object v8

    .line 849
    .local v8, "strCFActionTypeString":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 851
    return v6

    .line 855
    :cond_0
    invoke-static/range {p5 .. p5}, Lcom/huawei/sci/SciSSConfHs;->getMediaTypeString(I)Ljava/lang/String;

    move-result-object v9

    .line 857
    .local v9, "getMediaTypeResult":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 859
    move-object v3, v9

    .line 864
    sget-object v10, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v10}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v10

    sget-object v11, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v11}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v11

    invoke-static {v7, v10, v11, v8}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v10

    if-nez v10, :cond_8

    .line 868
    if-eqz v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 872
    const-string v10, "(?i)\\+?[0123456789abc*#]+"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 873
    .local v10, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 874
    .local v11, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_1

    .line 876
    return v6

    .line 879
    :cond_1
    sget-object v12, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v12}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v12

    sget-object v13, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_FORWARD_TO_TARGET:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v13}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v13

    invoke-static {v7, v12, v13, v0}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_2

    .line 883
    return v6

    .line 887
    .end local v10    # "p":Ljava/util/regex/Pattern;
    .end local v11    # "m":Ljava/util/regex/Matcher;
    :cond_2
    sget-object v10, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFU:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v10}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v10

    if-ne v7, v10, :cond_4

    .line 889
    const/4 v10, 0x0

    .line 891
    .local v10, "timeQuantum":Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 894
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "HH:mm"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 895
    .local v11, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 898
    .end local v11    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_3
    sget-object v11, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v11}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v11

    sget-object v12, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_TIME:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v12}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v12

    invoke-static {v7, v11, v12, v10}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_4

    .line 902
    return v6

    .line 906
    .end local v10    # "timeQuantum":Ljava/lang/String;
    :cond_4
    sget-object v10, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v10}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v10

    sget-object v11, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_MEDIATYPE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v11}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v11

    invoke-static {v7, v10, v11, v3}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_5

    .line 911
    return v6

    .line 914
    :cond_5
    move/from16 v10, p6

    if-eq v5, v10, :cond_7

    .line 916
    sget-object v5, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v5}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v5

    if-eq v5, v7, :cond_6

    sget-object v5, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v5}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v5

    if-eq v5, v7, :cond_6

    sget-object v5, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v5}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 920
    :cond_6
    sget-object v5, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v5}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v5

    sget-object v11, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v11}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v11

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v5, v11, v12}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_7

    .line 924
    return v6

    .line 929
    :cond_7
    sget-object v5, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v5}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v5

    invoke-static {v7, v5}, Lcom/huawei/sci/SciSSConf;->startConf(II)I

    move-result v5

    return v5

    .line 932
    :cond_8
    move/from16 v10, p6

    return v6

    .line 861
    :cond_9
    move/from16 v10, p6

    return v6

    .line 845
    .end local v7    # "ssType":I
    .end local v8    # "strCFActionTypeString":Ljava/lang/String;
    .end local v9    # "getMediaTypeResult":Ljava/lang/String;
    :cond_a
    move/from16 v10, p6

    return v6
.end method

.method public static setCallDiversionNoReplyTimer(I)I
    .locals 4
    .param p0, "noReplyTimer"    # I

    .line 952
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_NRT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 957
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_NRT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/sci/SciSSConf;->startConf(II)I

    move-result v0

    return v0

    .line 961
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static setCallWaiting(Z)I
    .locals 1
    .param p0, "enabled"    # Z

    .line 1385
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CW:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0, p0}, Lcom/huawei/sci/SciSSConf;->enabledSSConf(IZ)I

    move-result v0

    return v0
.end method

.method public static setChrUtCallBack(Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;)V
    .locals 2
    .param p0, "callBack"    # Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;

    .line 322
    const-string v0, "SciSSConfHs"

    const-string v1, "setChrUtCallBack in func"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sput-object p0, Lcom/huawei/sci/SciSSConfHs;->chrUtCallBack:Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;

    .line 324
    return-void
.end method

.method public static setContentType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 1390
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->setContentType(Z)I

    move-result v0

    return v0
.end method

.method public static setExtensionalParam(IZLjava/lang/String;)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "bIsCfg"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .line 615
    invoke-static {p2}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-gez p0, :cond_2

    .line 617
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 620
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/huawei/sci/SciSSConf;->setExtensionalParam(IZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setHomeDomainName(Ljava/lang/String;)I
    .locals 1
    .param p0, "homeDomainName"    # Ljava/lang/String;

    .line 547
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    const/4 v0, 0x1

    return v0

    .line 552
    :cond_0
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setHomeDomainName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setHostIp([Ljava/lang/String;I)I
    .locals 3
    .param p0, "strHostIp"    # [Ljava/lang/String;
    .param p1, "iHostType"    # I

    .line 506
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-gt v0, v2, :cond_3

    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_NAF:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->ordinal()I

    move-result v0

    if-lt p1, v0, :cond_3

    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_BUTT:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->ordinal()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 513
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 515
    aget-object v2, p0, v0

    if-nez v2, :cond_1

    .line 517
    return v1

    .line 513
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    .end local v0    # "i":I
    :cond_2
    invoke-static {p0, p1}, Lcom/huawei/sci/SciSSConf;->setHostIp([Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 510
    :cond_3
    :goto_1
    return v1
.end method

.method public static declared-synchronized setLibPath(Ljava/lang/String;)I
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    const-class v0, Lcom/huawei/sci/SciSSConfHs;

    monitor-enter v0

    .line 383
    :try_start_0
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 385
    sput-boolean v2, Lcom/huawei/sci/SciSSConfHs;->isInitLibPath:Z

    .line 386
    const-string v1, "SciSSConfHs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLibPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {p0}, Lcom/huawei/sci/SciSys;->setLibPath(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 391
    :cond_0
    monitor-exit v0

    return v2

    .line 382
    .end local p0    # "path":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setLocalUserName(Ljava/lang/String;)I
    .locals 1
    .param p0, "localUserName"    # Ljava/lang/String;

    .line 531
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const/4 v0, 0x1

    return v0

    .line 536
    :cond_0
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setLocalUserName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setNafAddr(Ljava/lang/String;IZ)I
    .locals 1
    .param p0, "srvAddr"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "useHttps"    # Z

    .line 473
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/huawei/sci/SciSSConf;->setNafAddr(Ljava/lang/String;IZ)I

    move-result v0

    return v0

    .line 475
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static setOriginatingIdentityPresentation(Z)I
    .locals 1
    .param p0, "enabled"    # Z

    .line 989
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0, p0}, Lcom/huawei/sci/SciSSConf;->enabledSSConf(IZ)I

    move-result v0

    return v0
.end method

.method public static setOriginatingIdentityRestriction(Z)I
    .locals 2
    .param p0, "enabled"    # Z

    .line 1103
    const/4 v0, 0x2

    .line 1105
    .local v0, "defaultBehaviorType":I
    if-nez p0, :cond_0

    .line 1107
    const/4 v0, 0x1

    .line 1110
    :cond_0
    invoke-static {p0, v0}, Lcom/huawei/sci/SciSSConfHs;->setOriginatingIdentityRestriction(ZI)I

    move-result v1

    return v1
.end method

.method public static setOriginatingIdentityRestriction(ZI)I
    .locals 7
    .param p0, "enabled"    # Z
    .param p1, "defaultBehaviorType"    # I

    .line 1117
    const/4 v0, 0x0

    .line 1118
    .local v0, "opType":I
    const-string v1, "true"

    .line 1119
    .local v1, "activeValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1121
    .local v2, "defaultBehaviorValue":Ljava/lang/String;
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v3

    .line 1122
    .local v3, "ssType":I
    sget-object v4, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v4}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v0

    .line 1124
    if-nez p0, :cond_0

    .line 1126
    const-string v1, "false"

    .line 1129
    :cond_0
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->getOIRDefaulBehaviorType(I)Ljava/lang/String;

    move-result-object v2

    .line 1131
    sget-object v4, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v4}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v4

    invoke-static {v3, v0, v4, v1}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 1135
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1137
    sget-object v4, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v4}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v4

    invoke-static {v3, v0, v4, v2}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 1141
    const-string v4, "SciSSConfHs"

    const-string v6, "setOriginatingIdentityRestriction OIR_DEFALT_BEHAVIOR fail."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return v5

    .line 1145
    :cond_1
    invoke-static {v3, v0}, Lcom/huawei/sci/SciSSConf;->startConf(II)I

    move-result v4

    return v4

    .line 1147
    :cond_2
    return v5
.end method

.method public static setParamsCfg(ILjava/lang/String;)I
    .locals 2
    .param p0, "cfgParam"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 401
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "SciSSConfHs"

    const-string v1, "setParamsCfg : invalid value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x1

    return v0

    .line 406
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/sci/SciSSConf;->setParamsCfg(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setSupportGBAType(I)I
    .locals 1
    .param p0, "gbaType"    # I

    .line 461
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setSupportGBAType(I)I

    move-result v0

    return v0
.end method

.method public static setSupportTmpi(Z)I
    .locals 1
    .param p0, "isSupport"    # Z

    .line 436
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setSupportTmpi(Z)I

    move-result v0

    return v0
.end method

.method public static setSupportXcapNamespace(Z)I
    .locals 1
    .param p0, "isSupport"    # Z

    .line 426
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setSupportXcapNamespace(Z)I

    move-result v0

    return v0
.end method

.method public static setTerminatingIdentityPresentation(Z)I
    .locals 1
    .param p0, "enabled"    # Z

    .line 1017
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0, p0}, Lcom/huawei/sci/SciSSConf;->enabledSSConf(IZ)I

    move-result v0

    return v0
.end method

.method public static setTerminatingIdentityRestriction(Z)I
    .locals 1
    .param p0, "enabled"    # Z

    .line 1177
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->ordinal()I

    move-result v0

    invoke-static {v0, p0}, Lcom/huawei/sci/SciSSConf;->enabledSSConf(IZ)I

    move-result v0

    return v0
.end method

.method public static setTmpi(Ljava/lang/String;)I
    .locals 1
    .param p0, "tmpi"    # Ljava/lang/String;

    .line 446
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x1

    return v0

    .line 451
    :cond_0
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setTmpi(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setTrustCaPath(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 368
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setTrustCaPath(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 373
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static setX3gppIntendId(Ljava/lang/String;)I
    .locals 1
    .param p0, "intendIdStr"    # Ljava/lang/String;

    .line 597
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    const/4 v0, 0x1

    return v0

    .line 602
    :cond_0
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setX3gppIntendId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setXcapRootUri(Ljava/lang/String;)I
    .locals 1
    .param p0, "xcapRootUri"    # Ljava/lang/String;

    .line 564
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const/4 v0, 0x1

    return v0

    .line 569
    :cond_0
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setXcapRootUri(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static startChrUtErrReport(I)V
    .locals 8
    .param p0, "ConditionId"    # I

    .line 328
    const-string v0, "SciSSConfHs"

    const-string v1, "startChrUtErrReport in func"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "ServiceType":I
    const/4 v1, 0x0

    .line 332
    .local v1, "SendMessageType":I
    const/4 v2, 0x0

    .line 333
    .local v2, "FailPhaseReport":I
    const/4 v3, 0x0

    .line 334
    .local v3, "DefeatReason":I
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 336
    .local v4, "intData":[I
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->getChrUtServiceType()I

    move-result v0

    .line 337
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->getChrUtSendMessageType()I

    move-result v1

    .line 338
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->getChrUtFailPhaseReport()I

    move-result v2

    .line 339
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->getChrUtDefeatReason()I

    move-result v3

    .line 341
    const-string v5, "SciSSConfHs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startChrUtErrReport ConditionId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", ServiceType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", SendMessageType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", FailPhaseReport : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", DefeatReason : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v5, 0x0

    aput p0, v4, v5

    .line 344
    const/4 v5, 0x1

    aput v0, v4, v5

    .line 345
    const/4 v5, 0x2

    aput v1, v4, v5

    .line 346
    const/4 v5, 0x3

    aput v2, v4, v5

    .line 347
    const/4 v5, 0x4

    aput v3, v4, v5

    .line 349
    sget-object v5, Lcom/huawei/sci/SciSSConfHs;->chrUtCallBack:Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;

    if-eqz v5, :cond_0

    .line 351
    const-string v5, "SciSSConfHs"

    const-string v6, "startChrUtErrReport run call back func"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object v5, Lcom/huawei/sci/SciSSConfHs;->chrUtCallBack:Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;->chrUtCbGetErrReport([I[Ljava/lang/String;)V

    .line 354
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static strIsNull(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 1445
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method
