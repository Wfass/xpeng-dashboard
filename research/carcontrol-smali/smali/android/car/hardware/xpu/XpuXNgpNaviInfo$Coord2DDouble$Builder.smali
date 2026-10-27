.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDoubleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDoubleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6049
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->access$7200()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V
    .locals 0

    .line 6042
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearX()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;
    .locals 1

    .line 6071
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->copyOnWrite()V

    .line 6072
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->access$7400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V

    return-object p0
.end method

.method public clearY()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;
    .locals 1

    .line 6094
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->copyOnWrite()V

    .line 6095
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->access$7600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V

    return-object p0
.end method

.method public getX()D
    .locals 2

    .line 6057
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 6080
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public setX(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;
    .locals 1

    .line 6063
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->copyOnWrite()V

    .line 6064
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->access$7300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;D)V

    return-object p0
.end method

.method public setY(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;
    .locals 1

    .line 6086
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->copyOnWrite()V

    .line 6087
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->access$7500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;D)V

    return-object p0
.end method
