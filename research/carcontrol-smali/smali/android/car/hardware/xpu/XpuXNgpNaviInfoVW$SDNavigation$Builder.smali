.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfoVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9436
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$12600()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;)V
    .locals 0

    .line 9429
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9486
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9487
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$13100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;)V

    return-object p0
.end method

.method public clearManeuverInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9566
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9567
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$13900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;)V

    return-object p0
.end method

.method public clearNaviInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9526
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9527
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$13500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;)V

    return-object p0
.end method

.method public clearSdInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9445
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9446
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$12700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;)V

    return-object p0
.end method

.method public clearTollLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9626
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9627
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$14300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;)V

    return-object p0
.end method

.method public getLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
    .locals 1

    .line 9455
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->getLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    move-result-object v0

    return-object v0
.end method

.method public getManeuverInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
    .locals 1

    .line 9535
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->getManeuverInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNaviInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
    .locals 1

    .line 9495
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->getNaviInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSdInfoCase()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;
    .locals 1

    .line 9441
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->getSdInfoCase()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    move-result-object v0

    return-object v0
.end method

.method public getTollLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
    .locals 1

    .line 9579
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->getTollLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9478
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9479
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$13000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public mergeManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9558
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9559
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$13800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V

    return-object p0
.end method

.method public mergeNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9518
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9519
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$13400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public mergeTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9614
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9615
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$14200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;)V

    return-object p0
.end method

.method public setLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9470
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9471
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$12900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;)V

    return-object p0
.end method

.method public setLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9461
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9462
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$12800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public setManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9550
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9551
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$13700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;)V

    return-object p0
.end method

.method public setManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9541
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9542
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$13600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V

    return-object p0
.end method

.method public setNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9510
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9511
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$13300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;)V

    return-object p0
.end method

.method public setNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9501
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9502
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$13200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public setTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9602
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9603
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$14100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;)V

    return-object p0
.end method

.method public setTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9589
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->copyOnWrite()V

    .line 9590
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->access$14000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;)V

    return-object p0
.end method
