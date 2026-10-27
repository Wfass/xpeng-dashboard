.class public abstract Lcom/xiaopeng/aicabin/logic/carservice/BaseCarServiceLogic;
.super Lcom/xiaopeng/aicabin/logic/BaseSyncLogic;
.source "BaseCarServiceLogic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/car/CarManagerBase;",
        ">",
        "Lcom/xiaopeng/aicabin/logic/BaseSyncLogic;"
    }
.end annotation


# instance fields
.field public mCarManager:Landroid/car/CarManagerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaopeng/aicabin/logic/BaseSyncLogic;-><init>()V

    return-void
.end method


# virtual methods
.method public afterHandle()Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/xiaopeng/aicabin/logic/BaseSyncLogic;->afterHandle()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    return-object v0
.end method

.method public beforeGet()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final beforeHandle()Z
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/aicabin/CarClient;->getInstance()Landroid/car/Car;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/carservice/BaseCarServiceLogic;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/CarManagerBase;

    iput-object v2, p0, Lcom/xiaopeng/aicabin/logic/carservice/BaseCarServiceLogic;->mCarManager:Landroid/car/CarManagerBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v2, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mParams:Lcom/xiaopeng/aicabin/DataReq;

    const-string v3, "method"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/aicabin/DataReq;->getVal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnSupport method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/aicabin/logic/carservice/BaseCarServiceLogic;->setResultFailed(ILjava/lang/String;)V

    return v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/carservice/BaseCarServiceLogic;->beforeSet()Z

    move-result v0

    return v0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/carservice/BaseCarServiceLogic;->beforeGet()Z

    move-result v0

    return v0

    :catch_0
    move-exception v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarManager exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/aicabin/logic/carservice/BaseCarServiceLogic;->setResultFailed(ILjava/lang/String;)V

    return v0
.end method

.method public beforeSet()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract get()V
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public final handle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mParams:Lcom/xiaopeng/aicabin/DataReq;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataReq;->getVal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/carservice/BaseCarServiceLogic;->get()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/carservice/BaseCarServiceLogic;->set()V

    :goto_0
    return-void
.end method

.method public abstract set()V
.end method

.method public setResultFailed(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setSuccess(Z)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/aicabin/DataResp;->setCode(I)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/aicabin/DataResp;->setMessage(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    return-void
.end method

.method public setResultSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setSuccess(Z)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setCode(I)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setMessage(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    return-void
.end method

.method public setResultSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setSuccess(Z)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setCode(I)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setMessage(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/aicabin/DataResp;->putDefVal(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    return-void
.end method
