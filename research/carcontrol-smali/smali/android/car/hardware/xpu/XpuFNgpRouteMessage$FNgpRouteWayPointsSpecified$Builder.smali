.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecifiedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecifiedOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12447
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->access$19400()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 12440
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllV2PointListSpecified(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;"
        }
    .end annotation

    .line 12527
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->copyOnWrite()V

    .line 12528
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->access$20100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addV2PointListSpecified(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;
    .locals 1

    .line 12518
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->copyOnWrite()V

    .line 12519
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->access$20000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-object p0
.end method

.method public addV2PointListSpecified(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;
    .locals 1

    .line 12500
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->copyOnWrite()V

    .line 12501
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->access$19800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public addV2PointListSpecified(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;
    .locals 1

    .line 12509
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->copyOnWrite()V

    .line 12510
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->access$19900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-object p0
.end method

.method public addV2PointListSpecified(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;
    .locals 1

    .line 12491
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->copyOnWrite()V

    .line 12492
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->access$19700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public clearV2PointListSpecified()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;
    .locals 1

    .line 12535
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->copyOnWrite()V

    .line 12536
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->access$20200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;)V

    return-object p0
.end method

.method public getV2PointListSpecified(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
    .locals 1

    .line 12467
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->getV2PointListSpecified(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object p1

    return-object p1
.end method

.method public getV2PointListSpecifiedCount()I
    .locals 1

    .line 12462
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->getV2PointListSpecifiedCount()I

    move-result v0

    return v0
.end method

.method public getV2PointListSpecifiedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;",
            ">;"
        }
    .end annotation

    .line 12455
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    .line 12456
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->getV2PointListSpecifiedList()Ljava/util/List;

    move-result-object v0

    .line 12455
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeV2PointListSpecified(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;
    .locals 1

    .line 12543
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->copyOnWrite()V

    .line 12544
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->access$20300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;I)V

    return-object p0
.end method

.method public setV2PointListSpecified(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;
    .locals 1

    .line 12483
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->copyOnWrite()V

    .line 12484
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->access$19600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-object p0
.end method

.method public setV2PointListSpecified(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;
    .locals 1

    .line 12474
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->copyOnWrite()V

    .line 12475
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->access$19500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method
