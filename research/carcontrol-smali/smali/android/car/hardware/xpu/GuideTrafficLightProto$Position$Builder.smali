.class public final Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "GuideTrafficLightProto.java"

# interfaces
.implements Landroid/car/hardware/xpu/GuideTrafficLightProto$PositionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;",
        "Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/GuideTrafficLightProto$PositionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 448
    invoke-static {}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->access$000()Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/GuideTrafficLightProto$1;)V
    .locals 0

    .line 441
    invoke-direct {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAlt()Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;
    .locals 1

    .line 516
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->copyOnWrite()V

    .line 517
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->access$600(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)V

    return-object p0
.end method

.method public clearLat()Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;
    .locals 1

    .line 493
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->copyOnWrite()V

    .line 494
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->access$400(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)V

    return-object p0
.end method

.method public clearLon()Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;
    .locals 1

    .line 470
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->copyOnWrite()V

    .line 471
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->access$200(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)V

    return-object p0
.end method

.method public getAlt()D
    .locals 2

    .line 502
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->getAlt()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLat()D
    .locals 2

    .line 479
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->getLat()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .line 456
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->getLon()D

    move-result-wide v0

    return-wide v0
.end method

.method public setAlt(D)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;
    .locals 1

    .line 508
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->copyOnWrite()V

    .line 509
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->access$500(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;D)V

    return-object p0
.end method

.method public setLat(D)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;
    .locals 1

    .line 485
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->copyOnWrite()V

    .line 486
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->access$300(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;D)V

    return-object p0
.end method

.method public setLon(D)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;
    .locals 1

    .line 462
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->copyOnWrite()V

    .line 463
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->access$100(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;D)V

    return-object p0
.end method
