.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12761
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$26000()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V
    .locals 0

    .line 12754
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCurFloor(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;"
        }
    .end annotation

    .line 13215
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13216
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$29400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllDynObj(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;"
        }
    .end annotation

    .line 13405
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13406
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$31100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllLanelines(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;"
        }
    .end annotation

    .line 13128
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13129
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$28900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllObj(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;"
        }
    .end annotation

    .line 13023
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13024
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$28000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSlot(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;"
        }
    .end annotation

    .line 12886
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12887
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$27100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSlotAvm(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;"
        }
    .end annotation

    .line 13547
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13548
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$32400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSlotIdMapping(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;"
        }
    .end annotation

    .line 13741
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13742
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$34200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSpdBump(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;"
        }
    .end annotation

    .line 13644
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13645
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$33300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllTrajectory(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;"
        }
    .end annotation

    .line 13308
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13309
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$30200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCurFloor(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13202
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13203
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$29300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V

    return-object p0
.end method

.method public addDynObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13396
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13397
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$31000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)V

    return-object p0
.end method

.method public addDynObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13378
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13379
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$30800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V

    return-object p0
.end method

.method public addDynObj(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13387
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13388
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$30900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)V

    return-object p0
.end method

.method public addDynObj(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13369
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13370
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$30700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V

    return-object p0
.end method

.method public addLanelines(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13119
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13120
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$28800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)V

    return-object p0
.end method

.method public addLanelines(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13101
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13102
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$28600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V

    return-object p0
.end method

.method public addLanelines(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13110
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13111
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$28700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)V

    return-object p0
.end method

.method public addLanelines(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13092
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13093
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$28500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V

    return-object p0
.end method

.method public addObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13010
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13011
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$27900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)V

    return-object p0
.end method

.method public addObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12984
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12985
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$27700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V

    return-object p0
.end method

.method public addObj(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12997
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12998
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$27800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)V

    return-object p0
.end method

.method public addObj(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12971
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12972
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$27600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V

    return-object p0
.end method

.method public addSlot(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12877
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12878
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$27000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V

    return-object p0
.end method

.method public addSlot(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12859
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12860
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$26800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V

    return-object p0
.end method

.method public addSlot(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12868
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12869
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$26900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V

    return-object p0
.end method

.method public addSlot(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12850
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12851
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$26700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V

    return-object p0
.end method

.method public addSlotAvm(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13538
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13539
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$32300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V

    return-object p0
.end method

.method public addSlotAvm(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13520
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13521
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$32100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V

    return-object p0
.end method

.method public addSlotAvm(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13529
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13530
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$32200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V

    return-object p0
.end method

.method public addSlotAvm(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13511
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13512
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$32000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V

    return-object p0
.end method

.method public addSlotIdMapping(ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13732
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13733
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$34100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)V

    return-object p0
.end method

.method public addSlotIdMapping(ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13714
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13715
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$33900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V

    return-object p0
.end method

.method public addSlotIdMapping(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13723
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13724
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$34000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)V

    return-object p0
.end method

.method public addSlotIdMapping(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13705
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13706
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$33800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V

    return-object p0
.end method

.method public addSpdBump(ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13635
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13636
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$33200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)V

    return-object p0
.end method

.method public addSpdBump(ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13617
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13618
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$33000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V

    return-object p0
.end method

.method public addSpdBump(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13626
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13627
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$33100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)V

    return-object p0
.end method

.method public addSpdBump(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13608
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13609
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$32900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V

    return-object p0
.end method

.method public addTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13299
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13300
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$30100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)V

    return-object p0
.end method

.method public addTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13281
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13282
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$29900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V

    return-object p0
.end method

.method public addTrajectory(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13290
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13291
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$30000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)V

    return-object p0
.end method

.method public addTrajectory(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13272
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13273
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$29800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V

    return-object p0
.end method

.method public clearCurFloor()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13227
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13228
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$29500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V

    return-object p0
.end method

.method public clearDynObj()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13413
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13414
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$31200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V

    return-object p0
.end method

.method public clearEssentialMsg()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13466
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13467
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$31700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V

    return-object p0
.end method

.method public clearLanelines()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13136
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13137
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$29000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V

    return-object p0
.end method

.method public clearLocation()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12805
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12806
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$26400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V

    return-object p0
.end method

.method public clearObj()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13035
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13036
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$28100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V

    return-object p0
.end method

.method public clearSlot()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12894
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12895
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$27200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V

    return-object p0
.end method

.method public clearSlotAvm()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13555
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13556
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$32500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V

    return-object p0
.end method

.method public clearSlotIdMapping()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13749
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13750
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$34300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V

    return-object p0
.end method

.method public clearSpdBump()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13652
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13653
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$33400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V

    return-object p0
.end method

.method public clearTrajectory()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13316
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13317
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$30300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V

    return-object p0
.end method

.method public getCurFloor(I)I
    .locals 1

    .line 13179
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getCurFloor(I)I

    move-result p1

    return p1
.end method

.method public getCurFloorCount()I
    .locals 1

    .line 13169
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getCurFloorCount()I

    move-result v0

    return v0
.end method

.method public getCurFloorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 13158
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    .line 13159
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getCurFloorList()Ljava/util/List;

    move-result-object v0

    .line 13158
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDynObj(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
    .locals 1

    .line 13345
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getDynObj(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    move-result-object p1

    return-object p1
.end method

.method public getDynObjCount()I
    .locals 1

    .line 13340
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getDynObjCount()I

    move-result v0

    return v0
.end method

.method public getDynObjList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;",
            ">;"
        }
    .end annotation

    .line 13333
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    .line 13334
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getDynObjList()Ljava/util/List;

    move-result-object v0

    .line 13333
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEssentialMsg()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
    .locals 1

    .line 13436
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getEssentialMsg()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    move-result-object v0

    return-object v0
.end method

.method public getLanelines(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
    .locals 1

    .line 13068
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getLanelines(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    move-result-object p1

    return-object p1
.end method

.method public getLanelinesCount()I
    .locals 1

    .line 13063
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getLanelinesCount()I

    move-result v0

    return v0
.end method

.method public getLanelinesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;",
            ">;"
        }
    .end annotation

    .line 13056
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    .line 13057
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getLanelinesList()Ljava/util/List;

    move-result-object v0

    .line 13056
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    .locals 1

    .line 12775
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getLocation()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    move-result-object v0

    return-object v0
.end method

.method public getObj(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
    .locals 1

    .line 12935
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getObj(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    move-result-object p1

    return-object p1
.end method

.method public getObjCount()I
    .locals 1

    .line 12926
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getObjCount()I

    move-result v0

    return v0
.end method

.method public getObjList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;",
            ">;"
        }
    .end annotation

    .line 12915
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    .line 12916
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getObjList()Ljava/util/List;

    move-result-object v0

    .line 12915
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSlot(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1

    .line 12826
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getSlot(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    move-result-object p1

    return-object p1
.end method

.method public getSlotAvm(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1

    .line 13487
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getSlotAvm(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    move-result-object p1

    return-object p1
.end method

.method public getSlotAvmCount()I
    .locals 1

    .line 13482
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getSlotAvmCount()I

    move-result v0

    return v0
.end method

.method public getSlotAvmList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
            ">;"
        }
    .end annotation

    .line 13475
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    .line 13476
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getSlotAvmList()Ljava/util/List;

    move-result-object v0

    .line 13475
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSlotCount()I
    .locals 1

    .line 12821
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getSlotCount()I

    move-result v0

    return v0
.end method

.method public getSlotIdMapping(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
    .locals 1

    .line 13681
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getSlotIdMapping(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    move-result-object p1

    return-object p1
.end method

.method public getSlotIdMappingCount()I
    .locals 1

    .line 13676
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getSlotIdMappingCount()I

    move-result v0

    return v0
.end method

.method public getSlotIdMappingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;",
            ">;"
        }
    .end annotation

    .line 13669
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    .line 13670
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getSlotIdMappingList()Ljava/util/List;

    move-result-object v0

    .line 13669
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSlotList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
            ">;"
        }
    .end annotation

    .line 12814
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    .line 12815
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getSlotList()Ljava/util/List;

    move-result-object v0

    .line 12814
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpdBump(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
    .locals 1

    .line 13584
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getSpdBump(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    move-result-object p1

    return-object p1
.end method

.method public getSpdBumpCount()I
    .locals 1

    .line 13579
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getSpdBumpCount()I

    move-result v0

    return v0
.end method

.method public getSpdBumpList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;",
            ">;"
        }
    .end annotation

    .line 13572
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    .line 13573
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getSpdBumpList()Ljava/util/List;

    move-result-object v0

    .line 13572
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrajectory(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
    .locals 1

    .line 13248
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getTrajectory(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    move-result-object p1

    return-object p1
.end method

.method public getTrajectoryCount()I
    .locals 1

    .line 13243
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getTrajectoryCount()I

    move-result v0

    return v0
.end method

.method public getTrajectoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;",
            ">;"
        }
    .end annotation

    .line 13236
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    .line 13237
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getTrajectoryList()Ljava/util/List;

    move-result-object v0

    .line 13236
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasEssentialMsg()Z
    .locals 1

    .line 13430
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->hasEssentialMsg()Z

    move-result v0

    return v0
.end method

.method public hasLocation()Z
    .locals 1

    .line 12769
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->hasLocation()Z

    move-result v0

    return v0
.end method

.method public mergeEssentialMsg(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13459
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13460
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$31600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public mergeLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12798
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12799
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$26300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V

    return-object p0
.end method

.method public removeDynObj(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13421
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13422
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$31300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V

    return-object p0
.end method

.method public removeLanelines(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13144
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13145
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$29100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V

    return-object p0
.end method

.method public removeObj(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13047
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13048
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$28200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V

    return-object p0
.end method

.method public removeSlot(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12902
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12903
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$27300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V

    return-object p0
.end method

.method public removeSlotAvm(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13563
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13564
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$32600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V

    return-object p0
.end method

.method public removeSlotIdMapping(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13757
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13758
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$34400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V

    return-object p0
.end method

.method public removeSpdBump(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13660
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13661
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$33500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V

    return-object p0
.end method

.method public removeTrajectory(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13324
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13325
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$30400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V

    return-object p0
.end method

.method public setCurFloor(II)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13191
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$29200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;II)V

    return-object p0
.end method

.method public setDynObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13361
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13362
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$30600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)V

    return-object p0
.end method

.method public setDynObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13352
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13353
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$30500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V

    return-object p0
.end method

.method public setEssentialMsg(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13451
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13452
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$31500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;)V

    return-object p0
.end method

.method public setEssentialMsg(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13442
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13443
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$31400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public setLanelines(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13084
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13085
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$28400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)V

    return-object p0
.end method

.method public setLanelines(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13075
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13076
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$28300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V

    return-object p0
.end method

.method public setLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12790
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12791
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$26200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;)V

    return-object p0
.end method

.method public setLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12781
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12782
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$26100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V

    return-object p0
.end method

.method public setObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12959
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12960
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$27500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)V

    return-object p0
.end method

.method public setObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12946
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12947
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$27400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V

    return-object p0
.end method

.method public setSlot(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12842
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12843
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$26600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V

    return-object p0
.end method

.method public setSlot(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12833
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 12834
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$26500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V

    return-object p0
.end method

.method public setSlotAvm(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13503
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13504
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$31900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V

    return-object p0
.end method

.method public setSlotAvm(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13494
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13495
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$31800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V

    return-object p0
.end method

.method public setSlotIdMapping(ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13697
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13698
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$33700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)V

    return-object p0
.end method

.method public setSlotIdMapping(ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13688
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13689
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$33600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V

    return-object p0
.end method

.method public setSpdBump(ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13600
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13601
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$32800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)V

    return-object p0
.end method

.method public setSpdBump(ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13591
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13592
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$32700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V

    return-object p0
.end method

.method public setTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13264
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13265
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$29700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)V

    return-object p0
.end method

.method public setTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 13255
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->copyOnWrite()V

    .line 13256
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->access$29600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V

    return-object p0
.end method
