.class public final Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$LinkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Link;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$LinkOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10183
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$17100()Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 10176
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRoadFacilities(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;"
        }
    .end annotation

    .line 10871
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10872
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$22800(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSlopeInfos(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;"
        }
    .end annotation

    .line 11013
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 11014
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$24100(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllV2Points(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;"
        }
    .end annotation

    .line 10515
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10516
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$20000(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10862
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10863
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$22700(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)V

    return-object p0
.end method

.method public addRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10844
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10845
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$22500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V

    return-object p0
.end method

.method public addRoadFacilities(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10853
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10854
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$22600(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)V

    return-object p0
.end method

.method public addRoadFacilities(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10835
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10836
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$22400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V

    return-object p0
.end method

.method public addSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 11004
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 11005
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$24000(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)V

    return-object p0
.end method

.method public addSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10986
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10987
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$23800(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V

    return-object p0
.end method

.method public addSlopeInfos(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10995
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10996
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$23900(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)V

    return-object p0
.end method

.method public addSlopeInfos(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10977
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10978
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$23700(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V

    return-object p0
.end method

.method public addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10506
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10507
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$19900(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10488
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10489
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$19700(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public addV2Points(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10497
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10498
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$19800(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public addV2Points(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10479
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10480
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$19600(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public clearAssistantAction()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 11052
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 11053
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$24500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearFormwayType()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10251
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10252
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$17700(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearHasMixFork()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10721
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10722
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$21500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearHasMultiOut()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10675
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10676
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$21100(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearHasParallelRoad()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10320
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10321
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$18300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearHasTrafficLight()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10698
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10699
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$21300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearHeightDiffData()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10434
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10435
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$19300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearId()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10205
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10206
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$17300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearIsAtService()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10744
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10745
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$21700(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearIsOverHead()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10297
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10298
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$18100(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearLaneNum()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10389
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10390
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$18900(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearLength()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10554
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10555
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$20400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearLinkDirection()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10343
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10344
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$18500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearLinkType()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10228
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10229
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$17500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearOwnership()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10592
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10593
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$20600(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearRoadClass()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10274
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10275
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$17900(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearRoadDirection()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10366
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10367
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$18700(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearRoadFacilities()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10879
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10880
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$22900(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearRoadFacilityCount()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10790
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10791
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$22100(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearRoadName()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10639
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10640
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$20800(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearRoadSlopInfo()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10932
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10933
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$23400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearSlopeInfos()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 11021
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 11022
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$24200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearSpeed()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10767
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10768
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$21900(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearV2Points()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10523
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10524
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$20100(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public getAssistantAction()I
    .locals 1

    .line 11038
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getAssistantAction()I

    move-result v0

    return v0
.end method

.method public getFormwayType()I
    .locals 1

    .line 10237
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getFormwayType()I

    move-result v0

    return v0
.end method

.method public getHasMixFork()Z
    .locals 1

    .line 10707
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getHasMixFork()Z

    move-result v0

    return v0
.end method

.method public getHasMultiOut()Z
    .locals 1

    .line 10661
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getHasMultiOut()Z

    move-result v0

    return v0
.end method

.method public getHasParallelRoad()Z
    .locals 1

    .line 10306
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getHasParallelRoad()Z

    move-result v0

    return v0
.end method

.method public getHasTrafficLight()Z
    .locals 1

    .line 10684
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getHasTrafficLight()Z

    move-result v0

    return v0
.end method

.method public getHeightDiffData()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
    .locals 1

    .line 10404
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getHeightDiffData()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 10191
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsAtService()Z
    .locals 1

    .line 10730
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getIsAtService()Z

    move-result v0

    return v0
.end method

.method public getIsOverHead()Z
    .locals 1

    .line 10283
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getIsOverHead()Z

    move-result v0

    return v0
.end method

.method public getLaneNum()I
    .locals 1

    .line 10375
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getLaneNum()I

    move-result v0

    return v0
.end method

.method public getLength()D
    .locals 2

    .line 10540
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getLength()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLinkDirection()I
    .locals 1

    .line 10329
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getLinkDirection()I

    move-result v0

    return v0
.end method

.method public getLinkType()I
    .locals 1

    .line 10214
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getLinkType()I

    move-result v0

    return v0
.end method

.method public getOwnership()I
    .locals 1

    .line 10568
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getOwnership()I

    move-result v0

    return v0
.end method

.method public getRoadClass()I
    .locals 1

    .line 10260
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getRoadClass()I

    move-result v0

    return v0
.end method

.method public getRoadDirection()I
    .locals 1

    .line 10352
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getRoadDirection()I

    move-result v0

    return v0
.end method

.method public getRoadFacilities(I)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
    .locals 1

    .line 10811
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getRoadFacilities(I)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    move-result-object p1

    return-object p1
.end method

.method public getRoadFacilitiesCount()I
    .locals 1

    .line 10806
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getRoadFacilitiesCount()I

    move-result v0

    return v0
.end method

.method public getRoadFacilitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;",
            ">;"
        }
    .end annotation

    .line 10799
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    .line 10800
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getRoadFacilitiesList()Ljava/util/List;

    move-result-object v0

    .line 10799
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRoadFacilityCount()I
    .locals 1

    .line 10776
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getRoadFacilityCount()I

    move-result v0

    return v0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 1

    .line 10605
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getRoadName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoadNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 10616
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getRoadNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRoadSlopInfo()Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
    .locals 1

    .line 10902
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getRoadSlopInfo()Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSlopeInfos(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
    .locals 1

    .line 10953
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getSlopeInfos(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    move-result-object p1

    return-object p1
.end method

.method public getSlopeInfosCount()I
    .locals 1

    .line 10948
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getSlopeInfosCount()I

    move-result v0

    return v0
.end method

.method public getSlopeInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;",
            ">;"
        }
    .end annotation

    .line 10941
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    .line 10942
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getSlopeInfosList()Ljava/util/List;

    move-result-object v0

    .line 10941
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpeed()I
    .locals 1

    .line 10753
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getSpeed()I

    move-result v0

    return v0
.end method

.method public getV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 10455
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object p1

    return-object p1
.end method

.method public getV2PointsCount()I
    .locals 1

    .line 10450
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getV2PointsCount()I

    move-result v0

    return v0
.end method

.method public getV2PointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;"
        }
    .end annotation

    .line 10443
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    .line 10444
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getV2PointsList()Ljava/util/List;

    move-result-object v0

    .line 10443
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasHeightDiffData()Z
    .locals 1

    .line 10398
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasHeightDiffData()Z

    move-result v0

    return v0
.end method

.method public hasRoadSlopInfo()Z
    .locals 1

    .line 10896
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasRoadSlopInfo()Z

    move-result v0

    return v0
.end method

.method public mergeHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10427
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10428
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$19200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V

    return-object p0
.end method

.method public mergeRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10925
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10926
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$23300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)V

    return-object p0
.end method

.method public removeRoadFacilities(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10887
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10888
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$23000(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V

    return-object p0
.end method

.method public removeSlopeInfos(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 11029
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 11030
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$24300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V

    return-object p0
.end method

.method public removeV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10531
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10532
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$20200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V

    return-object p0
.end method

.method public setAssistantAction(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 11044
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 11045
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$24400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V

    return-object p0
.end method

.method public setFormwayType(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10243
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10244
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$17600(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V

    return-object p0
.end method

.method public setHasMixFork(Z)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10713
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10714
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$21400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Z)V

    return-object p0
.end method

.method public setHasMultiOut(Z)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10667
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10668
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$21000(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Z)V

    return-object p0
.end method

.method public setHasParallelRoad(Z)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10312
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10313
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$18200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Z)V

    return-object p0
.end method

.method public setHasTrafficLight(Z)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10690
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10691
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$21200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Z)V

    return-object p0
.end method

.method public setHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10419
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10420
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$19100(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;)V

    return-object p0
.end method

.method public setHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10410
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10411
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$19000(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V

    return-object p0
.end method

.method public setId(J)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10197
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10198
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$17200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;J)V

    return-object p0
.end method

.method public setIsAtService(Z)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10736
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10737
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$21600(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Z)V

    return-object p0
.end method

.method public setIsOverHead(Z)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10289
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10290
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$18000(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Z)V

    return-object p0
.end method

.method public setLaneNum(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10381
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10382
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$18800(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V

    return-object p0
.end method

.method public setLength(D)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10546
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10547
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$20300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;D)V

    return-object p0
.end method

.method public setLinkDirection(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10335
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10336
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$18400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V

    return-object p0
.end method

.method public setLinkType(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10220
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10221
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$17400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V

    return-object p0
.end method

.method public setOwnership(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10579
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10580
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$20500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V

    return-object p0
.end method

.method public setRoadClass(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10266
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10267
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$17800(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V

    return-object p0
.end method

.method public setRoadDirection(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10358
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10359
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$18600(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V

    return-object p0
.end method

.method public setRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10827
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10828
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$22300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)V

    return-object p0
.end method

.method public setRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10818
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10819
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$22200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V

    return-object p0
.end method

.method public setRoadFacilityCount(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10782
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10783
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$22000(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V

    return-object p0
.end method

.method public setRoadName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10627
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10628
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$20700(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRoadNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10652
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10653
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$20900(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10917
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10918
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$23200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;)V

    return-object p0
.end method

.method public setRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10908
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10909
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$23100(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)V

    return-object p0
.end method

.method public setSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10969
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10970
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$23600(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)V

    return-object p0
.end method

.method public setSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10960
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10961
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$23500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V

    return-object p0
.end method

.method public setSpeed(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10759
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10760
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$21800(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V

    return-object p0
.end method

.method public setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10471
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10472
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$19500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10462
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->copyOnWrite()V

    .line 10463
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->access$19400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method
