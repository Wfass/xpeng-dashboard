.class public final Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$PathOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Path;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$PathOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17021
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$34700()Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 17014
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCameras(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Camera;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;"
        }
    .end annotation

    .line 17318
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17319
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$37400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllForbiddenInfo12(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;"
        }
    .end annotation

    .line 17813
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17814
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$41800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllInnerTrafficIncidents(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;"
        }
    .end annotation

    .line 17693
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17694
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$40700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllLaneInfos(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;"
        }
    .end annotation

    .line 17950
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17951
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$42700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllManeuverInfos(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;"
        }
    .end annotation

    .line 18055
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 18056
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$43600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOuterTrafficIncidents(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;"
        }
    .end annotation

    .line 17596
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17597
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$39800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSegments(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Segment;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;"
        }
    .end annotation

    .line 17124
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17125
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$35600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllTrafficLights(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;"
        }
    .end annotation

    .line 17221
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17222
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$36500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllViaPointInfos(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;"
        }
    .end annotation

    .line 17415
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17416
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$38300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCameras(ILandroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17309
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17310
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$37300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)V

    return-object p0
.end method

.method public addCameras(ILandroid/car/hardware/xpu/XpuProtoMessage$Camera;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17291
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17292
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$37100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Camera;)V

    return-object p0
.end method

.method public addCameras(Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17300
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17301
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$37200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)V

    return-object p0
.end method

.method public addCameras(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17282
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17283
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$37000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$Camera;)V

    return-object p0
.end method

.method public addForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17804
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17805
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$41700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)V

    return-object p0
.end method

.method public addForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17786
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17787
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$41500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V

    return-object p0
.end method

.method public addForbiddenInfo12(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17795
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17796
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$41600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)V

    return-object p0
.end method

