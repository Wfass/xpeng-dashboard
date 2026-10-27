.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$PathOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$PathOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17196
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$36000()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 17189
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCameras(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;"
        }
    .end annotation

    .line 17493
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17494
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$38700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllForbiddenInfo12(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;"
        }
    .end annotation

    .line 17988
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17989
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$43100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllInnerTrafficIncidents(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;"
        }
    .end annotation

    .line 17868
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17869
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$42000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOuterTrafficIncidents(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;"
        }
    .end annotation

    .line 17771
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17772
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$41100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSegments(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;"
        }
    .end annotation

    .line 17299
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17300
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$36900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllTrafficLights(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;"
        }
    .end annotation

    .line 17396
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17397
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$37800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllViaPointInfos(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;"
        }
    .end annotation

    .line 17590
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17591
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$39600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17484
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17485
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$38600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V

    return-object p0
.end method

.method public addCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17466
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17467
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$38400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-object p0
.end method

.method public addCameras(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17475
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17476
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$38500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V

    return-object p0
.end method

.method public addCameras(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17457
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17458
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$38300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-object p0
.end method

.method public addForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17979
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17980
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$43000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)V

    return-object p0
.end method

.method public addForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17961
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17962
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$42800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V

    return-object p0
.end method

.method public addForbiddenInfo12(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17970
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17971
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$42900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)V

    return-object p0
.end method

.method public addForbiddenInfo12(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17952
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17953
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$42700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V

    return-object p0
.end method

.method public addInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17859
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17860
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$41900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V

    return-object p0
.end method

.method public addInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17841
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17842
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$41700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V

    return-object p0
.end method

.method public addInnerTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17850
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17851
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$41800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V

    return-object p0
.end method

.method public addInnerTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17832
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17833
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$41600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V

    return-object p0
.end method

.method public addOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17762
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17763
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$41000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V

    return-object p0
.end method

.method public addOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17744
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17745
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$40800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V

    return-object p0
.end method

.method public addOuterTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17753
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17754
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$40900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V

    return-object p0
.end method

.method public addOuterTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17735
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17736
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$40700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V

    return-object p0
.end method

.method public addSegments(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17290
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17291
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$36800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)V

    return-object p0
.end method

.method public addSegments(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17272
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17273
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$36600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V

    return-object p0
.end method

.method public addSegments(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17281
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17282
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$36700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)V

    return-object p0
.end method

.method public addSegments(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17263
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17264
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$36500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V

    return-object p0
.end method

.method public addTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17387
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17388
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$37700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public addTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17369
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17370
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$37500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public addTrafficLights(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17378
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17379
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$37600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public addTrafficLights(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17360
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17361
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$37400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public addViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17581
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17582
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$39500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)V

    return-object p0
.end method

.method public addViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17563
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17564
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$39300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V

    return-object p0
.end method

.method public addViaPointInfos(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17572
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17573
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$39400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)V

    return-object p0
.end method

.method public addViaPointInfos(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17554
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17555
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$39200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V

    return-object p0
.end method

.method public clearCameras()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17501
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17502
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$38800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-object p0
.end method

.method public clearDataVersion()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17218
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17219
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$36200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-object p0
.end method

.method public clearForbiddenInfo12()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17996
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17997
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$43200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-object p0
.end method

.method public clearForbiddenInfoCount11()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17907
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17908
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$42400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-object p0
.end method

.method public clearInnerTrafficIncidentCount()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17690
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17691
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$40400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-object p0
.end method

.method public clearInnerTrafficIncidents()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17876
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17877
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$42100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-object p0
.end method

.method public clearLength()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17629
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17630
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$40000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-object p0
.end method

.method public clearOuterTrafficIncidentCount()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17667
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17668
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$40200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-object p0
.end method

.method public clearOuterTrafficIncidents()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17779
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17780
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$41200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-object p0
.end method

.method public clearSegments()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17307
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17308
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$37000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-object p0
.end method

.method public clearTrafficLights()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17404
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17405
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$37900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-object p0
.end method

.method public clearViaPointInfos()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17598
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17599
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$39700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-object p0
.end method

.method public getCameras(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1

    .line 17433
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getCameras(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    move-result-object p1

    return-object p1
.end method

.method public getCamerasCount()I
    .locals 1

    .line 17428
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getCamerasCount()I

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

    .line 17421
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    .line 17422
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getCamerasList()Ljava/util/List;

    move-result-object v0

    .line 17421
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataVersion()J
    .locals 2

    .line 17204
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getDataVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public getForbiddenInfo12(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
    .locals 1

    .line 17928
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getForbiddenInfo12(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    move-result-object p1

    return-object p1
.end method

.method public getForbiddenInfo12Count()I
    .locals 1

    .line 17923
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getForbiddenInfo12Count()I

    move-result v0

    return v0
.end method

.method public getForbiddenInfo12List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;",
            ">;"
        }
    .end annotation

    .line 17916
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    .line 17917
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getForbiddenInfo12List()Ljava/util/List;

    move-result-object v0

    .line 17916
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForbiddenInfoCount11()I
    .locals 1

    .line 17893
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getForbiddenInfoCount11()I

    move-result v0

    return v0
.end method

.method public getInnerTrafficIncidentCount()I
    .locals 1

    .line 17676
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getInnerTrafficIncidentCount()I

    move-result v0

    return v0
.end method

.method public getInnerTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1

    .line 17808
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getInnerTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    move-result-object p1

    return-object p1
.end method

.method public getInnerTrafficIncidentsCount()I
    .locals 1

    .line 17803
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getInnerTrafficIncidentsCount()I

    move-result v0

    return v0
.end method

.method public getInnerTrafficIncidentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;",
            ">;"
        }
    .end annotation

    .line 17796
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    .line 17797
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getInnerTrafficIncidentsList()Ljava/util/List;

    move-result-object v0

    .line 17796
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLength()D
    .locals 2

    .line 17615
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getLength()D

    move-result-wide v0

    return-wide v0
.end method

.method public getOuterTrafficIncidentCount()I
    .locals 1

    .line 17643
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getOuterTrafficIncidentCount()I

    move-result v0

    return v0
.end method

.method public getOuterTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1

    .line 17711
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getOuterTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    move-result-object p1

    return-object p1
.end method

.method public getOuterTrafficIncidentsCount()I
    .locals 1

    .line 17706
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getOuterTrafficIncidentsCount()I

    move-result v0

    return v0
.end method

.method public getOuterTrafficIncidentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;",
            ">;"
        }
    .end annotation

    .line 17699
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    .line 17700
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getOuterTrafficIncidentsList()Ljava/util/List;

    move-result-object v0

    .line 17699
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSegments(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;
    .locals 1

    .line 17239
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getSegments(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    move-result-object p1

    return-object p1
.end method

.method public getSegmentsCount()I
    .locals 1

    .line 17234
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getSegmentsCount()I

    move-result v0

    return v0
.end method

.method public getSegmentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;",
            ">;"
        }
    .end annotation

    .line 17227
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    .line 17228
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getSegmentsList()Ljava/util/List;

    move-result-object v0

    .line 17227
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrafficLights(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 17336
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getTrafficLights(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object p1

    return-object p1
.end method

.method public getTrafficLightsCount()I
    .locals 1

    .line 17331
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getTrafficLightsCount()I

    move-result v0

    return v0
.end method

.method public getTrafficLightsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;"
        }
    .end annotation

    .line 17324
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    .line 17325
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getTrafficLightsList()Ljava/util/List;

    move-result-object v0

    .line 17324
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViaPointInfos(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
    .locals 1

    .line 17530
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getViaPointInfos(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    move-result-object p1

    return-object p1
.end method

.method public getViaPointInfosCount()I
    .locals 1

    .line 17525
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getViaPointInfosCount()I

    move-result v0

    return v0
.end method

.method public getViaPointInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;",
            ">;"
        }
    .end annotation

    .line 17518
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    .line 17519
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getViaPointInfosList()Ljava/util/List;

    move-result-object v0

    .line 17518
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeCameras(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17509
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17510
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$38900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V

    return-object p0
.end method

.method public removeForbiddenInfo12(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 18004
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 18005
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$43300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V

    return-object p0
.end method

.method public removeInnerTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17884
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17885
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$42200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V

    return-object p0
.end method

.method public removeOuterTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17787
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17788
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$41300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V

    return-object p0
.end method

.method public removeSegments(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17315
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17316
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$37100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V

    return-object p0
.end method

.method public removeTrafficLights(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17412
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17413
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$38000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V

    return-object p0
.end method

.method public removeViaPointInfos(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17606
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17607
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$39800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V

    return-object p0
.end method

.method public setCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17449
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17450
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$38200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V

    return-object p0
.end method

.method public setCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17440
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17441
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$38100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-object p0
.end method

.method public setDataVersion(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17210
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17211
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$36100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;J)V

    return-object p0
.end method

.method public setForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17944
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17945
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$42600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)V

    return-object p0
.end method

.method public setForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17935
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17936
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$42500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V

    return-object p0
.end method

.method public setForbiddenInfoCount11(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17899
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17900
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$42300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V

    return-object p0
.end method

.method public setInnerTrafficIncidentCount(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17682
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17683
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$40300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V

    return-object p0
.end method

.method public setInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17824
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17825
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$41500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V

    return-object p0
.end method

.method public setInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17815
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17816
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$41400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V

    return-object p0
.end method

.method public setLength(D)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17621
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17622
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$39900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;D)V

    return-object p0
.end method

.method public setOuterTrafficIncidentCount(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17654
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17655
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$40100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V

    return-object p0
.end method

.method public setOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17727
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17728
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$40600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V

    return-object p0
.end method

.method public setOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17718
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17719
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$40500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V

    return-object p0
.end method

.method public setSegments(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17255
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17256
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$36400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)V

    return-object p0
.end method

.method public setSegments(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17246
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17247
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$36300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V

    return-object p0
.end method

.method public setTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17352
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17353
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$37300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public setTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17343
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17344
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$37200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public setViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17546
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17547
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$39100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)V

    return-object p0
.end method

.method public setViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17537
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->copyOnWrite()V

    .line 17538
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->access$39000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V

    return-object p0
.end method
