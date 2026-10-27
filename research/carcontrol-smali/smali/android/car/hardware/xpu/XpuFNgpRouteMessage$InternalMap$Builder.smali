.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25634
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$43500()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 25627
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllBoundary(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;"
        }
    .end annotation

    .line 26186
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26187
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$47300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSlot(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;"
        }
    .end annotation

    .line 25896
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25897
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$45500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSpeedBump(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;"
        }
    .end annotation

    .line 26041
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26042
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$46400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllTrajectoryPoses(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;"
        }
    .end annotation

    .line 25759
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25760
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$44600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addBoundary(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 26173
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26174
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$47200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)V

    return-object p0
.end method

.method public addBoundary(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 26147
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26148
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$47000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V

    return-object p0
.end method

.method public addBoundary(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 26160
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26161
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$47100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)V

    return-object p0
.end method

.method public addBoundary(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 26134
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26135
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$46900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V

    return-object p0
.end method

.method public addSlot(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25883
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25884
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$45400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)V

    return-object p0
.end method

.method public addSlot(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25857
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25858
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$45200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V

    return-object p0
.end method

.method public addSlot(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25870
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25871
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$45300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)V

    return-object p0
.end method

.method public addSlot(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25844
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25845
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$45100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V

    return-object p0
.end method

.method public addSpeedBump(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 26028
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26029
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$46300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)V

    return-object p0
.end method

.method public addSpeedBump(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 26002
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26003
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$46100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V

    return-object p0
.end method

.method public addSpeedBump(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 26015
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26016
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$46200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)V

    return-object p0
.end method

.method public addSpeedBump(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25989
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25990
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$46000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V

    return-object p0
.end method

.method public addTrajectoryPoses(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25750
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25751
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$44500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)V

    return-object p0
.end method

.method public addTrajectoryPoses(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25732
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25733
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$44300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V

    return-object p0
.end method

.method public addTrajectoryPoses(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25741
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25742
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$44400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)V

    return-object p0
.end method

.method public addTrajectoryPoses(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25723
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25724
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$44200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V

    return-object p0
.end method

.method public clearBoundary()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 26198
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26199
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$47400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;)V

    return-object p0
.end method

.method public clearHeader()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25678
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25679
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$43900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;)V

    return-object p0
.end method

.method public clearSlot()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25908
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25909
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$45600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;)V

    return-object p0
.end method

.method public clearSpeedBump()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 26053
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26054
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$46500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;)V

    return-object p0
.end method

.method public clearTrajectoryPoses()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25767
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25768
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$44700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;)V

    return-object p0
.end method

.method public getBoundary(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
    .locals 1

    .line 26098
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getBoundary(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    move-result-object p1

    return-object p1
.end method

.method public getBoundaryCount()I
    .locals 1

    .line 26089
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getBoundaryCount()I

    move-result v0

    return v0
.end method

.method public getBoundaryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;",
            ">;"
        }
    .end annotation

    .line 26078
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    .line 26079
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getBoundaryList()Ljava/util/List;

    move-result-object v0

    .line 26078
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1

    .line 25648
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getHeader()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    move-result-object v0

    return-object v0
.end method

.method public getSlot(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
    .locals 1

    .line 25808
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getSlot(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    move-result-object p1

    return-object p1
.end method

.method public getSlotCount()I
    .locals 1

    .line 25799
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getSlotCount()I

    move-result v0

    return v0
.end method

.method public getSlotList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;",
            ">;"
        }
    .end annotation

    .line 25788
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    .line 25789
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getSlotList()Ljava/util/List;

    move-result-object v0

    .line 25788
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpeedBump(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
    .locals 1

    .line 25953
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getSpeedBump(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    move-result-object p1

    return-object p1
.end method

.method public getSpeedBumpCount()I
    .locals 1

    .line 25944
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getSpeedBumpCount()I

    move-result v0

    return v0
.end method

.method public getSpeedBumpList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;",
            ">;"
        }
    .end annotation

    .line 25933
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    .line 25934
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getSpeedBumpList()Ljava/util/List;

    move-result-object v0

    .line 25933
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrajectoryPoses(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
    .locals 1

    .line 25699
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getTrajectoryPoses(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    move-result-object p1

    return-object p1
.end method

.method public getTrajectoryPosesCount()I
    .locals 1

    .line 25694
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getTrajectoryPosesCount()I

    move-result v0

    return v0
.end method

.method public getTrajectoryPosesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;",
            ">;"
        }
    .end annotation

    .line 25687
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    .line 25688
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getTrajectoryPosesList()Ljava/util/List;

    move-result-object v0

    .line 25687
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasHeader()Z
    .locals 1

    .line 25642
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->hasHeader()Z

    move-result v0

    return v0
.end method

.method public mergeHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25671
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25672
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$43800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V

    return-object p0
.end method

.method public removeBoundary(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 26210
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26211
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$47500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;I)V

    return-object p0
.end method

.method public removeSlot(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25920
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25921
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$45700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;I)V

    return-object p0
.end method

.method public removeSpeedBump(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 26065
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26066
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$46600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;I)V

    return-object p0
.end method

.method public removeTrajectoryPoses(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25775
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25776
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$44800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;I)V

    return-object p0
.end method

.method public setBoundary(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 26122
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26123
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$46800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)V

    return-object p0
.end method

.method public setBoundary(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 26109
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 26110
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$46700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V

    return-object p0
.end method

.method public setHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25663
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25664
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$43700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;)V

    return-object p0
.end method

.method public setHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25654
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25655
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$43600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V

    return-object p0
.end method

.method public setSlot(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25832
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25833
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$45000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)V

    return-object p0
.end method

.method public setSlot(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25819
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25820
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$44900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V

    return-object p0
.end method

.method public setSpeedBump(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25977
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25978
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$45900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)V

    return-object p0
.end method

.method public setSpeedBump(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25964
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25965
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$45800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V

    return-object p0
.end method

.method public setTrajectoryPoses(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25715
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25716
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$44100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)V

    return-object p0
.end method

.method public setTrajectoryPoses(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25706
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->copyOnWrite()V

    .line 25707
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->access$44000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V

    return-object p0
.end method