.method public addForbiddenInfo12(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17777
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17778
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$41400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V

    return-object p0
.end method

.method public addInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17684
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17685
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$40600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V

    return-object p0
.end method

.method public addInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17666
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17667
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$40400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public addInnerTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17675
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17676
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$40500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V

    return-object p0
.end method

.method public addInnerTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17657
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17658
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$40300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public addLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17937
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17938
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$42600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V

    return-object p0
.end method

.method public addLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17911
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17912
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$42400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public addLaneInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17924
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17925
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$42500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V

    return-object p0
.end method

.method public addLaneInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17898
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17899
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$42300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public addManeuverInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 18046
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 18047
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$43500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V

    return-object p0
.end method

.method public addManeuverInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 18028
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 18029
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$43300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-object p0
.end method

.method public addManeuverInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 18037
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 18038
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$43400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V

    return-object p0
.end method

.method public addManeuverInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 18019
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 18020
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$43200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-object p0
.end method

.method public addOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17587
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17588
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$39700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V

    return-object p0
.end method

.method public addOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17569
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17570
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$39500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public addOuterTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17578
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17579
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$39600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V

    return-object p0
.end method

.method public addOuterTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17560
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17561
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$39400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public addSegments(ILandroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17115
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17116
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$35500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)V

    return-object p0
.end method

.method public addSegments(ILandroid/car/hardware/xpu/XpuProtoMessage$Segment;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17097
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17098
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$35300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Segment;)V

    return-object p0
.end method

.method public addSegments(Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17106
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17107
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$35400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)V

    return-object p0
.end method

.method public addSegments(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17088
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17089
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$35200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V

    return-object p0
.end method

.method public addTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17212
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17213
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$36400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public addTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17194
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17195
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$36200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public addTrafficLights(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17203
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17204
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$36300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public addTrafficLights(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17185
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17186
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$36100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public addViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17406
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17407
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$38200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)V

    return-object p0
.end method

.method public addViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17388
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17389
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$38000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V

    return-object p0
.end method

.method public addViaPointInfos(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17397
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17398
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$38100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)V

    return-object p0
.end method

.method public addViaPointInfos(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17379
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17380
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$37900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V

    return-object p0
.end method

.method public clearCameras()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17326
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17327
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$37500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public clearDataVersion()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17043
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17044
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$34900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public clearForbiddenInfo12()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17821
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17822
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$41900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public clearForbiddenInfoCount11()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17732
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17733
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$41100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public clearInnerTrafficIncidentCount()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17515
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17516
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$39100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public clearInnerTrafficIncidents()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17701
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17702
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$40800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public clearLaneInfos()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17962
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17963
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$42800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public clearLength()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17454
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17455
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$38700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public clearManeuverInfos()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 18063
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 18064
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$43700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public clearOuterTrafficIncidentCount()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17492
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17493
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$38900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public clearOuterTrafficIncidents()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17604
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17605
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$39900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public clearSegments()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17132
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17133
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$35700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public clearTrafficLights()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17229
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17230
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$36600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public clearViaPointInfos()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17423
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17424
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$38400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public getCameras(I)Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
    .locals 1

    .line 17258
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getCameras(I)Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    move-result-object p1

    return-object p1
.end method

.method public getCamerasCount()I
    .locals 1

    .line 17253
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getCamerasCount()I

    move-result v0

    return v0
.end method

.method public getCamerasList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Camera;",
            ">;"
        }
    .end annotation

    .line 17246
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    .line 17247
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getCamerasList()Ljava/util/List;

    move-result-object v0

    .line 17246
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataVersion()J
    .locals 2

    .line 17029
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getDataVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public getForbiddenInfo12(I)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
    .locals 1

    .line 17753
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getForbiddenInfo12(I)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    move-result-object p1

    return-object p1
.end method

.method public getForbiddenInfo12Count()I
    .locals 1

    .line 17748
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getForbiddenInfo12Count()I

    move-result v0

    return v0
.end method

.method public getForbiddenInfo12List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;",
            ">;"
        }
    .end annotation

    .line 17741
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    .line 17742
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getForbiddenInfo12List()Ljava/util/List;

    move-result-object v0

    .line 17741
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForbiddenInfoCount11()I
    .locals 1

    .line 17718
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getForbiddenInfoCount11()I

    move-result v0

    return v0
.end method

.method public getInnerTrafficIncidentCount()I
    .locals 1

    .line 17501
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getInnerTrafficIncidentCount()I

    move-result v0

    return v0
.end method

.method public getInnerTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1

    .line 17633
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getInnerTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    move-result-object p1

    return-object p1
.end method

.method public getInnerTrafficIncidentsCount()I
    .locals 1

    .line 17628
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getInnerTrafficIncidentsCount()I

    move-result v0

    return v0
.end method

.method public getInnerTrafficIncidentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;",
            ">;"
        }
    .end annotation

    .line 17621
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    .line 17622
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getInnerTrafficIncidentsList()Ljava/util/List;

    move-result-object v0

    .line 17621
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLaneInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1

    .line 17862
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getLaneInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    move-result-object p1

    return-object p1
.end method

.method public getLaneInfosCount()I
    .locals 1

    .line 17853
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getLaneInfosCount()I

    move-result v0

    return v0
.end method

.method public getLaneInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
            ">;"
        }
    .end annotation

    .line 17842
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    .line 17843
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getLaneInfosList()Ljava/util/List;

    move-result-object v0

    .line 17842
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLength()D
    .locals 2

    .line 17440
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getLength()D

    move-result-wide v0

    return-wide v0
.end method

.method public getManeuverInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1

    .line 17995
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getManeuverInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    move-result-object p1

    return-object p1
.end method

.method public getManeuverInfosCount()I
    .locals 1

    .line 17990
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getManeuverInfosCount()I

    move-result v0

    return v0
.end method

.method public getManeuverInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;",
            ">;"
        }
    .end annotation

    .line 17983
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    .line 17984
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getManeuverInfosList()Ljava/util/List;

    move-result-object v0

    .line 17983
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOuterTrafficIncidentCount()I
    .locals 1

    .line 17468
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getOuterTrafficIncidentCount()I

    move-result v0

    return v0
.end method

.method public getOuterTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1

    .line 17536
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getOuterTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    move-result-object p1

    return-object p1
.end method

.method public getOuterTrafficIncidentsCount()I
    .locals 1

    .line 17531
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getOuterTrafficIncidentsCount()I

    move-result v0

    return v0
.end method

.method public getOuterTrafficIncidentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;",
            ">;"
        }
    .end annotation

    .line 17524
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    .line 17525
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getOuterTrafficIncidentsList()Ljava/util/List;

    move-result-object v0

    .line 17524
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSegments(I)Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
    .locals 1

    .line 17064
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getSegments(I)Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    move-result-object p1

    return-object p1
