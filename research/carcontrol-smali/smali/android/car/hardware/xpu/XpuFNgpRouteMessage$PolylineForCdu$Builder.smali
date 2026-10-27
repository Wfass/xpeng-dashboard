.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCduOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCduOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22495
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->access$38500()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 22488
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPoint(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;"
        }
    .end annotation

    .line 22575
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->copyOnWrite()V

    .line 22576
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->access$39200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;
    .locals 1

    .line 22566
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->copyOnWrite()V

    .line 22567
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->access$39100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V

    return-object p0
.end method

.method public addPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;
    .locals 1

    .line 22548
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->copyOnWrite()V

    .line 22549
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->access$38900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V

    return-object p0
.end method

.method public addPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;
    .locals 1

    .line 22557
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->copyOnWrite()V

    .line 22558
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->access$39000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V

    return-object p0
.end method

.method public addPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;
    .locals 1

    .line 22539
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->copyOnWrite()V

    .line 22540
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->access$38800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V

    return-object p0
.end method

.method public clearPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;
    .locals 1

    .line 22583
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->copyOnWrite()V

    .line 22584
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->access$39300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V

    return-object p0
.end method

.method public getPoint(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;
    .locals 1

    .line 22515
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->getPoint(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    move-result-object p1

    return-object p1
.end method

.method public getPointCount()I
    .locals 1

    .line 22510
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->getPointCount()I

    move-result v0

    return v0
.end method

.method public getPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;",
            ">;"
        }
    .end annotation

    .line 22503
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    .line 22504
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->getPointList()Ljava/util/List;

    move-result-object v0

    .line 22503
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removePoint(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;
    .locals 1

    .line 22591
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->copyOnWrite()V

    .line 22592
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->access$39400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;I)V

    return-object p0
.end method

.method public setPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;
    .locals 1

    .line 22531
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->copyOnWrite()V

    .line 22532
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->access$38700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V

    return-object p0
.end method

.method public setPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;
    .locals 1

    .line 22522
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->copyOnWrite()V

    .line 22523
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->access$38600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V

    return-object p0
.end method
