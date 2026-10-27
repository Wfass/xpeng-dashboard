.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9823
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$12800()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 9816
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFngpRouteBriefList(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;"
        }
    .end annotation

    .line 9903
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 9904
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$13500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addFngpRouteBriefList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 9894
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 9895
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$13400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V

    return-object p0
.end method

.method public addFngpRouteBriefList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 9876
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 9877
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$13200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public addFngpRouteBriefList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 9885
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 9886
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$13300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V

    return-object p0
.end method

.method public addFngpRouteBriefList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 9867
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 9868
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$13100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearEgoUndergroundParkingLotState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 10241
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 10242
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$15500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)V

    return-object p0
.end method

.method public clearFngpEmulatorNavigation()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 9988
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 9989
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$14100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)V

    return-object p0
.end method

.method public clearFngpRouteBriefList()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 9911
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 9912
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$13600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)V

    return-object p0
.end method

.method public clearParkingTabInfo()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 10149
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 10150
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$15000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)V

    return-object p0
.end method

.method public clearRouteSelectTimestamp()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10184
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 10185
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$15200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)V

    return-object p0
.end method

.method public clearSequenceId()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 10080
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 10081
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$14600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)V

    return-object p0
.end method

.method public clearStateRemind()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 10045
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 10046
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$14400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)V

    return-object p0
.end method

.method public getEgoUndergroundParkingLotState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;
    .locals 1

    .line 10219
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getEgoUndergroundParkingLotState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    move-result-object v0

    return-object v0
.end method

.method public getEgoUndergroundParkingLotStateValue()I
    .locals 1

    .line 10197
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getEgoUndergroundParkingLotStateValue()I

    move-result v0

    return v0
.end method

.method public getFngpEmulatorNavigation()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 1

    .line 9942
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getFngpEmulatorNavigation()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    move-result-object v0

    return-object v0
.end method

.method public getFngpRouteBriefList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1

    .line 9843
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getFngpRouteBriefList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    move-result-object p1

    return-object p1
.end method

.method public getFngpRouteBriefListCount()I
    .locals 1

    .line 9838
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getFngpRouteBriefListCount()I

    move-result v0

    return v0
.end method

.method public getFngpRouteBriefListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;",
            ">;"
        }
    .end annotation

    .line 9831
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    .line 9832
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getFngpRouteBriefListList()Ljava/util/List;

    move-result-object v0

    .line 9831
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParkingTabInfo()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
    .locals 1

    .line 10103
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getParkingTabInfo()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRouteSelectTimestamp()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10162
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getRouteSelectTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSequenceId()J
    .locals 2

    .line 10058
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getSequenceId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStateRemind()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;
    .locals 1

    .line 10023
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getStateRemind()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    move-result-object v0

    return-object v0
.end method

.method public getStateRemindValue()I
    .locals 1

    .line 10001
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getStateRemindValue()I

    move-result v0

    return v0
.end method

.method public hasFngpEmulatorNavigation()Z
    .locals 1

    .line 9932
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->hasFngpEmulatorNavigation()Z

    move-result v0

    return v0
.end method

.method public hasParkingTabInfo()Z
    .locals 1

    .line 10093
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->hasParkingTabInfo()Z

    move-result v0

    return v0
.end method

.method public mergeFngpEmulatorNavigation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 9977
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 9978
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$14000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public mergeParkingTabInfo(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 10138
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 10139
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$14900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V

    return-object p0
.end method

.method public removeFngpRouteBriefList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 9919
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 9920
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$13700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;I)V

    return-object p0
.end method

.method public setEgoUndergroundParkingLotState(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 10229
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 10230
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$15400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;)V

    return-object p0
.end method

.method public setEgoUndergroundParkingLotStateValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 10207
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 10208
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$15300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;I)V

    return-object p0
.end method

.method public setFngpEmulatorNavigation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 9965
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 9966
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$13900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;)V

    return-object p0
.end method

.method public setFngpEmulatorNavigation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 9952
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 9953
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$13800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-object p0
.end method

.method public setFngpRouteBriefList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 9859
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 9860
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$13000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V

    return-object p0
.end method

.method public setFngpRouteBriefList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 9850
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 9851
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$12900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public setParkingTabInfo(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 10126
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 10127
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$14800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;)V

    return-object p0
.end method

.method public setParkingTabInfo(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 10113
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 10114
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$14700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V

    return-object p0
.end method

.method public setRouteSelectTimestamp(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10172
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 10173
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$15100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;J)V

    return-object p0
.end method

.method public setSequenceId(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 10068
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 10069
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$14500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;J)V

    return-object p0
.end method

.method public setStateRemind(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 10033
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 10034
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$14300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;)V

    return-object p0
.end method

.method public setStateRemindValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 10011
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->copyOnWrite()V

    .line 10012
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->access$14200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;I)V

    return-object p0
.end method
