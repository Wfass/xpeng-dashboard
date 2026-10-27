.class public Lcom/xiaopeng/devtools/bean/http/CellularBean;
.super Ljava/lang/Object;
.source "CellularBean.java"


# instance fields
.field private mFlowUnit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flowUnit"
    .end annotation
.end field

.field private mIccid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iccid"
    .end annotation
.end field

.field private mPlateNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plateNo"
    .end annotation
.end field

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

.field private mRestFlow:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restFlow"
    .end annotation
.end field

.field private mSuccess:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field

.field private mTotalFlow:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalFlow"
    .end annotation
.end field

.field private mUpdateTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updateTime"
    .end annotation
.end field

.field private mVehicleType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vehicleType"
    .end annotation
.end field

.field private mVin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vin"
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
.method public getFlowUnit()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mFlowUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mIccid:Ljava/lang/String;

    return-object v0
.end method

.method public getIntCode()I
    .locals 1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mRespCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getPlateNo()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mPlateNo:Ljava/lang/String;

    return-object v0
.end method

.method public getRespCode()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mRespCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRespDesc()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mRespDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getRestFlow()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mRestFlow:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalFlow()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mTotalFlow:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleType()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mVehicleType:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mVin:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mSuccess:Z

    return v0
.end method

.method public setFlowUnit(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mFlowUnit:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setIccid(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mIccid:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setPlateNo(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mPlateNo:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setRespCode(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mRespCode:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setRespDesc(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mRespDesc:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setRestFlow(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mRestFlow:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mSuccess:Z

    .line 137
    return-void
.end method

.method public setTotalFlow(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mTotalFlow:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mUpdateTime:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setVehicleType(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mVehicleType:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mVin:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellularBean{mRespCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mRespCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mRespDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mRespDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPlateNo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mPlateNo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mVin=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mVin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mVehicleType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mVehicleType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mIccid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mIccid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTotalFlow=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mTotalFlow:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mRestFlow=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mRestFlow:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mFlowUnit=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mFlowUnit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mUpdateTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mUpdateTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/devtools/bean/http/CellularBean;->mSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
