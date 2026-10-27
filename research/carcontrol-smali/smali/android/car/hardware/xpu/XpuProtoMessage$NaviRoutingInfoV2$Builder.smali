.class public final Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2OrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21211
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$47500()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 21204
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEndPointName()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21477
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21478
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$49400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearExngpNaviInfo()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21737
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21738
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$51100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearNaviFinishType()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21794
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21795
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$51400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21270
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21271
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$48000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21247
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21248
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$47800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearPath()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21395
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21396
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$49000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearPpUpdateTime()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21611
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21612
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$50400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearPpVersion()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21556
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21557
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$49900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearRouteId()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21525
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21526
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$49700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearRouteType()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21668
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21669
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$50700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearRouteVersion()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21588
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21589
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$50200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearSdkMajorVersion()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21301
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21302
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$48200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearSdkMinorVersion()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21341
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21342
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$48500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearTimeStamp()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21430
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21431
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$49200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public getEndPointName()Ljava/lang/String;
    .locals 1

    .line 21443
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getEndPointName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 21454
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getEndPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExngpNaviInfo()Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
    .locals 1

    .line 21691
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getExngpNaviInfo()Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNaviFinishType()Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;
    .locals 1

    .line 21772
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getNaviFinishType()Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    move-result-object v0

    return-object v0
.end method

.method public getNaviFinishTypeValue()I
    .locals 1

    .line 21750
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getNaviFinishTypeValue()I

    move-result v0

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 21256
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;
    .locals 1

    .line 21233
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationStatusValue()I
    .locals 1

    .line 21219
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getNavigationStatusValue()I

    move-result v0

    return v0
.end method

.method public getPath()Landroid/car/hardware/xpu/XpuProtoMessage$Path;
    .locals 1

    .line 21365
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getPath()Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    move-result-object v0

    return-object v0
.end method

.method public getPpUpdateTime()J
    .locals 2

    .line 21597
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getPpUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPpVersion()Ljava/lang/String;
    .locals 1

    .line 21534
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getPpVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPpVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 21541
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getPpVersionBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRouteId()J
    .locals 2

    .line 21503
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getRouteId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRouteType()Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;
    .locals 1

    .line 21646
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getRouteType()Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;

    move-result-object v0

    return-object v0
.end method

.method public getRouteTypeValue()I
    .locals 1

    .line 21624
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getRouteTypeValue()I

    move-result v0

    return v0
.end method

.method public getRouteVersion()J
    .locals 2

    .line 21574
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getRouteVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSdkMajorVersion()Ljava/lang/String;
    .locals 1

    .line 21279
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getSdkMajorVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkMajorVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 21286
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getSdkMajorVersionBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSdkMinorVersion()Ljava/lang/String;
    .locals 1

    .line 21319
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getSdkMinorVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkMinorVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 21326
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getSdkMinorVersionBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 21408
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasExngpNaviInfo()Z
    .locals 1

    .line 21681
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->hasExngpNaviInfo()Z

    move-result v0

    return v0
.end method

.method public hasPath()Z
    .locals 1

    .line 21359
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->hasPath()Z

    move-result v0

    return v0
.end method

.method public mergeExngpNaviInfo(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21726
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21727
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$51000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)V

    return-object p0
.end method

.method public mergePath(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21388
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21389
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$48900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public setEndPointName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21465
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21466
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$49300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEndPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21490
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21491
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$49500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExngpNaviInfo(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21714
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21715
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$50900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;)V

    return-object p0
.end method

.method public setExngpNaviInfo(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21701
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21702
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$50800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)V

    return-object p0
.end method

.method public setNaviFinishType(Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21782
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21783
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$51300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;)V

    return-object p0
.end method

.method public setNaviFinishTypeValue(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21760
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21761
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$51200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;I)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21262
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21263
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$47900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;J)V

    return-object p0
.end method

.method public setNavigationStatus(Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21239
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21240
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$47700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;)V

    return-object p0
.end method

.method public setNavigationStatusValue(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21225
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21226
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$47600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;I)V

    return-object p0
.end method

.method public setPath(Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21380
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21381
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$48800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;)V

    return-object p0
.end method

.method public setPath(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21371
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21372
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$48700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-object p0
.end method

.method public setPpUpdateTime(J)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21603
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21604
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$50300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;J)V

    return-object p0
.end method

.method public setPpVersion(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21548
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21549
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$49800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPpVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21565
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21566
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$50000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRouteId(J)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21513
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21514
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$49600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;J)V

    return-object p0
.end method

.method public setRouteType(Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21656
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21657
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$50600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;)V

    return-object p0
.end method

.method public setRouteTypeValue(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21634
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21635
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$50500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;I)V

    return-object p0
.end method

.method public setRouteVersion(J)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21580
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21581
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$50100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;J)V

    return-object p0
.end method

.method public setSdkMajorVersion(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21293
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21294
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$48100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSdkMajorVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21310
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21311
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$48300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSdkMinorVersion(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21333
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21334
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$48400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSdkMinorVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21350
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21351
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$48600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimeStamp(J)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21418
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 21419
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->access$49100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;J)V

    return-object p0
.end method
