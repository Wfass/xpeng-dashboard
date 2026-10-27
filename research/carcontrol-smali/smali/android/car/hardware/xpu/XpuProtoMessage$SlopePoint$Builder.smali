.class public final Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$SlopePointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7467
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->access$13400()Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 7460
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAngle()Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;
    .locals 1

    .line 7535
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->copyOnWrite()V

    .line 7536
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->access$14000(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V

    return-object p0
.end method

.method public clearHeight()Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;
    .locals 1

    .line 7581
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->copyOnWrite()V

    .line 7582
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->access$14400(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V

    return-object p0
.end method

.method public clearLat()Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;
    .locals 1

    .line 7512
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->copyOnWrite()V

    .line 7513
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->access$13800(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V

    return-object p0
.end method

.method public clearLength()Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;
    .locals 1

    .line 7558
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->copyOnWrite()V

    .line 7559
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->access$14200(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V

    return-object p0
.end method

.method public clearLon()Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;
    .locals 1

    .line 7489
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->copyOnWrite()V

    .line 7490
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->access$13600(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V

    return-object p0
.end method

.method public getAngle()I
    .locals 1

    .line 7521
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->getAngle()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 7567
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLat()I
    .locals 1

    .line 7498
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->getLat()I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 7544
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->getLength()I

    move-result v0

    return v0
.end method

.method public getLon()I
    .locals 1

    .line 7475
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->getLon()I

    move-result v0

    return v0
.end method

.method public setAngle(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;
    .locals 1

    .line 7527
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->copyOnWrite()V

    .line 7528
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->access$13900(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;I)V

    return-object p0
.end method

.method public setHeight(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;
    .locals 1

    .line 7573
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->copyOnWrite()V

    .line 7574
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->access$14300(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;I)V

    return-object p0
.end method

.method public setLat(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;
    .locals 1

    .line 7504
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->copyOnWrite()V

    .line 7505
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->access$13700(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;I)V

    return-object p0
.end method

.method public setLength(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;
    .locals 1

    .line 7550
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->copyOnWrite()V

    .line 7551
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->access$14100(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;I)V

    return-object p0
.end method

.method public setLon(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;
    .locals 1

    .line 7481
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->copyOnWrite()V

    .line 7482
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->access$13500(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;I)V

    return-object p0
.end method
