.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8250
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->access$15700()Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 8243
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHeightDiff()Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;
    .locals 1

    .line 8317
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->copyOnWrite()V

    .line 8318
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->access$16300(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V

    return-object p0
.end method

.method public clearSlopeAngle()Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;
    .locals 1

    .line 8340
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->copyOnWrite()V

    .line 8341
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->access$16500(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V

    return-object p0
.end method

.method public clearSlopeLength()Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;
    .locals 1

    .line 8363
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->copyOnWrite()V

    .line 8364
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->access$16700(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V

    return-object p0
.end method

.method public clearSlopePoint()Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;
    .locals 1

    .line 8294
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->copyOnWrite()V

    .line 8295
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->access$16100(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V

    return-object p0
.end method

.method public getHeightDiff()I
    .locals 1

    .line 8303
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->getHeightDiff()I

    move-result v0

    return v0
.end method

.method public getSlopeAngle()I
    .locals 1

    .line 8326
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->getSlopeAngle()I

    move-result v0

    return v0
.end method

.method public getSlopeLength()J
    .locals 2

    .line 8349
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->getSlopeLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSlopePoint()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 8264
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->getSlopePoint()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public hasSlopePoint()Z
    .locals 1

    .line 8258
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->hasSlopePoint()Z

    move-result v0

    return v0
.end method

.method public mergeSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;
    .locals 1

    .line 8287
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->copyOnWrite()V

    .line 8288
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->access$16000(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public setHeightDiff(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;
    .locals 1

    .line 8309
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->copyOnWrite()V

    .line 8310
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->access$16200(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;I)V

    return-object p0
.end method

.method public setSlopeAngle(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;
    .locals 1

    .line 8332
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->copyOnWrite()V

    .line 8333
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->access$16400(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;I)V

    return-object p0
.end method

.method public setSlopeLength(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;
    .locals 1

    .line 8355
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->copyOnWrite()V

    .line 8356
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->access$16600(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;J)V

    return-object p0
.end method

.method public setSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;
    .locals 1

    .line 8279
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->copyOnWrite()V

    .line 8280
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->access$15900(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public setSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;
    .locals 1

    .line 8270
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->copyOnWrite()V

    .line 8271
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->access$15800(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method
