.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPoseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPoseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21519
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->access$36400()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 21512
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearV2Offset()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;
    .locals 1

    .line 21658
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->copyOnWrite()V

    .line 21659
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->access$37200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V

    return-object p0
.end method

.method public clearX()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;
    .locals 1

    .line 21553
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->copyOnWrite()V

    .line 21554
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->access$36600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V

    return-object p0
.end method

.method public clearY()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;
    .locals 1

    .line 21588
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->copyOnWrite()V

    .line 21589
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->access$36800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V

    return-object p0
.end method

.method public clearZ()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;
    .locals 1

    .line 21623
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->copyOnWrite()V

    .line 21624
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->access$37000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V

    return-object p0
.end method

.method public getV2Offset()I
    .locals 1

    .line 21636
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->getV2Offset()I

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .line 21531
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .line 21566
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->getY()F

    move-result v0

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 21601
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->getZ()F

    move-result v0

    return v0
.end method

.method public setV2Offset(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;
    .locals 1

    .line 21646
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->copyOnWrite()V

    .line 21647
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->access$37100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;I)V

    return-object p0
.end method

.method public setX(F)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;
    .locals 1

    .line 21541
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->copyOnWrite()V

    .line 21542
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->access$36500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;F)V

    return-object p0
.end method

.method public setY(F)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;
    .locals 1

    .line 21576
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->copyOnWrite()V

    .line 21577
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->access$36700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;F)V

    return-object p0
.end method

.method public setZ(F)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;
    .locals 1

    .line 21611
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->copyOnWrite()V

    .line 21612
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->access$36900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;F)V

    return-object p0
.end method