.end method

.method public getSegmentsCount()I
    .locals 1

    .line 17059
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getSegmentsCount()I

    move-result v0

    return v0
.end method

.method public getSegmentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Segment;",
            ">;"
        }
    .end annotation

    .line 17052
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    .line 17053
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getSegmentsList()Ljava/util/List;

    move-result-object v0

    .line 17052
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrafficLights(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 17161
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getTrafficLights(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object p1

    return-object p1
.end method

.method public getTrafficLightsCount()I
    .locals 1

    .line 17156
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getTrafficLightsCount()I

    move-result v0

    return v0
.end method

.method public getTrafficLightsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;"
        }
    .end annotation

    .line 17149
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    .line 17150
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getTrafficLightsList()Ljava/util/List;

    move-result-object v0

    .line 17149
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViaPointInfos(I)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
    .locals 1

    .line 17355
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getViaPointInfos(I)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    move-result-object p1

    return-object p1
.end method

.method public getViaPointInfosCount()I
    .locals 1

    .line 17350
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getViaPointInfosCount()I

    move-result v0

    return v0
.end method

.method public getViaPointInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;",
            ">;"
        }
    .end annotation

    .line 17343
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    .line 17344
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getViaPointInfosList()Ljava/util/List;

    move-result-object v0

    .line 17343
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeCameras(I)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17334
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17335
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$37600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V

    return-object p0
.end method

.method public removeForbiddenInfo12(I)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17829
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17830
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$42000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V

    return-object p0
.end method

.method public removeInnerTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17709
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17710
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$40900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V

    return-object p0
.end method

.method public removeLaneInfos(I)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17974
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17975
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$42900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V

    return-object p0
.end method

.method public removeManeuverInfos(I)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 18071
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 18072
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$43800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V

    return-object p0
.end method

.method public removeOuterTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17612
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17613
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$40000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V

    return-object p0
.end method

.method public removeSegments(I)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17140
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17141
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$35800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V

    return-object p0
.end method

.method public removeTrafficLights(I)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17237
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17238
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$36700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V

    return-object p0
.end method

.method public removeViaPointInfos(I)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17431
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17432
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$38500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V

    return-object p0
.end method

.method public setCameras(ILandroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17274
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17275
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$36900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)V

    return-object p0
.end method

.method public setCameras(ILandroid/car/hardware/xpu/XpuProtoMessage$Camera;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17265
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17266
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$36800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Camera;)V

    return-object p0
.end method

.method public setDataVersion(J)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17035
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17036
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$34800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;J)V

    return-object p0
.end method

.method public setForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17769
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17770
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$41300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)V

    return-object p0
.end method

.method public setForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17760
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17761
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$41200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V

    return-object p0
.end method

.method public setForbiddenInfoCount11(I)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17724
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17725
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$41000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V

    return-object p0
.end method

.method public setInnerTrafficIncidentCount(I)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17507
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17508
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$39000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V

    return-object p0
.end method

.method public setInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17649
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17650
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$40200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V

    return-object p0
.end method

.method public setInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17640
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17641
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$40100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public setLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17886
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17887
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$42200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V

    return-object p0
.end method

.method public setLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17873
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17874
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$42100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public setLength(D)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17446
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17447
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$38600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;D)V

    return-object p0
.end method

.method public setManeuverInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 18011
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 18012
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$43100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V

    return-object p0
.end method

.method public setManeuverInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 18002
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 18003
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$43000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-object p0
.end method

.method public setOuterTrafficIncidentCount(I)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17479
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17480
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$38800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V

    return-object p0
.end method

.method public setOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17552
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17553
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$39300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V

    return-object p0
.end method

.method public setOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17543
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17544
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$39200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public setSegments(ILandroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17080
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17081
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$35100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)V

    return-object p0
.end method

.method public setSegments(ILandroid/car/hardware/xpu/XpuProtoMessage$Segment;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17071
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17072
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$35000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Segment;)V

    return-object p0
.end method

.method public setTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17177
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17178
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$36000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public setTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17168
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17169
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$35900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public setViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17371
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17372
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$37800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)V

    return-object p0
.end method

.method public setViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17362
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->copyOnWrite()V

    .line 17363
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->access$37700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V

    return-object p0
.end method
