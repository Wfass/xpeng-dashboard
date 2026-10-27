.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8361
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->access$18600()Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V
    .locals 0

    .line 8354
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDistance()Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;
    .locals 1

    .line 8383
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->copyOnWrite()V

    .line 8384
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->access$18800(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)V

    return-object p0
.end method

.method public clearPercent()Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;
    .locals 1

    .line 8406
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->copyOnWrite()V

    .line 8407
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->access$19000(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)V

    return-object p0
.end method

.method public getDistance()F
    .locals 1

    .line 8369
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->getDistance()F

    move-result v0

    return v0
.end method

.method public getPercent()F
    .locals 1

    .line 8392
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->getPercent()F

    move-result v0

    return v0
.end method

.method public setDistance(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;
    .locals 1

    .line 8375
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->copyOnWrite()V

    .line 8376
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->access$18700(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;F)V

    return-object p0
.end method

.method public setPercent(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;
    .locals 1

    .line 8398
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->copyOnWrite()V

    .line 8399
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->access$18900(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;F)V

    return-object p0
.end method
