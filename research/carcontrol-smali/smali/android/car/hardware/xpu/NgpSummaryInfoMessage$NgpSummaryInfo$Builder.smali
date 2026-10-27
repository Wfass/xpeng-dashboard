.class public final Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "NgpSummaryInfoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;",
        "Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1261
    invoke-static {}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$000()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$1;)V
    .locals 0

    .line 1254
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccMileageTotal()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1880
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1881
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$3500(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearDetourCount()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1562
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1563
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$1700(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearEtcCount()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1775
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1776
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$2900(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearIntersectionPassCount()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1527
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1528
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$1500(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearLaneChangeCount()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1492
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1493
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$1300(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearLccMileageTotal()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1915
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1916
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$3700(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearMainAndSideRoadsCount()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1705
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1706
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$2500(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearNarrowMileage()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1810
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1811
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$3100(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearNgpDisplayFlag()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1352
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1353
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$500(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearNgpMileage()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1387
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1388
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$700(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearNgpMileageRatio()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1422
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1423
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$900(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearNgpMileageTotal()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1950
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1951
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$3900(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearParkMileage()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1845
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1846
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$3300(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearRampCount()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1597
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1598
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$1900(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearRoundaboutCount()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1670
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1671
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$2300(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearTrajectoryDuration()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1457
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1458
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$1100(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearTrajectoryId()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1295
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1296
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$200(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearUTurnCount()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1635
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1636
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$2100(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public clearZeroTakeOverFlag()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1740
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1741
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$2700(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V

    return-object p0
.end method

.method public getAccMileageTotal()F
    .locals 1

    .line 1858
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getAccMileageTotal()F

    move-result v0

    return v0
.end method

.method public getDetourCount()I
    .locals 1

    .line 1540
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getDetourCount()I

    move-result v0

    return v0
.end method

.method public getEtcCount()I
    .locals 1

    .line 1753
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getEtcCount()I

    move-result v0

    return v0
.end method

.method public getIntersectionPassCount()I
    .locals 1

    .line 1505
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getIntersectionPassCount()I

    move-result v0

    return v0
.end method

.method public getLaneChangeCount()I
    .locals 1

    .line 1470
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getLaneChangeCount()I

    move-result v0

    return v0
.end method

.method public getLccMileageTotal()F
    .locals 1

    .line 1893
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getLccMileageTotal()F

    move-result v0

    return v0
.end method

.method public getMainAndSideRoadsCount()I
    .locals 1

    .line 1683
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getMainAndSideRoadsCount()I

    move-result v0

    return v0
.end method

.method public getNarrowMileage()F
    .locals 1

    .line 1788
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getNarrowMileage()F

    move-result v0

    return v0
.end method

.method public getNgpDisplayFlag()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;
    .locals 1

    .line 1330
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getNgpDisplayFlag()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;

    move-result-object v0

    return-object v0
.end method

.method public getNgpDisplayFlagValue()I
    .locals 1

    .line 1308
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getNgpDisplayFlagValue()I

    move-result v0

    return v0
.end method

.method public getNgpMileage()F
    .locals 1

    .line 1365
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getNgpMileage()F

    move-result v0

    return v0
.end method

.method public getNgpMileageRatio()F
    .locals 1

    .line 1400
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getNgpMileageRatio()F

    move-result v0

    return v0
.end method

.method public getNgpMileageTotal()F
    .locals 1

    .line 1928
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getNgpMileageTotal()F

    move-result v0

    return v0
.end method

.method public getParkMileage()F
    .locals 1

    .line 1823
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getParkMileage()F

    move-result v0

    return v0
.end method

.method public getRampCount()I
    .locals 1

    .line 1575
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getRampCount()I

    move-result v0

    return v0
.end method

.method public getRoundaboutCount()I
    .locals 1

    .line 1648
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getRoundaboutCount()I

    move-result v0

    return v0
.end method

.method public getTrajectoryDuration()F
    .locals 1

    .line 1435
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getTrajectoryDuration()F

    move-result v0

    return v0
.end method

.method public getTrajectoryId()I
    .locals 1

    .line 1273
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getTrajectoryId()I

    move-result v0

    return v0
.end method

.method public getUTurnCount()I
    .locals 1

    .line 1611
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getUTurnCount()I

    move-result v0

    return v0
.end method

.method public getZeroTakeOverFlag()Z
    .locals 1

    .line 1718
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getZeroTakeOverFlag()Z

    move-result v0

    return v0
.end method

.method public setAccMileageTotal(F)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1868
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1869
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$3400(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V

    return-object p0
.end method

.method public setDetourCount(I)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1550
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1551
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$1600(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V

    return-object p0
.end method

.method public setEtcCount(I)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1763
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1764
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$2800(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V

    return-object p0
.end method

.method public setIntersectionPassCount(I)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1515
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1516
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$1400(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V

    return-object p0
.end method

.method public setLaneChangeCount(I)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1480
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1481
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$1200(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V

    return-object p0
.end method

.method public setLccMileageTotal(F)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1903
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1904
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$3600(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V

    return-object p0
.end method

.method public setMainAndSideRoadsCount(I)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1693
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1694
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$2400(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V

    return-object p0
.end method

.method public setNarrowMileage(F)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1798
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1799
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$3000(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V

    return-object p0
.end method

.method public setNgpDisplayFlag(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1340
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1341
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$400(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;)V

    return-object p0
.end method

.method public setNgpDisplayFlagValue(I)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1318
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1319
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$300(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V

    return-object p0
.end method

.method public setNgpMileage(F)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1375
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1376
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$600(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V

    return-object p0
.end method

.method public setNgpMileageRatio(F)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1411
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$800(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V

    return-object p0
.end method

.method public setNgpMileageTotal(F)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1938
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1939
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$3800(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V

    return-object p0
.end method

.method public setParkMileage(F)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1833
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1834
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$3200(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V

    return-object p0
.end method

.method public setRampCount(I)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1585
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1586
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$1800(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V

    return-object p0
.end method

.method public setRoundaboutCount(I)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1658
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1659
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$2200(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V

    return-object p0
.end method

.method public setTrajectoryDuration(F)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1445
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1446
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$1000(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V

    return-object p0
.end method

.method public setTrajectoryId(I)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1283
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1284
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$100(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V

    return-object p0
.end method

.method public setUTurnCount(I)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1622
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1623
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$2000(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V

    return-object p0
.end method

.method public setZeroTakeOverFlag(Z)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1728
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->copyOnWrite()V

    .line 1729
    iget-object v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->access$2600(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;Z)V

    return-object p0
.end method
