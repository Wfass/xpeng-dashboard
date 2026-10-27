.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6876
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$2500()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 6869
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllInternalMapInfoList(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;"
        }
    .end annotation

    .line 8649
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8650
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$12200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllInternalRouteTypeList(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;"
        }
    .end annotation

    .line 8458
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8459
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$11100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllInternalRouteTypeListValue(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;"
        }
    .end annotation

    .line 8528
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8529
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$11500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addInternalMapInfoList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8636
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8637
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$12100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)V

    return-object p0
.end method

.method public addInternalMapInfoList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8610
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8611
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$11900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V

    return-object p0
.end method

.method public addInternalMapInfoList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8623
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8624
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$12000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)V

    return-object p0
.end method

.method public addInternalMapInfoList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8597
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8598
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$11800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V

    return-object p0
.end method

.method public addInternalRouteTypeList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8445
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8446
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$11000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)V

    return-object p0
.end method

.method public addInternalRouteTypeListValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8516
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$11400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public clearBeginLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7014
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7015
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$3300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearBeginPointName()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7061
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7062
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$3500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearClusterNumber()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7816
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7817
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$7700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearCreateTime()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7273
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7274
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$4700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearCustomStatusMsg()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8104
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8105
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$9300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearEgoInternalRoadState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8389
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8390
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$10800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearEndLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7143
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7144
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$4000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearEndPointName()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7190
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7191
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$4200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearEndSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8218
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8219
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$9900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearFngpStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7432
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7433
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$5600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearInternalMapInfoList()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8661
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8662
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$12300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearInternalRouteTypeList()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8469
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8470
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$11200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearIsCustom()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8035
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8036
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$8900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearIsLock()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7375
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7376
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$5300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearIsNaviEndMatch()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7781
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7782
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$7500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearIsRenamedRoute()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7746
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7747
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$7300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearIsSelected()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7308
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7309
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$4900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearLastUseTime()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7343
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7344
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$5100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearLearnStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7873
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7874
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$8000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearName()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7571
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7572
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$6300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearPathType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7489
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7490
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$5900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearPredictTimeDuration()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7238
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7239
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$4500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearPriority()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7524
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7525
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$6100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearPriorityInfo()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7711
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7712
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$7100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearRouteId()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 6910
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 6911
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$2700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearRouteScore()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7908
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7909
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$8200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearRouteSelectedTimestamp()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8708
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8709
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$12600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearRouteShowStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7654
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7655
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$6800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearSelectType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8275
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8276
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$10200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearSlotPreferType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8332
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8333
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$10500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearStartEndClusterNumber()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8000
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8001
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$8700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearStartSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8161
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8162
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$9600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearTotalMileage()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 6945
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 6946
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$2900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearTotalOddMilage()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7619
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7620
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$6600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public clearUsingRawRouteType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7965
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7966
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$8500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public getBeginLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
    .locals 1

    .line 6968
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getBeginLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v0

    return-object v0
.end method

.method public getBeginPointName()Ljava/lang/String;
    .locals 1

    .line 7027
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getBeginPointName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBeginPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 7038
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getBeginPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClusterNumber()I
    .locals 1

    .line 7794
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getClusterNumber()I

    move-result v0

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 7251
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getCreateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCustomStatusMsg()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
    .locals 1

    .line 8058
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getCustomStatusMsg()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    move-result-object v0

    return-object v0
.end method

.method public getEgoInternalRoadState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;
    .locals 1

    .line 8367
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getEgoInternalRoadState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;

    move-result-object v0

    return-object v0
.end method

.method public getEgoInternalRoadStateValue()I
    .locals 1

    .line 8345
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getEgoInternalRoadStateValue()I

    move-result v0

    return v0
.end method

.method public getEndLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
    .locals 1

    .line 7097
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getEndLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v0

    return-object v0
.end method

.method public getEndPointName()Ljava/lang/String;
    .locals 1

    .line 7156
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getEndPointName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 7167
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getEndPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEndSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;
    .locals 1

    .line 8196
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getEndSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    move-result-object v0

    return-object v0
.end method

.method public getEndSlotShapeValue()I
    .locals 1

    .line 8174
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getEndSlotShapeValue()I

    move-result v0

    return v0
.end method

.method public getFngpStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;
    .locals 1

    .line 7410
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getFngpStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    move-result-object v0

    return-object v0
.end method

.method public getFngpStatusValue()I
    .locals 1

    .line 7388
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getFngpStatusValue()I

    move-result v0

    return v0
.end method

.method public getInternalMapInfoList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
    .locals 1

    .line 8561
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getInternalMapInfoList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    move-result-object p1

    return-object p1
.end method

.method public getInternalMapInfoListCount()I
    .locals 1

    .line 8552
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getInternalMapInfoListCount()I

    move-result v0

    return v0
