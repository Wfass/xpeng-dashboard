.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2OrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19848
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$45100()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 19841
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEndPointName()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20114
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20115
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$47000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 19907
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 19908
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$45600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 19884
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 19885
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$45400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearPath()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20032
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20033
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$46600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearPpUpdateTime()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20248
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20249
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$48000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearPpVersion()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20193
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20194
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$47500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearRouteId()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20162
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20163
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$47300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearRouteType()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20305
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20306
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$48300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearRouteVersion()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20225
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20226
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$47800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearSdkMajorVersion()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 19938
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 19939
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$45800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearSdkMinorVersion()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 19978
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 19979
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$46100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public clearTimeStamp()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20067
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20068
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$46800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public getEndPointName()Ljava/lang/String;
    .locals 1

    .line 20080
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getEndPointName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 20091
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getEndPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 19893
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;
    .locals 1

    .line 19870
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationStatusValue()I
    .locals 1

    .line 19856
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getNavigationStatusValue()I

    move-result v0

    return v0
.end method

.method public getPath()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
    .locals 1

    .line 20002
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getPath()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    move-result-object v0

    return-object v0
.end method

.method public getPpUpdateTime()J
    .locals 2

    .line 20234
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getPpUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPpVersion()Ljava/lang/String;
    .locals 1

    .line 20171
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getPpVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPpVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 20178
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getPpVersionBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRouteId()J
    .locals 2

    .line 20140
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getRouteId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRouteType()Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;
    .locals 1

    .line 20283
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getRouteType()Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    move-result-object v0

    return-object v0
.end method

.method public getRouteTypeValue()I
    .locals 1

    .line 20261
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getRouteTypeValue()I

    move-result v0

    return v0
.end method

.method public getRouteVersion()J
    .locals 2

    .line 20211
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getRouteVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSdkMajorVersion()Ljava/lang/String;
    .locals 1

    .line 19916
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getSdkMajorVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkMajorVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 19923
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getSdkMajorVersionBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSdkMinorVersion()Ljava/lang/String;
    .locals 1

    .line 19956
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getSdkMinorVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkMinorVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 19963
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getSdkMinorVersionBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 20045
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPath()Z
    .locals 1

    .line 19996
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->hasPath()Z

    move-result v0

    return v0
.end method

.method public mergePath(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20025
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20026
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$46500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-object p0
.end method

.method public setEndPointName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20102
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20103
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$46900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEndPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20127
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20128
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$47100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 19899
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 19900
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$45500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;J)V

    return-object p0
.end method

.method public setNavigationStatus(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 19876
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 19877
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$45300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;)V

    return-object p0
.end method

.method public setNavigationStatusValue(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 19862
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 19863
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$45200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;I)V

    return-object p0
.end method

.method public setPath(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20017
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20018
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$46400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;)V

    return-object p0
.end method

.method public setPath(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20008
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20009
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$46300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-object p0
.end method

.method public setPpUpdateTime(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20240
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20241
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$47900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;J)V

    return-object p0
.end method

.method public setPpVersion(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20185
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20186
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$47400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPpVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20202
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20203
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$47600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRouteId(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20150
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20151
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$47200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;J)V

    return-object p0
.end method

.method public setRouteType(Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20293
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20294
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$48200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;)V

    return-object p0
.end method

.method public setRouteTypeValue(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20271
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20272
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$48100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;I)V

    return-object p0
.end method

.method public setRouteVersion(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20217
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20218
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$47700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;J)V

    return-object p0
.end method

.method public setSdkMajorVersion(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 19930
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 19931
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$45700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSdkMajorVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 19947
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 19948
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$45900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSdkMinorVersion(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 19970
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 19971
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$46000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSdkMinorVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 19987
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 19988
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$46200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimeStamp(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 20055
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->copyOnWrite()V

    .line 20056
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->access$46700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;J)V

    return-object p0
.end method
