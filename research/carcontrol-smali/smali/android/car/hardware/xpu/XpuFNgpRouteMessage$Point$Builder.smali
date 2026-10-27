.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2934
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->access$000()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 2927
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearX()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;
    .locals 1

    .line 2956
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->copyOnWrite()V

    .line 2957
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->access$200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public clearY()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;
    .locals 1

    .line 2979
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->copyOnWrite()V

    .line 2980
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->access$400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public clearZ()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;
    .locals 1

    .line 3002
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->copyOnWrite()V

    .line 3003
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->access$600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public getX()D
    .locals 2

    .line 2942
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 2965
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public getZ()D
    .locals 2

    .line 2988
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->getZ()D

    move-result-wide v0

    return-wide v0
.end method

.method public setX(D)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;
    .locals 1

    .line 2948
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->copyOnWrite()V

    .line 2949
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->access$100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;D)V

    return-object p0
.end method

.method public setY(D)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;
    .locals 1

    .line 2971
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->copyOnWrite()V

    .line 2972
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->access$300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;D)V

    return-object p0
.end method

.method public setZ(D)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;
    .locals 1

    .line 2994
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->copyOnWrite()V

    .line 2995
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->access$500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;D)V

    return-object p0
.end method
