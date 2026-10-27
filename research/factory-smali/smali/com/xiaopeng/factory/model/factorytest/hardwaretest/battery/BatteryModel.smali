.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/battery/BatteryModel;
.super Ljava/lang/Object;
.source "BatteryModel.java"


# static fields
.field public static final CMD_BMS_CHARGE:I = 0x1

.field public static final CMD_BMS_DISCHARGE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableDischarge()V
    .locals 2

    .line 26
    invoke-static {}, Lcom/xiaopeng/factory/model/car/McuModel;->getInstance()Lcom/xiaopeng/factory/model/car/McuModel;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/car/McuModel;->sendFactoryMcuBmsMsgToMcu(I)V

    .line 27
    return-void
.end method

.method public stopDischarge()V
    .locals 2

    .line 22
    invoke-static {}, Lcom/xiaopeng/factory/model/car/McuModel;->getInstance()Lcom/xiaopeng/factory/model/car/McuModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/car/McuModel;->sendFactoryMcuBmsMsgToMcu(I)V

    .line 23
    return-void
.end method
