.class public Lcom/xiaopeng/commonfunc/bean/http/CellularServerBean;
.super Ljava/lang/Object;
.source "CellularServerBean.java"


# instance fields
.field private mRespCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "respCode"
    .end annotation
.end field

.field private mRespDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "respDesc"
    .end annotation
.end field

.field private mRespInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "respInfo"
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
.method public getIntCode()I
    .locals 1

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/CellularServerBean;->mRespCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 31
    :catch_0
    move-exception v0

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getRespCode()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/CellularServerBean;->mRespCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRespDesc()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/CellularServerBean;->mRespDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getRespInfo()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/CellularServerBean;->mRespInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setRespCode(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/CellularServerBean;->mRespCode:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setRespDesc(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/CellularServerBean;->mRespDesc:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setRespInfo(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/CellularServerBean;->mRespInfo:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellularServerBean{mRespCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/http/CellularServerBean;->mRespCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mRespDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/http/CellularServerBean;->mRespDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mRespInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/http/CellularServerBean;->mRespInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
