.class public final Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "BatteryEfficiencyInfo.java"

# interfaces
.implements Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetailOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;",
        "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;",
        ">;",
        "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetailOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1179
    invoke-static {}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$1600()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$1;)V
    .locals 0

    .line 1172
    invoke-direct {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAirConditionerEnergy()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1318
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1319
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$2400(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-object p0
.end method

.method public clearBmsEnergy()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1388
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1389
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$2800(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-object p0
.end method

.method public clearBulbEnergy()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1458
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1459
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$3200(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-object p0
.end method

.method public clearDriveEnergy()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1353
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1354
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$2600(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-object p0
.end method

.method public clearSeatHeatEnergy()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1424
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$3000(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-object p0
.end method

.method public clearTotalConsumeEnergy()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1213
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1214
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$1800(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-object p0
.end method

.method public clearTotalEnergy()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1283
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1284
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$2200(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-object p0
.end method

.method public clearTotalRecycleEnergy()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1248
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1249
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$2000(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-object p0
.end method

.method public getAirConditionerEnergy()F
    .locals 1

    .line 1296
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getAirConditionerEnergy()F

    move-result v0

    return v0
.end method

.method public getBmsEnergy()F
    .locals 1

    .line 1366
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getBmsEnergy()F

    move-result v0

    return v0
.end method

.method public getBulbEnergy()F
    .locals 1

    .line 1436
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getBulbEnergy()F

    move-result v0

    return v0
.end method

.method public getDriveEnergy()F
    .locals 1

    .line 1331
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getDriveEnergy()F

    move-result v0

    return v0
.end method

.method public getSeatHeatEnergy()F
    .locals 1

    .line 1401
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getSeatHeatEnergy()F

    move-result v0

    return v0
.end method

.method public getTotalConsumeEnergy()F
    .locals 1

    .line 1191
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getTotalConsumeEnergy()F

    move-result v0

    return v0
.end method

.method public getTotalEnergy()F
    .locals 1

    .line 1261
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getTotalEnergy()F

    move-result v0

    return v0
.end method

.method public getTotalRecycleEnergy()F
    .locals 1

    .line 1226
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getTotalRecycleEnergy()F

    move-result v0

    return v0
.end method

.method public setAirConditionerEnergy(F)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1306
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1307
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$2300(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V

    return-object p0
.end method

.method public setBmsEnergy(F)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1376
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1377
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$2700(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V

    return-object p0
.end method

.method public setBulbEnergy(F)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1446
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1447
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$3100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V

    return-object p0
.end method

.method public setDriveEnergy(F)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1341
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1342
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$2500(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V

    return-object p0
.end method

.method public setSeatHeatEnergy(F)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1411
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1412
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$2900(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V

    return-object p0
.end method

.method public setTotalConsumeEnergy(F)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1201
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1202
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$1700(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V

    return-object p0
.end method

.method public setTotalEnergy(F)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1271
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1272
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$2100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V

    return-object p0
.end method

.method public setTotalRecycleEnergy(F)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1236
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->copyOnWrite()V

    .line 1237
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->access$1900(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V

    return-object p0
.end method
