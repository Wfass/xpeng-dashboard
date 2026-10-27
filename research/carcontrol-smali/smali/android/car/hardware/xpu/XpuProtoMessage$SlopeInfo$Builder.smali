.class public final Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8511
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->access$15900()Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 8504
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHeightDiff()Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;
    .locals 1

    .line 8578
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->copyOnWrite()V

    .line 8579
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->access$16500(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V

    return-object p0
.end method

.method public clearSlopeAngle()Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;
    .locals 1

    .line 8601
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->copyOnWrite()V

    .line 8602
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->access$16700(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V

    return-object p0
.end method

.method public clearSlopeLength()Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;
    .locals 1

    .line 8624
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->copyOnWrite()V

    .line 8625
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->access$16900(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V

    return-object p0
.end method

.method public clearSlopePoint()Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;
    .locals 1

    .line 8555
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->copyOnWrite()V

    .line 8556
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->access$16300(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V

    return-object p0
.end method

.method public getHeightDiff()I
    .locals 1

    .line 8564
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->getHeightDiff()I

    move-result v0

    return v0
.end method

.method public getSlopeAngle()I
    .locals 1

    .line 8587
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->getSlopeAngle()I

    move-result v0

    return v0
.end method

.method public getSlopeLength()J
    .locals 2

    .line 8610
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->getSlopeLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSlopePoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 8525
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->getSlopePoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public hasSlopePoint()Z
    .locals 1

    .line 8519
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->hasSlopePoint()Z

    move-result v0

    return v0
.end method

.method public mergeSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;
    .locals 1

    .line 8548
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->copyOnWrite()V

    .line 8549
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->access$16200(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public setHeightDiff(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;
    .locals 1

    .line 8570
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->copyOnWrite()V

    .line 8571
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->access$16400(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;I)V

    return-object p0
.end method

.method public setSlopeAngle(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;
    .locals 1

    .line 8593
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->copyOnWrite()V

    .line 8594
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->access$16600(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;I)V

    return-object p0
.end method

.method public setSlopeLength(J)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;
    .locals 1

    .line 8616
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->copyOnWrite()V

    .line 8617
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->access$16800(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;J)V

    return-object p0
.end method

.method public setSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;
    .locals 1

    .line 8540
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->copyOnWrite()V

    .line 8541
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->access$16100(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public setSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;
    .locals 1

    .line 8531
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->copyOnWrite()V

    .line 8532
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->access$16000(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method
