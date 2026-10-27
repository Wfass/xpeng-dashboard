.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7206
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->access$13200()Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 7199
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAngle()Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;
    .locals 1

    .line 7274
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->copyOnWrite()V

    .line 7275
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->access$13800(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V

    return-object p0
.end method

.method public clearHeight()Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;
    .locals 1

    .line 7320
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->copyOnWrite()V

    .line 7321
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->access$14200(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V

    return-object p0
.end method

.method public clearLat()Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;
    .locals 1

    .line 7251
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->copyOnWrite()V

    .line 7252
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->access$13600(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V

    return-object p0
.end method

.method public clearLength()Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;
    .locals 1

    .line 7297
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->copyOnWrite()V

    .line 7298
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->access$14000(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V

    return-object p0
.end method

.method public clearLon()Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;
    .locals 1

    .line 7228
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->copyOnWrite()V

    .line 7229
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->access$13400(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V

    return-object p0
.end method

.method public getAngle()I
    .locals 1

    .line 7260
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->getAngle()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 7306
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLat()I
    .locals 1

    .line 7237
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->getLat()I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 7283
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->getLength()I

    move-result v0

    return v0
.end method

.method public getLon()I
    .locals 1

    .line 7214
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->getLon()I

    move-result v0

    return v0
.end method

.method public setAngle(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;
    .locals 1

    .line 7266
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->copyOnWrite()V

    .line 7267
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->access$13700(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;I)V

    return-object p0
.end method

.method public setHeight(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;
    .locals 1

    .line 7312
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->copyOnWrite()V

    .line 7313
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->access$14100(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;I)V

    return-object p0
.end method

.method public setLat(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;
    .locals 1

    .line 7243
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->copyOnWrite()V

    .line 7244
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->access$13500(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;I)V

    return-object p0
.end method

.method public setLength(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;
    .locals 1

    .line 7289
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->copyOnWrite()V

    .line 7290
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->access$13900(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;I)V

    return-object p0
.end method

.method public setLon(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;
    .locals 1

    .line 7220
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->copyOnWrite()V

    .line 7221
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->access$13300(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;I)V

    return-object p0
.end method
