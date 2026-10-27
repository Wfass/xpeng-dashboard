.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3fOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3fOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16995
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;->access$28500()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 16988
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearX()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;
    .locals 1

    .line 17029
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->copyOnWrite()V

    .line 17030
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;->access$28700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V

    return-object p0
.end method

.method public clearY()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;
    .locals 1

    .line 17064
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->copyOnWrite()V

    .line 17065
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;->access$28900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V

    return-object p0
.end method

.method public clearZ()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;
    .locals 1

    .line 17099
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->copyOnWrite()V

    .line 17100
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;->access$29100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V

    return-object p0
.end method

.method public getX()F
    .locals 1

    .line 17007
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .line 17042
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;->getY()F

    move-result v0

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 17077
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;->getZ()F

    move-result v0

    return v0
.end method

.method public setX(F)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;
    .locals 1

    .line 17017
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->copyOnWrite()V

    .line 17018
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;->access$28600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;F)V

    return-object p0
.end method

.method public setY(F)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;
    .locals 1

    .line 17052
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->copyOnWrite()V

    .line 17053
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;->access$28800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;F)V

    return-object p0
.end method

.method public setZ(F)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;
    .locals 1

    .line 17087
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->copyOnWrite()V

    .line 17088
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;->access$29000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;F)V

    return-object p0
.end method
