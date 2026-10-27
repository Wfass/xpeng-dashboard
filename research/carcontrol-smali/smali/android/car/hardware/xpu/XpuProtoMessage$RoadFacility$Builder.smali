.class public final Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacilityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacilityOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5670
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$8300()Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 5663
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSpeedLimits(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;"
        }
    .end annotation

    .line 5785
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5786
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$9200(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllTimeRanges(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;"
        }
    .end annotation

    .line 5943
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5944
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$10600(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addSpeedLimits(I)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5776
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5777
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$9100(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;I)V

    return-object p0
.end method

.method public addTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5934
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5935
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$10500(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)V

    return-object p0
.end method

.method public addTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5916
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5917
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$10300(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V

    return-object p0
.end method

.method public addTimeRanges(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5925
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5926
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$10400(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)V

    return-object p0
.end method

.method public addTimeRanges(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5907
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5908
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$10200(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V

    return-object p0
.end method

.method public clearDistToEnd()Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5816
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5817
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$9500(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V

    return-object p0
.end method

.method public clearLaneNum()Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5862
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5863
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$9900(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V

    return-object p0
.end method

.method public clearLat()Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5738
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5739
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$8900(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V

    return-object p0
.end method

.method public clearLon()Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5715
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5716
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$8700(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V

    return-object p0
.end method

.method public clearSpeedLimits()Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5793
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5794
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$9300(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V

    return-object p0
.end method

.method public clearTimeRanges()Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5951
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5952
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$10700(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V

    return-object p0
.end method

.method public clearType()Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5692
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5693
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$8500(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V

    return-object p0
.end method

.method public clearValidLane()Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5839
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5840
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$9700(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V

    return-object p0
.end method

.method public getDistToEnd()I
    .locals 1

    .line 5802
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getDistToEnd()I

    move-result v0

    return v0
.end method

.method public getLaneNum()I
    .locals 1

    .line 5848
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getLaneNum()I

    move-result v0

    return v0
.end method

.method public getLat()F
    .locals 1

    .line 5724
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getLat()F

    move-result v0

    return v0
.end method

.method public getLon()F
    .locals 1

    .line 5701
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getLon()F

    move-result v0

    return v0
.end method

.method public getSpeedLimits(I)I
    .locals 1

    .line 5761
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getSpeedLimits(I)I

    move-result p1

    return p1
.end method

.method public getSpeedLimitsCount()I
    .locals 1

    .line 5755
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getSpeedLimitsCount()I

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

    .line 5748
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    .line 5749
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getSpeedLimitsList()Ljava/util/List;

    move-result-object v0

    .line 5748
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeRanges(I)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
    .locals 1

    .line 5883
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getTimeRanges(I)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    move-result-object p1

    return-object p1
.end method

.method public getTimeRangesCount()I
    .locals 1

    .line 5878
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getTimeRangesCount()I

    move-result v0

    return v0
.end method

.method public getTimeRangesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;",
            ">;"
        }
    .end annotation

    .line 5871
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    .line 5872
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getTimeRangesList()Ljava/util/List;

    move-result-object v0

    .line 5871
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 5678
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getType()I

    move-result v0

    return v0
.end method

.method public getValidLane()I
    .locals 1

    .line 5825
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getValidLane()I

    move-result v0

    return v0
.end method

.method public removeTimeRanges(I)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5959
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5960
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$10800(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;I)V

    return-object p0
.end method

.method public setDistToEnd(I)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5808
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5809
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$9400(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;I)V

    return-object p0
.end method

.method public setLaneNum(I)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5854
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5855
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$9800(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;I)V

    return-object p0
.end method

.method public setLat(F)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5730
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5731
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$8800(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;F)V

    return-object p0
.end method

.method public setLon(F)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5707
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5708
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$8600(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;F)V

    return-object p0
.end method

.method public setSpeedLimits(II)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5768
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5769
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$9000(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;II)V

    return-object p0
.end method

.method public setTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5899
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5900
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$10100(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)V

    return-object p0
.end method

.method public setTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5890
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5891
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$10000(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V

    return-object p0
.end method

.method public setType(I)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5684
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5685
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$8400(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;I)V

    return-object p0
.end method

.method public setValidLane(I)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5831
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->copyOnWrite()V

    .line 5832
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->access$9600(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;I)V

    return-object p0
.end method
