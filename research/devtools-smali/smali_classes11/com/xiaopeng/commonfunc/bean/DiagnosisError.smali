.class public Lcom/xiaopeng/commonfunc/bean/DiagnosisError;
.super Ljava/lang/Object;
.source "DiagnosisError.java"


# instance fields
.field private mErrorCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorcode"
    .end annotation
.end field

.field private mErrorMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errormsg"
    .end annotation
.end field

.field private mModule:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "module"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/DiagnosisError;->mErrorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/DiagnosisError;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getModule()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/DiagnosisError;->mModule:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/DiagnosisError;->mErrorCode:I

    .line 28
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/DiagnosisError;->mErrorMsg:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setModule(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/DiagnosisError;->mModule:I

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnosisError{mModule=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/DiagnosisError;->mModule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mErrorCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/DiagnosisError;->mErrorCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mErrorMsg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/DiagnosisError;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
