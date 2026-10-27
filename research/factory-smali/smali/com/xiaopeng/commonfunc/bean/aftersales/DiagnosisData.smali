.class public Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;
.super Ljava/lang/Object;
.source "DiagnosisData.java"


# instance fields
.field private final mErrorCode:I

.field private final mErrorMsg:Ljava/lang/String;

.field private final mTriggerTime:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "triggerTime"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->mErrorCode:I

    .line 12
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->mTriggerTime:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->mErrorMsg:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->mVersion:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->mErrorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerTime()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->mTriggerTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnosisData{mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTriggerTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->mTriggerTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mErrorMsg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
