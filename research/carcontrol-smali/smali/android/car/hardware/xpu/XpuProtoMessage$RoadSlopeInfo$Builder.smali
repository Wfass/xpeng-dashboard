.class public final Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7996
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->access$14600()Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 7989
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSlopePoints(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;"
        }
    .end annotation

    .line 8099
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 8100
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->access$15500(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
    .locals 1

    .line 8090
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 8091
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->access$15400(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)V

    return-object p0
.end method

.method public addSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
    .locals 1

    .line 8072
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 8073
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->access$15200(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V

    return-object p0
.end method

.method public addSlopePoints(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
    .locals 1

    .line 8081
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 8082
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->access$15300(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)V

    return-object p0
.end method

.method public addSlopePoints(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
    .locals 1

    .line 8063
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 8064
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->access$15100(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V

    return-object p0
.end method

.method public clearSlopePoints()Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
    .locals 1

    .line 8107
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 8108
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->access$15600(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)V

    return-object p0
.end method

.method public clearSlopeType()Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
    .locals 1

    .line 8018
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 8019
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->access$14800(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)V

    return-object p0
.end method

.method public getSlopePoints(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
    .locals 1

    .line 8039
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->getSlopePoints(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    move-result-object p1

    return-object p1
.end method

.method public getSlopePointsCount()I
    .locals 1

    .line 8034
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->getSlopePointsCount()I

    move-result v0

    return v0
.end method

.method public getSlopePointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;",
            ">;"
        }
    .end annotation

    .line 8027
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    .line 8028
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->getSlopePointsList()Ljava/util/List;

    move-result-object v0

    .line 8027
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSlopeType()I
    .locals 1

    .line 8004
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->getSlopeType()I

    move-result v0

    return v0
.end method

.method public removeSlopePoints(I)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
    .locals 1

    .line 8115
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 8116
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->access$15700(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;I)V

    return-object p0
.end method

.method public setSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
    .locals 1

    .line 8055
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 8056
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->access$15000(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)V

    return-object p0
.end method

.method public setSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
    .locals 1

    .line 8046
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 8047
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->access$14900(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V

    return-object p0
.end method

.method public setSlopeType(I)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
    .locals 1

    .line 8010
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 8011
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->access$14700(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;I)V

    return-object p0
.end method