.end method

.method public getInternalMapInfoListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;",
            ">;"
        }
    .end annotation

    .line 8541
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    .line 8542
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getInternalMapInfoListList()Ljava/util/List;

    move-result-object v0

    .line 8541
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInternalRouteTypeList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;
    .locals 1

    .line 8422
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getInternalRouteTypeList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;

    move-result-object p1

    return-object p1
.end method

.method public getInternalRouteTypeListCount()I
    .locals 1

    .line 8412
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getInternalRouteTypeListCount()I

    move-result v0

    return v0
.end method

.method public getInternalRouteTypeListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;",
            ">;"
        }
    .end annotation

    .line 8402
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getInternalRouteTypeListList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInternalRouteTypeListValue(I)I
    .locals 1

    .line 8493
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getInternalRouteTypeListValue(I)I

    move-result p1

    return p1
.end method

.method public getInternalRouteTypeListValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8482
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    .line 8483
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getInternalRouteTypeListValueList()Ljava/util/List;

    move-result-object v0

    .line 8482
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIsCustom()I
    .locals 1

    .line 8013
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getIsCustom()I

    move-result v0

    return v0
.end method

.method public getIsLock()Z
    .locals 1

    .line 7355
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getIsLock()Z

    move-result v0

    return v0
.end method

.method public getIsNaviEndMatch()I
    .locals 1

    .line 7759
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getIsNaviEndMatch()I

    move-result v0

    return v0
.end method

.method public getIsRenamedRoute()I
    .locals 1

    .line 7724
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getIsRenamedRoute()I

    move-result v0

    return v0
.end method

.method public getIsSelected()Z
    .locals 1

    .line 7286
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getIsSelected()Z

    move-result v0

    return v0
.end method

.method public getLastUseTime()J
    .locals 2

    .line 7321
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getLastUseTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLearnStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;
    .locals 1

    .line 7851
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getLearnStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    move-result-object v0

    return-object v0
.end method

.method public getLearnStatusValue()I
    .locals 1

    .line 7829
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getLearnStatusValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 7537
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 7548
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPathType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;
    .locals 1

    .line 7467
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getPathType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    move-result-object v0

    return-object v0
.end method

.method public getPathTypeValue()I
    .locals 1

    .line 7445
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getPathTypeValue()I

    move-result v0

    return v0
.end method

.method public getPredictTimeDuration()J
    .locals 2

    .line 7216
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getPredictTimeDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .line 7502
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getPriority()I

    move-result v0

    return v0
.end method

.method public getPriorityInfo()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;
    .locals 1

    .line 7689
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getPriorityInfo()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPriorityInfoValue()I
    .locals 1

    .line 7667
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getPriorityInfoValue()I

    move-result v0

    return v0
.end method

.method public getRouteId()J
    .locals 2

    .line 6888
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getRouteId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRouteScore()D
    .locals 2

    .line 7886
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getRouteScore()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRouteSelectedTimestamp()J
    .locals 2

    .line 8686
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getRouteSelectedTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRouteShowStatus()I
    .locals 1

    .line 7632
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getRouteShowStatus()I

    move-result v0

    return v0
.end method

.method public getSelectType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;
    .locals 1

    .line 8253
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getSelectType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    move-result-object v0

    return-object v0
.end method

.method public getSelectTypeValue()I
    .locals 1

    .line 8231
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getSelectTypeValue()I

    move-result v0

    return v0
.end method

.method public getSlotPreferType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;
    .locals 1

    .line 8310
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getSlotPreferType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    move-result-object v0

    return-object v0
.end method

.method public getSlotPreferTypeValue()I
    .locals 1

    .line 8288
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getSlotPreferTypeValue()I

    move-result v0

    return v0
.end method

.method public getStartEndClusterNumber()I
    .locals 1

    .line 7978
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getStartEndClusterNumber()I

    move-result v0

    return v0
.end method

.method public getStartSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;
    .locals 1

    .line 8139
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getStartSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    move-result-object v0

    return-object v0
.end method

.method public getStartSlotShapeValue()I
    .locals 1

    .line 8117
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getStartSlotShapeValue()I

    move-result v0

    return v0
.end method

.method public getTotalMileage()I
    .locals 1

    .line 6923
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getTotalMileage()I

    move-result v0

    return v0
.end method

.method public getTotalOddMilage()I
    .locals 1

    .line 7597
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getTotalOddMilage()I

    move-result v0

    return v0
.end method

.method public getUsingRawRouteType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;
    .locals 1

    .line 7943
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getUsingRawRouteType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;

    move-result-object v0

    return-object v0
.end method

.method public getUsingRawRouteTypeValue()I
    .locals 1

    .line 7921
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getUsingRawRouteTypeValue()I

    move-result v0

    return v0
.end method

