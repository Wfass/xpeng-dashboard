.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoRespOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoRespOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3243
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$3900()Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 3236
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearXPULocatCurSpd()Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3509
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3510
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$5700(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPULocatPitch()Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3475
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$5500(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPULocatRoll()Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3439
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3440
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$5300(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPULocatS()Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3404
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3405
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$5100(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPULocatTheta()Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3369
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3370
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$4900(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPULocatX()Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3288
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3289
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$4300(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPULocatY()Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3311
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3312
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$4500(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPULocatZ()Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3334
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3335
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$4700(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPUTimestamp()Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3265
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3266
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$4100(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V

    return-object p0
.end method

.method public getXPULocatCurSpd()F
    .locals 1

    .line 3487
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->getXPULocatCurSpd()F

    move-result v0

    return v0
.end method

.method public getXPULocatPitch()F
    .locals 1

    .line 3452
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->getXPULocatPitch()F

    move-result v0

    return v0
.end method

.method public getXPULocatRoll()F
    .locals 1

    .line 3417
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->getXPULocatRoll()F

    move-result v0

    return v0
.end method

.method public getXPULocatS()F
    .locals 1

    .line 3382
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->getXPULocatS()F

    move-result v0

    return v0
.end method

.method public getXPULocatTheta()F
    .locals 1

    .line 3347
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->getXPULocatTheta()F

    move-result v0

    return v0
.end method

.method public getXPULocatX()F
    .locals 1

    .line 3274
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->getXPULocatX()F

    move-result v0

    return v0
.end method

.method public getXPULocatY()F
    .locals 1

    .line 3297
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->getXPULocatY()F

    move-result v0

    return v0
.end method

.method public getXPULocatZ()F
    .locals 1

    .line 3320
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->getXPULocatZ()F

    move-result v0

    return v0
.end method

.method public getXPUTimestamp()J
    .locals 2

    .line 3251
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->getXPUTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public setXPULocatCurSpd(F)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3497
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3498
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$5600(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPULocatPitch(F)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3462
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3463
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$5400(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPULocatRoll(F)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3427
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3428
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$5200(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPULocatS(F)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3392
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3393
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$5000(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPULocatTheta(F)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3357
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3358
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$4800(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPULocatX(F)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3280
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3281
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$4200(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPULocatY(F)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3303
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3304
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$4400(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPULocatZ(F)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3326
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3327
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$4600(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPUTimestamp(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3257
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3258
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->access$4000(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;J)V

    return-object p0
.end method
