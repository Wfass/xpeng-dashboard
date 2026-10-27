.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacilityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacilityOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5409
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$8100()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 5402
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSpeedLimits(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;"
        }
    .end annotation

    .line 5524
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5525
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$9000(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllTimeRanges(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;"
        }
    .end annotation

    .line 5682
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5683
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$10400(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addSpeedLimits(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5515
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5516
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$8900(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;I)V

    return-object p0
.end method

.method public addTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5673
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5674
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$10300(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;)V

    return-object p0
.end method

.method public addTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5655
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5656
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$10100(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;)V

    return-object p0
.end method

.method public addTimeRanges(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5664
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5665
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$10200(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;)V

    return-object p0
.end method

.method public addTimeRanges(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5646
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5647
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$10000(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;)V

    return-object p0
.end method

.method public clearDistToEnd()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5555
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5556
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$9300(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V

    return-object p0
.end method

.method public clearLaneNum()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5601
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5602
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$9700(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V

    return-object p0
.end method

.method public clearLat()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5477
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5478
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$8700(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V

    return-object p0
.end method

.method public clearLon()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5454
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5455
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$8500(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V

    return-object p0
.end method

.method public clearSpeedLimits()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5532
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5533
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$9100(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V

    return-object p0
.end method

.method public clearTimeRanges()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5690
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5691
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$10500(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V

    return-object p0
.end method

.method public clearType()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5431
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5432
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$8300(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V

    return-object p0
.end method

.method public clearValidLane()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5578
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5579
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$9500(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V

    return-object p0
.end method

.method public getDistToEnd()I
    .locals 1

    .line 5541
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->getDistToEnd()I

    move-result v0

    return v0
.end method

.method public getLaneNum()I
    .locals 1

    .line 5587
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->getLaneNum()I

    move-result v0

    return v0
.end method

.method public getLat()F
    .locals 1

    .line 5463
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->getLat()F

    move-result v0

    return v0
.end method

.method public getLon()F
    .locals 1

    .line 5440
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->getLon()F

    move-result v0

    return v0
.end method

.method public getSpeedLimits(I)I
    .locals 1

    .line 5500
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->getSpeedLimits(I)I

    move-result p1

    return p1
.end method

.method public getSpeedLimitsCount()I
    .locals 1

    .line 5494
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->getSpeedLimitsCount()I

    move-result v0

    return v0
.end method

.method public getSpeedLimitsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5487
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    .line 5488
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->getSpeedLimitsList()Ljava/util/List;

    move-result-object v0

    .line 5487
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeRanges(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
    .locals 1

    .line 5622
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->getTimeRanges(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    move-result-object p1

    return-object p1
.end method

.method public getTimeRangesCount()I
    .locals 1

    .line 5617
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->getTimeRangesCount()I

    move-result v0

    return v0
.end method

.method public getTimeRangesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;",
            ">;"
        }
    .end annotation

    .line 5610
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    .line 5611
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->getTimeRangesList()Ljava/util/List;

    move-result-object v0

    .line 5610
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 5417
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->getType()I

    move-result v0

    return v0
.end method

.method public getValidLane()I
    .locals 1

    .line 5564
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->getValidLane()I

    move-result v0

    return v0
.end method

.method public removeTimeRanges(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5698
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5699
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$10600(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;I)V

    return-object p0
.end method

.method public setDistToEnd(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5547
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5548
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$9200(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;I)V

    return-object p0
.end method

.method public setLaneNum(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5593
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5594
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$9600(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;I)V

    return-object p0
.end method

.method public setLat(F)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5469
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5470
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$8600(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;F)V

    return-object p0
.end method

.method public setLon(F)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5446
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5447
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$8400(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;F)V

    return-object p0
.end method

.method public setSpeedLimits(II)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5507
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5508
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$8800(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;II)V

    return-object p0
.end method

.method public setTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5638
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5639
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$9900(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;)V

    return-object p0
.end method

.method public setTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5629
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5630
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$9800(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;)V

    return-object p0
.end method

.method public setType(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5423
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5424
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$8200(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;I)V

    return-object p0
.end method

.method public setValidLane(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;
    .locals 1

    .line 5570
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->copyOnWrite()V

    .line 5571
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->access$9400(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;I)V

    return-object p0
.end method
