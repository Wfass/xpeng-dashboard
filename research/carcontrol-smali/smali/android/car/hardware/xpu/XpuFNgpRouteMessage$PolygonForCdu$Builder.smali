.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCduOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCduOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22037
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->access$37400()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 22030
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPoint(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;"
        }
    .end annotation

    .line 22117
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->copyOnWrite()V

    .line 22118
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->access$38100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;
    .locals 1

    .line 22108
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->copyOnWrite()V

    .line 22109
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->access$38000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V

    return-object p0
.end method

.method public addPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;
    .locals 1

    .line 22090
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->copyOnWrite()V

    .line 22091
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->access$37800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V

    return-object p0
.end method

.method public addPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;
    .locals 1

    .line 22099
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->copyOnWrite()V

    .line 22100
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->access$37900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V

    return-object p0
.end method

.method public addPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;
    .locals 1

    .line 22081
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->copyOnWrite()V

    .line 22082
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->access$37700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V

    return-object p0
.end method

.method public clearPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;
    .locals 1

    .line 22125
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->copyOnWrite()V

    .line 22126
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->access$38200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V

    return-object p0
.end method

.method public getPoint(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;
    .locals 1

    .line 22057
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->getPoint(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    move-result-object p1

    return-object p1
.end method

.method public getPointCount()I
    .locals 1

    .line 22052
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->getPointCount()I

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

    .line 22045
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    .line 22046
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->getPointList()Ljava/util/List;

    move-result-object v0

    .line 22045
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removePoint(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;
    .locals 1

    .line 22133
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->copyOnWrite()V

    .line 22134
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->access$38300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;I)V

    return-object p0
.end method

.method public setPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;
    .locals 1

    .line 22073
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->copyOnWrite()V

    .line 22074
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->access$37600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V

    return-object p0
.end method

.method public setPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;
    .locals 1

    .line 22064
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->copyOnWrite()V

    .line 22065
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->access$37500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V

    return-object p0
.end method
