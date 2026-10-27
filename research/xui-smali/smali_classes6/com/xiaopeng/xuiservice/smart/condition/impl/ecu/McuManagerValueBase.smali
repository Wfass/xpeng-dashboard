.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerValueBase;
.super Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerValueBase;
.source "McuManagerValueBase.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FetchType:",
        "Ljava/lang/Object;",
        "PropertyValueType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerValueBase<",
        "TFetchType;TPropertyValueType;>;",
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "propertyId"    # I

    .line 14
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerValueBase;, "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerValueBase<TFetchType;TPropertyValueType;>;"
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerValueBase;-><init>(Ljava/lang/String;I)V

    .line 15
    return-void
.end method


# virtual methods
.method protected displayName()Ljava/lang/String;
    .locals 2

    .line 47
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerValueBase;, "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerValueBase<TFetchType;TPropertyValueType;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerValueBase;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<Mcu>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final fetch()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFetchType;"
        }
    .end annotation

    .line 19
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerValueBase;, "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerValueBase<TFetchType;TPropertyValueType;>;"
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_mcu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 20
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 21
    return-object v1

    .line 24
    :cond_0
    nop

    .line 26
    .local v1, "value":Ljava/lang/Object;, "TFetchType;"
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerValueBase;->fetch0(Landroid/car/hardware/mcu/CarMcuManager;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 29
    goto :goto_0

    .line 27
    :catch_0
    move-exception v2

    .line 28
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CarVcuManager fetch value error, propertyId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerValueBase;->propertyId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->ERROR(Ljava/lang/String;)V

    .line 30
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method protected abstract fetch0(Landroid/car/hardware/mcu/CarMcuManager;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/mcu/CarMcuManager;",
            ")TFetchType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected onStartWatch()V
    .locals 1

    .line 37
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerValueBase;, "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerValueBase<TFetchType;TPropertyValueType;>;"
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 38
    return-void
.end method

.method protected onStopWatch()V
    .locals 1

    .line 42
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerValueBase;, "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/McuManagerValueBase<TFetchType;TPropertyValueType;>;"
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 43
    return-void
.end method
