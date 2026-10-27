.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14266
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$20500()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 14259
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOffsetSegmentList(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;"
        }
    .end annotation

    .line 14858
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14859
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$23800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addOffsetSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14845
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14846
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$23700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V

    return-object p0
.end method

.method public addOffsetSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14819
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14820
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$23500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-object p0
.end method

.method public addOffsetSegmentList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14832
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14833
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$23600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V

    return-object p0
.end method

.method public addOffsetSegmentList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14806
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14807
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$23400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-object p0
.end method

.method public clearArriveTime()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14544
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14545
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$22100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearCurrentLocalPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15068
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15069
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$25000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearCurrentLocalRotation()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15137
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15138
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$25400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearCurrentLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14404
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14405
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$21300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearCurrentOffset()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14737
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14738
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$23100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearCurrentPointIndexInV2List()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14335
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14336
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$20900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearEgoInternalRoadState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14999
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15000
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$24600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearEndInternalPassedMileage()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15229
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15230
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$25900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearEndPointName()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14929
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14930
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$24200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearEndSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15194
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15195
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$25700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearManeuverDirection()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14658
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14659
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$22700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearManeuverDistance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14693
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14694
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$22900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearManeuverType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14601
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14602
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$22400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearOffsetSegmentList()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14870
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14871
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$23900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearPassedMileage()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14474
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14475
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$21700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearPathType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15286
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15287
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$26200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearPredictTimeDuration()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14509
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14510
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$21900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearRemainMileage()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14439
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14440
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$21500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public clearRouteId()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14300
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14301
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$20700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public getArriveTime()J
    .locals 2

    .line 14522
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getArriveTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentLocalPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
    .locals 1

    .line 15022
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getCurrentLocalPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLocalRotation()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
    .locals 1

    .line 15091
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getCurrentLocalRotation()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
    .locals 1

    .line 14358
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getCurrentLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentOffset()I
    .locals 1

    .line 14709
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getCurrentOffset()I

    move-result v0

    return v0
.end method

.method public getCurrentPointIndexInV2List()I
    .locals 1

    .line 14313
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getCurrentPointIndexInV2List()I

    move-result v0

    return v0
.end method

.method public getEgoInternalRoadState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;
    .locals 1

    .line 14977
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getEgoInternalRoadState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;

    move-result-object v0

    return-object v0
.end method

.method public getEgoInternalRoadStateValue()I
    .locals 1

    .line 14955
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getEgoInternalRoadStateValue()I

    move-result v0

    return v0
.end method

.method public getEndInternalPassedMileage()I
    .locals 1

    .line 15207
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getEndInternalPassedMileage()I

    move-result v0

    return v0
.end method

.method public getEndPointName()Ljava/lang/String;
    .locals 1

    .line 14895
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getEndPointName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 14906
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getEndPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEndSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;
    .locals 1

    .line 15172
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getEndSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    move-result-object v0

    return-object v0
.end method

.method public getEndSlotShapeValue()I
    .locals 1

    .line 15150
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getEndSlotShapeValue()I

    move-result v0

    return v0
.end method

.method public getManeuverDirection()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;
    .locals 1

    .line 14636
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getManeuverDirection()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    move-result-object v0

    return-object v0
.end method

.method public getManeuverDirectionValue()I
    .locals 1

    .line 14614
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getManeuverDirectionValue()I

    move-result v0

    return v0
.end method

.method public getManeuverDistance()I
    .locals 1

    .line 14671
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getManeuverDistance()I

    move-result v0

    return v0
.end method

.method public getManeuverType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;
    .locals 1

    .line 14579
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getManeuverType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;

    move-result-object v0

    return-object v0
.end method

.method public getManeuverTypeValue()I
    .locals 1

    .line 14557
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getManeuverTypeValue()I

    move-result v0

    return v0
.end method

.method public getOffsetSegmentList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1

    .line 14770
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getOffsetSegmentList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    move-result-object p1

    return-object p1
.end method

.method public getOffsetSegmentListCount()I
    .locals 1

    .line 14761
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getOffsetSegmentListCount()I

    move-result v0

    return v0
.end method

