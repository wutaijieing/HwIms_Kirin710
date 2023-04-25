.class public Lcom/huawei/ims/ImsCallModification$CallModify;
.super Ljava/lang/Object;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsCallModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallModify"
.end annotation


# static fields
.field public static final E_CANCELLED:I = 0x7

.field public static final E_SUCCESS:I = 0x0

.field public static final E_UNUSED:I = 0x10

.field public static final R_REMOTE:I = 0x0

.field public static final R_RTCP_TIMEOUT:I = 0x2

.field public static final R_RTP_AND_RTCP_TIMEOUT:I = 0x3

.field public static final R_RTP_TIMEOUT:I = 0x1


# instance fields
.field public call_index:I

.field public curr_call_details:Lcom/huawei/ims/CallDetails;

.field public dest_call_details:Lcom/huawei/ims/CallDetails;

.field public error:I

.field public modify_reason:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 693
    new-instance v0, Lcom/huawei/ims/CallDetails;

    invoke-direct {v0}, Lcom/huawei/ims/CallDetails;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/ImsCallModification$CallModify;-><init>(Lcom/huawei/ims/CallDetails;I)V

    .line 694
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/CallDetails;I)V
    .locals 1
    .param p1, "callDetails"    # Lcom/huawei/ims/CallDetails;
    .param p2, "callIndex"    # I

    .line 697
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, p2, v0}, Lcom/huawei/ims/ImsCallModification$CallModify;-><init>(Lcom/huawei/ims/CallDetails;Lcom/huawei/ims/CallDetails;II)V

    .line 698
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/CallDetails;Lcom/huawei/ims/CallDetails;I)V
    .locals 1
    .param p1, "currCallDetails"    # Lcom/huawei/ims/CallDetails;
    .param p2, "destCallDetails"    # Lcom/huawei/ims/CallDetails;
    .param p3, "callIndex"    # I

    .line 702
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/huawei/ims/ImsCallModification$CallModify;-><init>(Lcom/huawei/ims/CallDetails;Lcom/huawei/ims/CallDetails;II)V

    .line 703
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/CallDetails;Lcom/huawei/ims/CallDetails;II)V
    .locals 0
    .param p1, "currCallDetails"    # Lcom/huawei/ims/CallDetails;
    .param p2, "destCallDetails"    # Lcom/huawei/ims/CallDetails;
    .param p3, "callIndex"    # I
    .param p4, "err"    # I

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iput-object p1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->curr_call_details:Lcom/huawei/ims/CallDetails;

    .line 707
    iput-object p2, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    .line 708
    iput p3, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    .line 709
    iput p4, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    .line 710
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/CallDetails;Lcom/huawei/ims/CallDetails;III)V
    .locals 0
    .param p1, "currCallDetails"    # Lcom/huawei/ims/CallDetails;
    .param p2, "destCallDetails"    # Lcom/huawei/ims/CallDetails;
    .param p3, "callIndex"    # I
    .param p4, "err"    # I
    .param p5, "reason"    # I

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->curr_call_details:Lcom/huawei/ims/CallDetails;

    .line 714
    iput-object p2, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    .line 715
    iput p3, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    .line 716
    iput p4, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    .line 717
    iput p5, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    .line 718
    return-void
.end method


# virtual methods
.method public findError()Z
    .locals 2

    .line 725
    iget v0, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameModify(Lcom/huawei/ims/ImsCallModification$CallModify;)Z
    .locals 2
    .param p1, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 745
    iget v0, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    iget v1, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v0, v0, Lcom/huawei/ims/CallDetails;->call_type:I

    iget-object v1, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v0, v0, Lcom/huawei/ims/CallDetails;->call_domain:I

    iget-object v1, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_domain:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    iget v1, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public modifyByTimeOut()Z
    .locals 3

    .line 730
    iget v0, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public setCallDetails(Lcom/huawei/ims/CallDetails;)V
    .locals 1
    .param p1, "calldetails"    # Lcom/huawei/ims/CallDetails;

    .line 721
    new-instance v0, Lcom/huawei/ims/CallDetails;

    invoke-direct {v0, p1}, Lcom/huawei/ims/CallDetails;-><init>(Lcom/huawei/ims/CallDetails;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    .line 722
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->curr_call_details:Lcom/huawei/ims/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
