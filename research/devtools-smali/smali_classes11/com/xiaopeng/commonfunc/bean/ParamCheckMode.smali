.class public Lcom/xiaopeng/commonfunc/bean/ParamCheckMode;
.super Ljava/lang/Object;
.source "ParamCheckMode.java"


# instance fields
.field private mDownloadPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_path"
    .end annotation
.end field

.field private mJobNum:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jobNum"
    .end annotation
.end field

.field private mVin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vin"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/ParamCheckMode;->mDownloadPath:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/ParamCheckMode;->mJobNum:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/ParamCheckMode;->mVin:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/ParamCheckMode;->mDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getJobNum()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/ParamCheckMode;->mJobNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/ParamCheckMode;->mVin:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/ParamCheckMode;->mDownloadPath:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setJobNum(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/ParamCheckMode;->mJobNum:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/ParamCheckMode;->mVin:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamCheckMode{mDownloadPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/ParamCheckMode;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mJobNum=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/ParamCheckMode;->mJobNum:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mVin=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/ParamCheckMode;->mVin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
