.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3511
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$000()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V
    .locals 0

    .line 3504
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCurRouteName()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3557
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3558
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearExitInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3817
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3818
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$1600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearExitInfoType()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3865
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3866
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$1900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearIsShowExitInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3770
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3771
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$1400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearIsTightTurnShow()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4125
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4126
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$3300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4325
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4326
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$4400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearNextManeuverDist()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4195
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4196
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$3700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearNextManeuverDistDisplay()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4242
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4243
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$3900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearNextManeuverDistUnitDisplay()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4290
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4291
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$4200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearNextManeuverID()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4160
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4161
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$3500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearNextRouteName()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3912
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3913
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$2100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearRouteRemainDist()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3605
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3606
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearRouteRemainDistDisplay()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3652
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3653
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearRouteRemainDistUnitDisplay()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3700
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3701
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$1000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearRouteRemainTime()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3735
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3736
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$1200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearSegmentRemainDist()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3960
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3961
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$2400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearSegmentRemainDistDisplay()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4007
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4008
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$2600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearSegmentRemainDistUnitDisplay()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4055
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4056
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$2900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public clearSegmentRemainProgress()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4090
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4091
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$3100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-object p0
.end method

.method public getCurRouteName()Ljava/lang/String;
    .locals 1

    .line 3523
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getCurRouteName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurRouteNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 3534
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getCurRouteNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExitInfo()Ljava/lang/String;
    .locals 1

    .line 3783
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getExitInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitInfoBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 3794
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getExitInfoBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExitInfoType()I
    .locals 1

    .line 3843
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getExitInfoType()I

    move-result v0

    return v0
.end method

.method public getIsShowExitInfo()Z
    .locals 1

    .line 3748
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getIsShowExitInfo()Z

    move-result v0

    return v0
.end method

.method public getIsTightTurnShow()Z
    .locals 1

    .line 4103
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getIsTightTurnShow()Z

    move-result v0

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 4303
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextManeuverDist()D
    .locals 2

    .line 4173
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getNextManeuverDist()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNextManeuverDistDisplay()Ljava/lang/String;
    .locals 1

    .line 4208
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getNextManeuverDistDisplay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextManeuverDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 4219
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getNextManeuverDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNextManeuverDistUnitDisplay()I
    .locals 1

    .line 4268
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getNextManeuverDistUnitDisplay()I

    move-result v0

    return v0
.end method

.method public getNextManeuverID()D
    .locals 2

    .line 4138
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getNextManeuverID()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNextRouteName()Ljava/lang/String;
    .locals 1

    .line 3878
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getNextRouteName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextRouteNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 3889
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getNextRouteNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRouteRemainDist()D
    .locals 2

    .line 3583
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getRouteRemainDist()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRouteRemainDistDisplay()Ljava/lang/String;
    .locals 1

    .line 3618
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getRouteRemainDistDisplay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRouteRemainDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 3629
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getRouteRemainDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRouteRemainDistUnitDisplay()I
    .locals 1

    .line 3678
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getRouteRemainDistUnitDisplay()I

    move-result v0

    return v0
.end method

.method public getRouteRemainTime()D
    .locals 2

    .line 3713
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getRouteRemainTime()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentRemainDist()D
    .locals 2

    .line 3938
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getSegmentRemainDist()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentRemainDistDisplay()Ljava/lang/String;
    .locals 1

    .line 3973
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getSegmentRemainDistDisplay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentRemainDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 3984
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getSegmentRemainDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentRemainDistUnitDisplay()I
    .locals 1

    .line 4033
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getSegmentRemainDistUnitDisplay()I

    move-result v0

    return v0
.end method

.method public getSegmentRemainProgress()D
    .locals 2

    .line 4068
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getSegmentRemainProgress()D

    move-result-wide v0

    return-wide v0
.end method

.method public setCurRouteName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3545
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3546
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCurRouteNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3570
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3571
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExitInfo(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3805
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3806
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$1500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExitInfoBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3830
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3831
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$1700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExitInfoType(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3853
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3854
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$1800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;I)V

    return-object p0
.end method

.method public setIsShowExitInfo(Z)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3758
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3759
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$1300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Z)V

    return-object p0
.end method

.method public setIsTightTurnShow(Z)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4113
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4114
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$3200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Z)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4313
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4314
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$4300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;J)V

    return-object p0
.end method

.method public setNextManeuverDist(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4183
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4184
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$3600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;D)V

    return-object p0
.end method

.method public setNextManeuverDistDisplay(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4230
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4231
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$3800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNextManeuverDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4255
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4256
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$4000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNextManeuverDistUnitDisplay(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4278
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4279
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$4100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;I)V

    return-object p0
.end method

.method public setNextManeuverID(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4148
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4149
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$3400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;D)V

    return-object p0
.end method

.method public setNextRouteName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3900
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3901
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$2000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNextRouteNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3925
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3926
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$2200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRouteRemainDist(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3593
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3594
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;D)V

    return-object p0
.end method

.method public setRouteRemainDistDisplay(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3640
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3641
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRouteRemainDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3665
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3666
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRouteRemainDistUnitDisplay(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3688
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3689
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;I)V

    return-object p0
.end method

.method public setRouteRemainTime(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3723
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3724
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$1100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;D)V

    return-object p0
.end method

.method public setSegmentRemainDist(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3948
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3949
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$2300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;D)V

    return-object p0
.end method

.method public setSegmentRemainDistDisplay(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3995
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 3996
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$2500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSegmentRemainDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4020
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4021
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$2700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSegmentRemainDistUnitDisplay(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4043
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4044
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$2800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;I)V

    return-object p0
.end method

.method public setSegmentRemainProgress(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 4078
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->copyOnWrite()V

    .line 4079
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->access$3000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;D)V

    return-object p0
.end method