.method public getOffsetSegmentListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
            ">;"
        }
    .end annotation

    .line 14750
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    .line 14751
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getOffsetSegmentListList()Ljava/util/List;

    move-result-object v0

    .line 14750
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPassedMileage()I
    .locals 1

    .line 14452
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getPassedMileage()I

    move-result v0

    return v0
.end method

.method public getPathType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;
    .locals 1

    .line 15264
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getPathType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    move-result-object v0

    return-object v0
.end method

.method public getPathTypeValue()I
    .locals 1

    .line 15242
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getPathTypeValue()I

    move-result v0

    return v0
.end method

.method public getPredictTimeDuration()J
    .locals 2

    .line 14487
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getPredictTimeDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemainMileage()I
    .locals 1

    .line 14417
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getRemainMileage()I

    move-result v0

    return v0
.end method

.method public getRouteId()J
    .locals 2

    .line 14278
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getRouteId()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCurrentLocalPoint()Z
    .locals 1

    .line 15012
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->hasCurrentLocalPoint()Z

    move-result v0

    return v0
.end method

.method public hasCurrentLocalRotation()Z
    .locals 1

    .line 15081
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->hasCurrentLocalRotation()Z

    move-result v0

    return v0
.end method

.method public hasCurrentLonlatPoint()Z
    .locals 1

    .line 14348
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->hasCurrentLonlatPoint()Z

    move-result v0

    return v0
.end method

.method public mergeCurrentLocalPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15057
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15058
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$24900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public mergeCurrentLocalRotation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15126
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15127
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$25300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)V

    return-object p0
.end method

.method public mergeCurrentLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14393
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14394
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$21200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public removeOffsetSegmentList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14882
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14883
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$24000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V

    return-object p0
.end method

.method public setArriveTime(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14532
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14533
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$22000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;J)V

    return-object p0
.end method

.method public setCurrentLocalPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15045
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15046
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$24800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-object p0
.end method

.method public setCurrentLocalPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15032
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15033
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$24700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public setCurrentLocalRotation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15114
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15115
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$25200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;)V

    return-object p0
.end method

.method public setCurrentLocalRotation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15101
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15102
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$25100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)V

    return-object p0
.end method

.method public setCurrentLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14381
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14382
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$21100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-object p0
.end method

.method public setCurrentLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14368
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14369
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$21000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public setCurrentOffset(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14722
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14723
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$23000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V

    return-object p0
.end method

.method public setCurrentPointIndexInV2List(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14323
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14324
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$20800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V

    return-object p0
.end method

.method public setEgoInternalRoadState(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14987
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14988
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$24500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;)V

    return-object p0
.end method

.method public setEgoInternalRoadStateValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14965
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14966
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$24400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V

    return-object p0
.end method

.method public setEndInternalPassedMileage(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15217
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15218
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$25800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V

    return-object p0
.end method

.method public setEndPointName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14917
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14918
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$24100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEndPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14942
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14943
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$24300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEndSlotShape(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15182
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15183
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$25600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)V

    return-object p0
.end method

.method public setEndSlotShapeValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15160
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15161
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$25500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V

    return-object p0
.end method

.method public setManeuverDirection(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14646
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14647
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$22600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;)V

    return-object p0
.end method

.method public setManeuverDirectionValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14624
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14625
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$22500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V

    return-object p0
.end method

.method public setManeuverDistance(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14681
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14682
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$22800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V

    return-object p0
.end method

.method public setManeuverType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14589
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14590
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$22300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;)V

    return-object p0
.end method

.method public setManeuverTypeValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14567
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14568
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$22200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V

    return-object p0
.end method

.method public setOffsetSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14794
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14795
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$23300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V

    return-object p0
.end method

.method public setOffsetSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14781
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14782
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$23200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-object p0
.end method

.method public setPassedMileage(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14462
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14463
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$21600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V

    return-object p0
.end method

.method public setPathType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15274
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15275
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$26100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;)V

    return-object p0
.end method

.method public setPathTypeValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 15252
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 15253
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$26000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V

    return-object p0
.end method

.method public setPredictTimeDuration(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14497
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14498
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$21800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;J)V

    return-object p0
.end method

.method public setRemainMileage(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14427
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14428
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$21400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V

    return-object p0
.end method

.method public setRouteId(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14288
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->copyOnWrite()V

    .line 14289
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->access$20600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;J)V

    return-object p0
.end method
