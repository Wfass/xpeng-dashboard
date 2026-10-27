.class public final Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22818
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$51600()Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 22811
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPathwayPoint(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;"
        }
    .end annotation

    .line 23226
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23227
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$54600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23213
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23214
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$54500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public addPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23187
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23188
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$54300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public addPathwayPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23200
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23201
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$54400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public addPathwayPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23174
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23175
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$54200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public clearExpectCostTime()Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22908
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22909
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$52400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearFngpStatus()Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23035
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23036
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$53500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearNaviRoutingInfoV2()Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22862
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22863
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$52000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearOddEnd()Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22998
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22999
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$53200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearOddStart()Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22953
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22954
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$52800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearPathwayPoint()Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23238
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23239
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$54700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearReloadErrorCode()Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23105
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23106
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$53900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearRouteId()Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22885
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22886
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$52200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearRouteSelectedTimestamp()Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23285
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23286
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$55000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearTotalOddMilage()Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23070
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23071
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$53700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-object p0
.end method

.method public getExpectCostTime()J
    .locals 2

    .line 22894
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getExpectCostTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFngpStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;
    .locals 1

    .line 23021
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getFngpStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    move-result-object v0

    return-object v0
.end method

.method public getFngpStatusValue()I
    .locals 1

    .line 23007
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getFngpStatusValue()I

    move-result v0

    return v0
.end method

.method public getNaviRoutingInfoV2()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    .locals 1

    .line 22832
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getNaviRoutingInfoV2()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    move-result-object v0

    return-object v0
.end method

.method public getOddEnd()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 22968
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getOddEnd()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public getOddStart()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 22923
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getOddStart()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public getPathwayPoint(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 23138
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getPathwayPoint(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object p1

    return-object p1
.end method

.method public getPathwayPointCount()I
    .locals 1

    .line 23129
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getPathwayPointCount()I

    move-result v0

    return v0
.end method

.method public getPathwayPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;"
        }
    .end annotation

    .line 23118
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    .line 23119
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getPathwayPointList()Ljava/util/List;

    move-result-object v0

    .line 23118
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReloadErrorCode()I
    .locals 1

    .line 23083
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getReloadErrorCode()I

    move-result v0

    return v0
.end method

.method public getRouteId()J
    .locals 2

    .line 22871
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getRouteId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRouteSelectedTimestamp()J
    .locals 2

    .line 23263
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getRouteSelectedTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalOddMilage()I
    .locals 1

    .line 23048
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getTotalOddMilage()I

    move-result v0

    return v0
.end method

.method public hasNaviRoutingInfoV2()Z
    .locals 1

    .line 22826
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->hasNaviRoutingInfoV2()Z

    move-result v0

    return v0
.end method

.method public hasOddEnd()Z
    .locals 1

    .line 22962
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->hasOddEnd()Z

    move-result v0

    return v0
.end method

.method public hasOddStart()Z
    .locals 1

    .line 22917
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->hasOddStart()Z

    move-result v0

    return v0
.end method

.method public mergeNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22855
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22856
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$51900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public mergeOddEnd(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22991
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22992
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$53100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public mergeOddStart(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22946
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22947
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$52700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public removePathwayPoint(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23250
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23251
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$54800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;I)V

    return-object p0
.end method

.method public setExpectCostTime(J)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22900
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22901
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$52300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;J)V

    return-object p0
.end method

.method public setFngpStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23028
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$53400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)V

    return-object p0
.end method

.method public setFngpStatusValue(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23013
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23014
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$53300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;I)V

    return-object p0
.end method

.method public setNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22847
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22848
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$51800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;)V

    return-object p0
.end method

.method public setNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22838
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22839
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$51700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public setOddEnd(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22983
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22984
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$53000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public setOddEnd(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22974
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22975
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$52900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public setOddStart(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22938
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22939
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$52600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public setOddStart(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22929
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22930
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$52500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public setPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23162
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23163
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$54100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public setPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23149
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23150
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$54000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public setReloadErrorCode(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23093
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23094
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$53800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;I)V

    return-object p0
.end method

.method public setRouteId(J)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22877
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 22878
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$52100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;J)V

    return-object p0
.end method

.method public setRouteSelectedTimestamp(J)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23273
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23274
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$54900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;J)V

    return-object p0
.end method

.method public setTotalOddMilage(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 23058
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 23059
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->access$53600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;I)V

    return-object p0
.end method
