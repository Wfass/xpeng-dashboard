.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$LinkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$LinkOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10184
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$16900()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 10177
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCameras(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;"
        }
    .end annotation

    .line 11209
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11210
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$25200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllRoadFacilities(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;"
        }
    .end annotation

    .line 10872
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10873
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$22600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSlopeInfos(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;"
        }
    .end annotation

    .line 11014
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11015
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$23900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllV2Points(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;"
        }
    .end annotation

    .line 10516
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10517
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$19800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11196
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11197
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$25100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V

    return-object p0
.end method

.method public addCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11170
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11171
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$24900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-object p0
.end method

.method public addCameras(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11183
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11184
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$25000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V

    return-object p0
.end method

.method public addCameras(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11157
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11158
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$24800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-object p0
.end method

.method public addRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10863
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10864
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$22500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)V

    return-object p0
.end method

.method public addRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10845
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10846
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$22300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V

    return-object p0
.end method

.method public addRoadFacilities(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10854
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10855
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$22400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)V

    return-object p0
.end method

.method public addRoadFacilities(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10836
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10837
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$22200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V

    return-object p0
.end method

.method public addSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11005
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11006
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$23800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)V

    return-object p0
.end method

.method public addSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10987
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10988
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$23600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V

    return-object p0
.end method

.method public addSlopeInfos(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10996
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10997
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$23700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)V

    return-object p0
.end method

.method public addSlopeInfos(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10978
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10979
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$23500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V

    return-object p0
.end method

.method public addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10507
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10508
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$19700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10489
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10490
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$19500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public addV2Points(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10498
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10499
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$19600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public addV2Points(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10480
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10481
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$19400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public clearAssistantAction()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11053
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11054
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$24300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearCameras()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11221
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11222
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$25300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearFormwayType()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10252
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10253
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$17500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearHasMixFork()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10722
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10723
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$21300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearHasMultiOut()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10676
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10677
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$20900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearHasParallelRoad()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10321
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10322
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$18100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearHasTrafficLight()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10699
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10700
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$21100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearHeightDiffData()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10435
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10436
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$19100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearId()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10206
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10207
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$17100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearIsAtService()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10745
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10746
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$21500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearIsOverHead()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10298
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10299
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$17900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearLaneNum()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10390
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10391
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$18700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearLength()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10555
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10556
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$20200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearLinkDirection()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10344
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10345
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$18300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearLinkType()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10229
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10230
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$17300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearMainAction()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11088
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11089
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$24500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearOwnership()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10593
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10594
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$20400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearRoadClass()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10275
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10276
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$17700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearRoadDirection()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10368
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$18500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearRoadFacilities()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10880
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10881
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$22700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearRoadFacilityCount()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10791
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10792
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$21900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearRoadName()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10640
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10641
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$20600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearRoadSlopInfo()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10933
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10934
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$23200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearSlopeInfos()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11022
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11023
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$24000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearSpeed()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10768
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10769
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$21700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearV2Points()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10524
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10525
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$19900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public getAssistantAction()I
    .locals 1

    .line 11039
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getAssistantAction()I

    move-result v0

    return v0
.end method

.method public getCameras(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1

    .line 11121
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getCameras(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    move-result-object p1

    return-object p1
.end method

.method public getCamerasCount()I
    .locals 1

    .line 11112
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getCamerasCount()I

    move-result v0

    return v0
.end method

.method public getCamerasList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;",
            ">;"
        }
    .end annotation

    .line 11101
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    .line 11102
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getCamerasList()Ljava/util/List;

    move-result-object v0

    .line 11101
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFormwayType()I
    .locals 1

    .line 10238
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getFormwayType()I

    move-result v0

    return v0
.end method

.method public getHasMixFork()Z
    .locals 1

    .line 10708
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getHasMixFork()Z

    move-result v0

    return v0
.end method

.method public getHasMultiOut()Z
    .locals 1

    .line 10662
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getHasMultiOut()Z

    move-result v0

    return v0
.end method

.method public getHasParallelRoad()Z
    .locals 1

    .line 10307
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getHasParallelRoad()Z

    move-result v0

    return v0
.end method

.method public getHasTrafficLight()Z
    .locals 1

    .line 10685
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getHasTrafficLight()Z

    move-result v0

    return v0
.end method

.method public getHeightDiffData()Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;
    .locals 1

    .line 10405
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getHeightDiffData()Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 10192
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsAtService()Z
    .locals 1

    .line 10731
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getIsAtService()Z

    move-result v0

    return v0
.end method

.method public getIsOverHead()Z
    .locals 1

    .line 10284
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getIsOverHead()Z

    move-result v0

    return v0
.end method

.method public getLaneNum()I
    .locals 1

    .line 10376
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getLaneNum()I

    move-result v0

    return v0
.end method

.method public getLength()D
    .locals 2

    .line 10541
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getLength()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLinkDirection()I
    .locals 1

    .line 10330
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getLinkDirection()I

    move-result v0

    return v0
.end method

.method public getLinkType()I
    .locals 1

    .line 10215
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getLinkType()I

    move-result v0

    return v0
.end method

.method public getMainAction()I
    .locals 1

    .line 11066
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getMainAction()I

    move-result v0

    return v0
.end method

.method public getOwnership()I
    .locals 1

    .line 10569
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getOwnership()I

    move-result v0

    return v0
.end method

.method public getRoadClass()I
    .locals 1

    .line 10261
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getRoadClass()I

    move-result v0

    return v0
.end method

.method public getRoadDirection()I
    .locals 1

    .line 10353
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getRoadDirection()I

    move-result v0

    return v0
.end method

.method public getRoadFacilities(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;
    .locals 1

    .line 10812
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getRoadFacilities(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    move-result-object p1

    return-object p1
.end method

.method public getRoadFacilitiesCount()I
    .locals 1

    .line 10807
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getRoadFacilitiesCount()I

    move-result v0

    return v0
.end method

.method public getRoadFacilitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;",
            ">;"
        }
    .end annotation

    .line 10800
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    .line 10801
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getRoadFacilitiesList()Ljava/util/List;

    move-result-object v0

    .line 10800
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRoadFacilityCount()I
    .locals 1

    .line 10777
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getRoadFacilityCount()I

    move-result v0

    return v0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 1

    .line 10606
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getRoadName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoadNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 10617
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getRoadNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRoadSlopInfo()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
    .locals 1

    .line 10903
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getRoadSlopInfo()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSlopeInfos(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
    .locals 1

    .line 10954
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getSlopeInfos(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    move-result-object p1

    return-object p1
.end method

.method public getSlopeInfosCount()I
    .locals 1

    .line 10949
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getSlopeInfosCount()I

    move-result v0

    return v0
.end method

.method public getSlopeInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;",
            ">;"
        }
    .end annotation

    .line 10942
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    .line 10943
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getSlopeInfosList()Ljava/util/List;

    move-result-object v0

    .line 10942
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpeed()I
    .locals 1

    .line 10754
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getSpeed()I

    move-result v0

    return v0
.end method

.method public getV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 10456
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object p1

    return-object p1
.end method

.method public getV2PointsCount()I
    .locals 1

    .line 10451
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getV2PointsCount()I

    move-result v0

    return v0
.end method

.method public getV2PointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;"
        }
    .end annotation

    .line 10444
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    .line 10445
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getV2PointsList()Ljava/util/List;

    move-result-object v0

    .line 10444
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasHeightDiffData()Z
    .locals 1

    .line 10399
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasHeightDiffData()Z

    move-result v0

    return v0
.end method

.method public hasRoadSlopInfo()Z
    .locals 1

    .line 10897
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasRoadSlopInfo()Z

    move-result v0

    return v0
.end method

.method public mergeHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10428
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10429
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$19000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)V

    return-object p0
.end method

.method public mergeRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10926
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10927
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$23100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)V

    return-object p0
.end method

.method public removeCameras(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11233
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11234
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$25400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public removeRoadFacilities(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10888
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10889
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$22800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public removeSlopeInfos(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11030
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11031
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$24100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public removeV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10532
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10533
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$20000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public setAssistantAction(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11045
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11046
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$24200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public setCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11145
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11146
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$24700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V

    return-object p0
.end method

.method public setCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11132
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11133
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$24600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-object p0
.end method

.method public setFormwayType(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10244
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10245
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$17400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public setHasMixFork(Z)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10714
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10715
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$21200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Z)V

    return-object p0
.end method

.method public setHasMultiOut(Z)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10668
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10669
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$20800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Z)V

    return-object p0
.end method

.method public setHasParallelRoad(Z)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10313
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10314
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$18000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Z)V

    return-object p0
.end method

.method public setHasTrafficLight(Z)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10691
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10692
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$21000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Z)V

    return-object p0
.end method

.method public setHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10420
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10421
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$18900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;)V

    return-object p0
.end method

.method public setHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10411
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10412
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$18800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)V

    return-object p0
.end method

.method public setId(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10198
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10199
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$17000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;J)V

    return-object p0
.end method

.method public setIsAtService(Z)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10737
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10738
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$21400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Z)V

    return-object p0
.end method

.method public setIsOverHead(Z)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10290
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10291
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$17800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Z)V

    return-object p0
.end method

.method public setLaneNum(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10382
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10383
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$18600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public setLength(D)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10547
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10548
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$20100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;D)V

    return-object p0
.end method

.method public setLinkDirection(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10336
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10337
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$18200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public setLinkType(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10221
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10222
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$17200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public setMainAction(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 11076
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 11077
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$24400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public setOwnership(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10580
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10581
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$20300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public setRoadClass(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10267
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10268
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$17600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public setRoadDirection(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10359
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10360
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$18400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public setRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10828
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10829
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$22100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)V

    return-object p0
.end method

.method public setRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10819
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10820
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$22000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V

    return-object p0
.end method

.method public setRoadFacilityCount(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10783
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10784
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$21800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public setRoadName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10628
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10629
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$20500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRoadNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10653
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10654
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$20700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10918
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10919
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$23000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;)V

    return-object p0
.end method

.method public setRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10909
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10910
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$22900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)V

    return-object p0
.end method

.method public setSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10970
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10971
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$23400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)V

    return-object p0
.end method

.method public setSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10961
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10962
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$23300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V

    return-object p0
.end method

.method public setSpeed(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10760
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10761
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$21600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V

    return-object p0
.end method

.method public setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10472
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10473
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$19300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10463
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->copyOnWrite()V

    .line 10464
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->access$19200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method
