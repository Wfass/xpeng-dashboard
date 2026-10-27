.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13927
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$20900()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V
    .locals 0

    .line 13920
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 13977
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 13978
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$21400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V

    return-object p0
.end method

.method public clearManeuverInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14057
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14058
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$22200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V

    return-object p0
.end method

.method public clearManeuverInfoList()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14177
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14178
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$23000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V

    return-object p0
.end method

.method public clearNaviFacilityList()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14297
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14298
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$23800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V

    return-object p0
.end method

.method public clearNaviInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14017
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14018
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$21800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V

    return-object p0
.end method

.method public clearSdInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 13936
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 13937
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$21000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V

    return-object p0
.end method

.method public clearSegmentLaneInfosList()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14237
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14238
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$23400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V

    return-object p0
.end method

.method public clearTollLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14117
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14118
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$22600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V

    return-object p0
.end method

.method public getLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1

    .line 13946
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->getLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    move-result-object v0

    return-object v0
.end method

.method public getManeuverInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1

    .line 14026
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->getManeuverInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    move-result-object v0

    return-object v0
.end method

.method public getManeuverInfoList()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
    .locals 1

    .line 14130
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->getManeuverInfoList()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    move-result-object v0

    return-object v0
.end method

.method public getNaviFacilityList()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
    .locals 1

    .line 14250
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->getNaviFacilityList()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    move-result-object v0

    return-object v0
.end method

.method public getNaviInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
    .locals 1

    .line 13986
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->getNaviInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSdInfoCase()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;
    .locals 1

    .line 13932
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->getSdInfoCase()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentLaneInfosList()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
    .locals 1

    .line 14190
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->getSegmentLaneInfosList()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    move-result-object v0

    return-object v0
.end method

.method public getTollLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
    .locals 1

    .line 14070
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->getTollLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 13969
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 13970
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$21300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public mergeManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14049
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14050
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$22100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-object p0
.end method

.method public mergeManeuverInfoList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14165
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14166
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$22900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;)V

    return-object p0
.end method

.method public mergeNaviFacilityList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14285
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14286
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$23700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;)V

    return-object p0
.end method

.method public mergeNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14009
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14010
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$21700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public mergeSegmentLaneInfosList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14225
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14226
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$23300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)V

    return-object p0
.end method

.method public mergeTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14105
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14106
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$22500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;)V

    return-object p0
.end method

.method public setLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 13961
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 13962
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$21200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V

    return-object p0
.end method

.method public setLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 13952
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 13953
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$21100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public setManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14041
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14042
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$22000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V

    return-object p0
.end method

.method public setManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14032
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14033
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$21900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-object p0
.end method

.method public setManeuverInfoList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14153
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14154
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$22800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;)V

    return-object p0
.end method

.method public setManeuverInfoList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14140
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14141
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$22700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;)V

    return-object p0
.end method

.method public setNaviFacilityList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14273
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14274
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$23600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;)V

    return-object p0
.end method

.method public setNaviFacilityList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14260
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14261
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$23500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;)V

    return-object p0
.end method

.method public setNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14001
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14002
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$21600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;)V

    return-object p0
.end method

.method public setNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 13992
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 13993
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$21500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public setSegmentLaneInfosList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14213
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14214
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$23200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;)V

    return-object p0
.end method

.method public setSegmentLaneInfosList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14200
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14201
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$23100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)V

    return-object p0
.end method

.method public setTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14093
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14094
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$22400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;)V

    return-object p0
.end method

.method public setTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 14080
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->copyOnWrite()V

    .line 14081
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->access$22300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;)V

    return-object p0
.end method
