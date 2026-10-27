.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfoVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3667
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$000()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;)V
    .locals 0

    .line 3660
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCurLinkIdx()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4551
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4552
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$4800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearCurPointIdx()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4586
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4587
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$5000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearCurRouteName()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3713
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3714
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearCurSegIdx()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4516
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4517
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$4600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearExitInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3973
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3974
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$1600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearExitInfoType()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4021
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4022
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$1900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearIsShowExitInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3926
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3927
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$1400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearIsTightTurnShow()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4281
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4282
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$3300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4481
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4482
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$4400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearNextManeuverDist()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4351
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4352
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$3700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearNextManeuverDistDisplay()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4398
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4399
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$3900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearNextManeuverDistUnitDisplay()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4446
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4447
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$4200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearNextManeuverID()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4316
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4317
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$3500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearNextRouteName()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4068
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4069
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$2100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearRouteRemainDist()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3761
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3762
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearRouteRemainDistDisplay()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3808
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3809
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearRouteRemainDistUnitDisplay()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3856
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3857
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$1000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearRouteRemainTime()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3891
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3892
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$1200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearSegmentRemainDist()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4116
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4117
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$2400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearSegmentRemainDistDisplay()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4163
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4164
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$2600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearSegmentRemainDistUnitDisplay()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4211
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4212
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$2900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public clearSegmentRemainProgress()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4246
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4247
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$3100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-object p0
.end method

.method public getCurLinkIdx()I
    .locals 1

    .line 4529
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getCurLinkIdx()I

    move-result v0

    return v0
.end method

.method public getCurPointIdx()I
    .locals 1

    .line 4564
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getCurPointIdx()I

    move-result v0

    return v0
.end method

.method public getCurRouteName()Ljava/lang/String;
    .locals 1

    .line 3679
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getCurRouteName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurRouteNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 3690
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getCurRouteNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCurSegIdx()I
    .locals 1

    .line 4494
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getCurSegIdx()I

    move-result v0

    return v0
.end method

.method public getExitInfo()Ljava/lang/String;
    .locals 1

    .line 3939
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getExitInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitInfoBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 3950
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getExitInfoBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExitInfoType()I
    .locals 1

    .line 3999
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getExitInfoType()I

    move-result v0

    return v0
.end method

.method public getIsShowExitInfo()Z
    .locals 1

    .line 3904
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getIsShowExitInfo()Z

    move-result v0

    return v0
.end method

.method public getIsTightTurnShow()Z
    .locals 1

    .line 4259
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getIsTightTurnShow()Z

    move-result v0

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 4459
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextManeuverDist()D
    .locals 2

    .line 4329
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getNextManeuverDist()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNextManeuverDistDisplay()Ljava/lang/String;
    .locals 1

    .line 4364
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getNextManeuverDistDisplay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextManeuverDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 4375
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getNextManeuverDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNextManeuverDistUnitDisplay()I
    .locals 1

    .line 4424
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getNextManeuverDistUnitDisplay()I

    move-result v0

    return v0
.end method

.method public getNextManeuverID()D
    .locals 2

    .line 4294
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getNextManeuverID()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNextRouteName()Ljava/lang/String;
    .locals 1

    .line 4034
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getNextRouteName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextRouteNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 4045
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getNextRouteNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRouteRemainDist()D
    .locals 2

    .line 3739
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getRouteRemainDist()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRouteRemainDistDisplay()Ljava/lang/String;
    .locals 1

    .line 3774
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getRouteRemainDistDisplay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRouteRemainDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 3785
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getRouteRemainDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRouteRemainDistUnitDisplay()I
    .locals 1

    .line 3834
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getRouteRemainDistUnitDisplay()I

    move-result v0

    return v0
.end method

.method public getRouteRemainTime()D
    .locals 2

    .line 3869
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getRouteRemainTime()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentRemainDist()D
    .locals 2

    .line 4094
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getSegmentRemainDist()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentRemainDistDisplay()Ljava/lang/String;
    .locals 1

    .line 4129
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getSegmentRemainDistDisplay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentRemainDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 4140
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getSegmentRemainDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentRemainDistUnitDisplay()I
    .locals 1

    .line 4189
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getSegmentRemainDistUnitDisplay()I

    move-result v0

    return v0
.end method

.method public getSegmentRemainProgress()D
    .locals 2

    .line 4224
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getSegmentRemainProgress()D

    move-result-wide v0

    return-wide v0
.end method

.method public setCurLinkIdx(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4539
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4540
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$4700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;I)V

    return-object p0
.end method

.method public setCurPointIdx(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4574
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4575
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$4900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;I)V

    return-object p0
.end method

.method public setCurRouteName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3701
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3702
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCurRouteNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3726
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3727
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCurSegIdx(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4504
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4505
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$4500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;I)V

    return-object p0
.end method

.method public setExitInfo(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3961
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3962
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$1500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExitInfoBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3986
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3987
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$1700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExitInfoType(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4009
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4010
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$1800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;I)V

    return-object p0
.end method

.method public setIsShowExitInfo(Z)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3914
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3915
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$1300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Z)V

    return-object p0
.end method

.method public setIsTightTurnShow(Z)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4269
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4270
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$3200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Z)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4469
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4470
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$4300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;J)V

    return-object p0
.end method

.method public setNextManeuverDist(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4339
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4340
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$3600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;D)V

    return-object p0
.end method

.method public setNextManeuverDistDisplay(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4386
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4387
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$3800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNextManeuverDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4411
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4412
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$4000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNextManeuverDistUnitDisplay(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4434
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4435
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$4100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;I)V

    return-object p0
.end method

.method public setNextManeuverID(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4304
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4305
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$3400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;D)V

    return-object p0
.end method

.method public setNextRouteName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4056
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4057
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$2000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNextRouteNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4081
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4082
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$2200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRouteRemainDist(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3749
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3750
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;D)V

    return-object p0
.end method

.method public setRouteRemainDistDisplay(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3796
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3797
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRouteRemainDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3821
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3822
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRouteRemainDistUnitDisplay(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3844
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3845
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;I)V

    return-object p0
.end method

.method public setRouteRemainTime(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3879
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 3880
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$1100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;D)V

    return-object p0
.end method

.method public setSegmentRemainDist(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4104
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4105
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$2300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;D)V

    return-object p0
.end method

.method public setSegmentRemainDistDisplay(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4151
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4152
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$2500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSegmentRemainDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4176
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4177
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$2700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSegmentRemainDistUnitDisplay(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4199
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4200
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$2800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;I)V

    return-object p0
.end method

.method public setSegmentRemainProgress(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 4234
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->copyOnWrite()V

    .line 4235
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->access$3000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;D)V

    return-object p0
.end method