.method public hasBeginLonlatPoint()Z
    .locals 1

    .line 6958
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->hasBeginLonlatPoint()Z

    move-result v0

    return v0
.end method

.method public hasCustomStatusMsg()Z
    .locals 1

    .line 8048
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->hasCustomStatusMsg()Z

    move-result v0

    return v0
.end method

.method public hasEndLonlatPoint()Z
    .locals 1

    .line 7087
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->hasEndLonlatPoint()Z

    move-result v0

    return v0
.end method

.method public mergeBeginLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7003
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7004
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$3200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public mergeCustomStatusMsg(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8093
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8094
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$9200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)V

    return-object p0
.end method

.method public mergeEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7132
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7133
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$3900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public removeInternalMapInfoList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8673
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8674
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$12400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setBeginLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 6991
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 6992
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$3100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-object p0
.end method

.method public setBeginLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 6978
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 6979
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$3000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public setBeginPointName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7049
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7050
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$3400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBeginPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7074
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7075
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$3600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setClusterNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7804
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7805
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$7600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setCreateTime(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7261
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7262
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$4600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;J)V

    return-object p0
.end method

.method public setCustomStatusMsg(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8081
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8082
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$9100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;)V

    return-object p0
.end method

.method public setCustomStatusMsg(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8068
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8069
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$9000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)V

    return-object p0
.end method

.method public setEgoInternalRoadState(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8377
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8378
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$10700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;)V

    return-object p0
.end method

.method public setEgoInternalRoadStateValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8355
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8356
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$10600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7120
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7121
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$3800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-object p0
.end method

.method public setEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7107
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7108
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$3700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public setEndPointName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7178
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7179
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$4100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEndPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7203
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7204
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$4300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEndSlotShape(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8206
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8207
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$9800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)V

    return-object p0
.end method

.method public setEndSlotShapeValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8184
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8185
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$9700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setFngpStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7420
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7421
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$5500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)V

    return-object p0
.end method

.method public setFngpStatusValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7398
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7399
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$5400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setInternalMapInfoList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8585
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8586
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$11700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)V

    return-object p0
.end method

.method public setInternalMapInfoList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8572
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8573
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$11600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V

    return-object p0
.end method

.method public setInternalRouteTypeList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8433
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8434
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$10900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)V

    return-object p0
.end method

.method public setInternalRouteTypeListValue(II)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8504
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8505
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$11300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;II)V

    return-object p0
.end method

.method public setIsCustom(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8023
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8024
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$8800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setIsLock(Z)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7364
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7365
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$5200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Z)V

    return-object p0
.end method

.method public setIsNaviEndMatch(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7769
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7770
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$7400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setIsRenamedRoute(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7734
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7735
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$7200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setIsSelected(Z)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7296
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7297
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$4800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Z)V

    return-object p0
.end method

.method public setLastUseTime(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7331
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7332
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$5000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;J)V

    return-object p0
.end method

.method public setLearnStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7861
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7862
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$7900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;)V

    return-object p0
.end method

.method public setLearnStatusValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7839
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7840
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$7800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7559
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7560
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$6200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7584
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7585
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$6400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPathType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7477
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7478
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$5800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;)V

    return-object p0
.end method

.method public setPathTypeValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7455
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7456
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$5700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setPredictTimeDuration(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7226
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7227
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$4400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;J)V

    return-object p0
.end method

.method public setPriority(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7512
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7513
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$6000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setPriorityInfo(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7699
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7700
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$7000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;)V

    return-object p0
.end method

.method public setPriorityInfoValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7677
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7678
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$6900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setRouteId(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 6898
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 6899
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$2600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;J)V

    return-object p0
.end method

.method public setRouteScore(D)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7896
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7897
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$8100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;D)V

    return-object p0
.end method

.method public setRouteSelectedTimestamp(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8696
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8697
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$12500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;J)V

    return-object p0
.end method

.method public setRouteShowStatus(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7642
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7643
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$6700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setSelectType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8263
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8264
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$10100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;)V

    return-object p0
.end method

.method public setSelectTypeValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8241
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8242
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$10000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setSlotPreferType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8320
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8321
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$10400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;)V

    return-object p0
.end method

.method public setSlotPreferTypeValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8298
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8299
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$10300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setStartEndClusterNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7988
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7989
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$8600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setStartSlotShape(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8149
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8150
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$9500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)V

    return-object p0
.end method

.method public setStartSlotShapeValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 8127
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 8128
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$9400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setTotalMileage(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 6933
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 6934
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$2800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setTotalOddMilage(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7607
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7608
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$6500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method

.method public setUsingRawRouteType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7953
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7954
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$8400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;)V

    return-object p0
.end method

.method public setUsingRawRouteTypeValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 7931
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->copyOnWrite()V

    .line 7932
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->access$8300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V

    return-object p0
.end method
