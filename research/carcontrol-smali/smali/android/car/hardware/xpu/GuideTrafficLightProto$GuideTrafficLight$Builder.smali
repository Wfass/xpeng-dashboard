.class public final Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "GuideTrafficLightProto.java"

# interfaces
.implements Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;",
        "Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1314
    invoke-static {}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$800()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/GuideTrafficLightProto$1;)V
    .locals 0

    .line 1307
    invoke-direct {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCduCrossManeuver()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1462
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1463
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$1700(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V

    return-object p0
.end method

.method public clearCduLightCountDown()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1497
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1498
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$1900(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V

    return-object p0
.end method

.method public clearCduTflStatus()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1554
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1555
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$2200(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V

    return-object p0
.end method

.method public clearFusionCrossManeuver()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1611
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1612
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$2500(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V

    return-object p0
.end method

.method public clearFusionLightCountDown()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1646
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1647
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$2700(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V

    return-object p0
.end method

.method public clearFusionTflStatus()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1703
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1704
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$3000(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V

    return-object p0
.end method

.method public clearPosition()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1405
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1406
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$1400(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V

    return-object p0
.end method

.method public clearTimeStamp()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1336
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1337
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$1000(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V

    return-object p0
.end method

.method public getCduCrossManeuver()Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;
    .locals 1

    .line 1440
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getCduCrossManeuver()Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    move-result-object v0

    return-object v0
.end method

.method public getCduCrossManeuverValue()I
    .locals 1

    .line 1418
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getCduCrossManeuverValue()I

    move-result v0

    return v0
.end method

.method public getCduLightCountDown()I
    .locals 1

    .line 1475
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getCduLightCountDown()I

    move-result v0

    return v0
.end method

.method public getCduTflStatus()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;
    .locals 1

    .line 1532
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getCduTflStatus()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    move-result-object v0

    return-object v0
.end method

.method public getCduTflStatusValue()I
    .locals 1

    .line 1510
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getCduTflStatusValue()I

    move-result v0

    return v0
.end method

.method public getFusionCrossManeuver()Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;
    .locals 1

    .line 1589
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getFusionCrossManeuver()Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    move-result-object v0

    return-object v0
.end method

.method public getFusionCrossManeuverValue()I
    .locals 1

    .line 1567
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getFusionCrossManeuverValue()I

    move-result v0

    return v0
.end method

.method public getFusionLightCountDown()I
    .locals 1

    .line 1624
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getFusionLightCountDown()I

    move-result v0

    return v0
.end method

.method public getFusionTflStatus()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;
    .locals 1

    .line 1681
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getFusionTflStatus()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    move-result-object v0

    return-object v0
.end method

.method public getFusionTflStatusValue()I
    .locals 1

    .line 1659
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getFusionTflStatusValue()I

    move-result v0

    return v0
.end method

.method public getPosition()Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
    .locals 1

    .line 1359
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getPosition()Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1322
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPosition()Z
    .locals 1

    .line 1349
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->hasPosition()Z

    move-result v0

    return v0
.end method

.method public mergePosition(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1394
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1395
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$1300(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)V

    return-object p0
.end method

.method public setCduCrossManeuver(Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1450
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1451
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$1600(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;)V

    return-object p0
.end method

.method public setCduCrossManeuverValue(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1428
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1429
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$1500(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;I)V

    return-object p0
.end method

.method public setCduLightCountDown(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1485
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1486
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$1800(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;I)V

    return-object p0
.end method

.method public setCduTflStatus(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1543
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$2100(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;)V

    return-object p0
.end method

.method public setCduTflStatusValue(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1520
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1521
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$2000(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;I)V

    return-object p0
.end method

.method public setFusionCrossManeuver(Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1599
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1600
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$2400(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;)V

    return-object p0
.end method

.method public setFusionCrossManeuverValue(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1577
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1578
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$2300(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;I)V

    return-object p0
.end method

.method public setFusionLightCountDown(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1634
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1635
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$2600(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;I)V

    return-object p0
.end method

.method public setFusionTflStatus(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1691
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1692
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$2900(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;)V

    return-object p0
.end method

.method public setFusionTflStatusValue(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1669
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1670
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$2800(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;I)V

    return-object p0
.end method

.method public setPosition(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1383
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$1200(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;)V

    return-object p0
.end method

.method public setPosition(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1369
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1370
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$1100(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)V

    return-object p0
.end method

.method public setTimeStamp(J)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1328
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->copyOnWrite()V

    .line 1329
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->access$900(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;J)V

    return-object p0
.end method
