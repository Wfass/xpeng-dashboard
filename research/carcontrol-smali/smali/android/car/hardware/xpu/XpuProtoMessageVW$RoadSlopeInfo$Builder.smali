.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7735
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->access$14400()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 7728
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSlopePoints(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;"
        }
    .end annotation

    .line 7838
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 7839
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->access$15300(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
    .locals 1

    .line 7829
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 7830
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->access$15200(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)V

    return-object p0
.end method

.method public addSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
    .locals 1

    .line 7811
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 7812
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->access$15000(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V

    return-object p0
.end method

.method public addSlopePoints(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
    .locals 1

    .line 7820
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 7821
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->access$15100(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)V

    return-object p0
.end method

.method public addSlopePoints(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
    .locals 1

    .line 7802
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 7803
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->access$14900(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V

    return-object p0
.end method

.method public clearSlopePoints()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
    .locals 1

    .line 7846
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 7847
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->access$15400(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)V

    return-object p0
.end method

.method public clearSlopeType()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
    .locals 1

    .line 7757
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 7758
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->access$14600(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)V

    return-object p0
.end method

.method public getSlopePoints(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;
    .locals 1

    .line 7778
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->getSlopePoints(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    move-result-object p1

    return-object p1
.end method

.method public getSlopePointsCount()I
    .locals 1

    .line 7773
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->getSlopePointsCount()I

    move-result v0

    return v0
.end method

.method public getSlopePointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;",
            ">;"
        }
    .end annotation

    .line 7766
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    .line 7767
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->getSlopePointsList()Ljava/util/List;

    move-result-object v0

    .line 7766
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSlopeType()I
    .locals 1

    .line 7743
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->getSlopeType()I

    move-result v0

    return v0
.end method

.method public removeSlopePoints(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
    .locals 1

    .line 7854
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 7855
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->access$15500(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;I)V

    return-object p0
.end method

.method public setSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
    .locals 1

    .line 7794
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 7795
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->access$14800(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)V

    return-object p0
.end method

.method public setSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
    .locals 1

    .line 7785
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 7786
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->access$14700(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V

    return-object p0
.end method

.method public setSlopeType(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
    .locals 1

    .line 7749
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->copyOnWrite()V

    .line 7750
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->access$14500(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;I)V

    return-object p0
.end method
