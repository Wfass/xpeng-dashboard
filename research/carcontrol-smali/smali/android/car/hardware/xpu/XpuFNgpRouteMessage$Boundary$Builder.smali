.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24434
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->access$42300()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 24427
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAscription()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;
    .locals 1

    .line 24510
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->copyOnWrite()V

    .line 24511
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->access$42900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V

    return-object p0
.end method

.method public clearId()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;
    .locals 1

    .line 24464
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->copyOnWrite()V

    .line 24465
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->access$42500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V

    return-object p0
.end method

.method public clearPolyline()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;
    .locals 1

    .line 24555
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->copyOnWrite()V

    .line 24556
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->access$43300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V

    return-object p0
.end method

.method public getAscription()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;
    .locals 1

    .line 24496
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->getAscription()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    move-result-object v0

    return-object v0
.end method

.method public getAscriptionValue()I
    .locals 1

    .line 24482
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->getAscriptionValue()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 24442
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 24449
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->getIdBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPolyline()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1

    .line 24525
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->getPolyline()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    move-result-object v0

    return-object v0
.end method

.method public hasPolyline()Z
    .locals 1

    .line 24519
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->hasPolyline()Z

    move-result v0

    return v0
.end method

.method public mergePolyline(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;
    .locals 1

    .line 24548
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->copyOnWrite()V

    .line 24549
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->access$43200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V

    return-object p0
.end method

.method public setAscription(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;
    .locals 1

    .line 24502
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->copyOnWrite()V

    .line 24503
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->access$42800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;)V

    return-object p0
.end method

.method public setAscriptionValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;
    .locals 1

    .line 24488
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->copyOnWrite()V

    .line 24489
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->access$42700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;I)V

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;
    .locals 1

    .line 24456
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->copyOnWrite()V

    .line 24457
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->access$42400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;
    .locals 1

    .line 24473
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->copyOnWrite()V

    .line 24474
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->access$42600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPolyline(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;
    .locals 1

    .line 24540
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->copyOnWrite()V

    .line 24541
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->access$43100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;)V

    return-object p0
.end method

.method public setPolyline(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;
    .locals 1

    .line 24531
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->copyOnWrite()V

    .line 24532
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->access$43000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V

    return-object p0
.end method
