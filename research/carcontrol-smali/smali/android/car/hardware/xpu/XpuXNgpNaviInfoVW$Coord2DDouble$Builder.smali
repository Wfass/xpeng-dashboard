.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfoVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDoubleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDoubleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5699
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;->access$6500()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;)V
    .locals 0

    .line 5692
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearX()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;
    .locals 1

    .line 5721
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->copyOnWrite()V

    .line 5722
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;->access$6700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;)V

    return-object p0
.end method

.method public clearY()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;
    .locals 1

    .line 5744
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->copyOnWrite()V

    .line 5745
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;->access$6900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;)V

    return-object p0
.end method

.method public getX()D
    .locals 2

    .line 5707
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 5730
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public setX(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;
    .locals 1

    .line 5713
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->copyOnWrite()V

    .line 5714
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;->access$6600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;D)V

    return-object p0
.end method

.method public setY(D)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;
    .locals 1

    .line 5736
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->copyOnWrite()V

    .line 5737
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;->access$6800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;D)V

    return-object p0
.end method
