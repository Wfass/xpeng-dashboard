.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21256
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$48500()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 21249
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPathwayPoint(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;"
        }
    .end annotation

    .line 21664
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21665
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$51500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21651
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21652
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$51400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public addPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21625
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21626
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$51200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public addPathwayPoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21638
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21639
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$51300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public addPathwayPoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21612
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21613
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$51100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public clearExpectCostTime()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21346
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21347
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$49300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearFngpStatus()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21473
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21474
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$50400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearNaviRoutingInfoV2()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21300
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21301
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$48900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearOddEnd()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21436
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21437
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$50100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearOddStart()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21391
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21392
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$49700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearPathwayPoint()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21676
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21677
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$51600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearReloadErrorCode()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21543
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21544
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$50800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearRouteId()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21323
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21324
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$49100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-object p0
.end method

.method public clearTotalOddMilage()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21508
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21509
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$50600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-object p0
.end method

.method public getExpectCostTime()J
    .locals 2

    .line 21332
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getExpectCostTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFngpStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;
    .locals 1

    .line 21459
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getFngpStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    move-result-object v0

    return-object v0
.end method

.method public getFngpStatusValue()I
    .locals 1

    .line 21445
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getFngpStatusValue()I

    move-result v0

    return v0
.end method

.method public getNaviRoutingInfoV2()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    .locals 1

    .line 21270
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getNaviRoutingInfoV2()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    move-result-object v0

    return-object v0
.end method

.method public getOddEnd()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 21406
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getOddEnd()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public getOddStart()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 21361
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getOddStart()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public getPathwayPoint(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 21576
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getPathwayPoint(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object p1

    return-object p1
.end method

.method public getPathwayPointCount()I
    .locals 1

    .line 21567
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getPathwayPointCount()I

    move-result v0

    return v0
.end method

.method public getPathwayPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;"
        }
    .end annotation

    .line 21556
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    .line 21557
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getPathwayPointList()Ljava/util/List;

    move-result-object v0

    .line 21556
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReloadErrorCode()I
    .locals 1

    .line 21521
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getReloadErrorCode()I

    move-result v0

    return v0
.end method

.method public getRouteId()J
    .locals 2

    .line 21309
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getRouteId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalOddMilage()I
    .locals 1

    .line 21486
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getTotalOddMilage()I

    move-result v0

    return v0
.end method

.method public hasNaviRoutingInfoV2()Z
    .locals 1

    .line 21264
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->hasNaviRoutingInfoV2()Z

    move-result v0

    return v0
.end method

.method public hasOddEnd()Z
    .locals 1

    .line 21400
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->hasOddEnd()Z

    move-result v0

    return v0
.end method

.method public hasOddStart()Z
    .locals 1

    .line 21355
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->hasOddStart()Z

    move-result v0

    return v0
.end method

.method public mergeNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21293
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21294
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$48800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public mergeOddEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21429
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21430
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$50000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public mergeOddStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21384
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21385
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$49600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public removePathwayPoint(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21688
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21689
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$51700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;I)V

    return-object p0
.end method

.method public setExpectCostTime(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21338
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21339
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$49200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;J)V

    return-object p0
.end method

.method public setFngpStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21465
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21466
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$50300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)V

    return-object p0
.end method

.method public setFngpStatusValue(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21451
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21452
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$50200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;I)V

    return-object p0
.end method

.method public setNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21285
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21286
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$48700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;)V

    return-object p0
.end method

.method public setNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21276
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21277
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$48600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-object p0
.end method

.method public setOddEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21421
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21422
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$49900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public setOddEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21412
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21413
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$49800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public setOddStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21376
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21377
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$49500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public setOddStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21367
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21368
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$49400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public setPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21600
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21601
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$51000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public setPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21587
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21588
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$50900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public setReloadErrorCode(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21531
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21532
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$50700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;I)V

    return-object p0
.end method

.method public setRouteId(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21315
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21316
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$49000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;J)V

    return-object p0
.end method

.method public setTotalOddMilage(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21496
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->copyOnWrite()V

    .line 21497
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->access$50500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;I)V

    return-object p0
.end method
