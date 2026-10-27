.class public final Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoRespOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoRespOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3410
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$3900()Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 3403
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearXPULocatCurSpd()Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3676
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3677
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$5700(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPULocatPitch()Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3641
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3642
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$5500(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPULocatRoll()Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3606
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3607
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$5300(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPULocatS()Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3571
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3572
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$5100(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPULocatTheta()Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3536
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3537
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$4900(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPULocatX()Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3455
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3456
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$4300(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPULocatY()Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3478
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3479
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$4500(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPULocatZ()Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3501
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3502
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$4700(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;)V

    return-object p0
.end method

.method public clearXPUTimestamp()Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3432
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3433
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$4100(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;)V

    return-object p0
.end method

.method public getXPULocatCurSpd()F
    .locals 1

    .line 3654
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->getXPULocatCurSpd()F

    move-result v0

    return v0
.end method

.method public getXPULocatPitch()F
    .locals 1

    .line 3619
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->getXPULocatPitch()F

    move-result v0

    return v0
.end method

.method public getXPULocatRoll()F
    .locals 1

    .line 3584
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->getXPULocatRoll()F

    move-result v0

    return v0
.end method

.method public getXPULocatS()F
    .locals 1

    .line 3549
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->getXPULocatS()F

    move-result v0

    return v0
.end method

.method public getXPULocatTheta()F
    .locals 1

    .line 3514
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->getXPULocatTheta()F

    move-result v0

    return v0
.end method

.method public getXPULocatX()F
    .locals 1

    .line 3441
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->getXPULocatX()F

    move-result v0

    return v0
.end method

.method public getXPULocatY()F
    .locals 1

    .line 3464
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->getXPULocatY()F

    move-result v0

    return v0
.end method

.method public getXPULocatZ()F
    .locals 1

    .line 3487
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->getXPULocatZ()F

    move-result v0

    return v0
.end method

.method public getXPUTimestamp()J
    .locals 2

    .line 3418
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->getXPUTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public setXPULocatCurSpd(F)Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3664
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3665
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$5600(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPULocatPitch(F)Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3629
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3630
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$5400(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPULocatRoll(F)Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3594
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3595
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$5200(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPULocatS(F)Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3559
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3560
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$5000(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPULocatTheta(F)Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3524
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3525
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$4800(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPULocatX(F)Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3447
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3448
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$4200(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPULocatY(F)Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3470
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3471
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$4400(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPULocatZ(F)Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3493
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3494
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$4600(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;F)V

    return-object p0
.end method

.method public setXPUTimestamp(J)Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;
    .locals 1

    .line 3424
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->copyOnWrite()V

    .line 3425
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->access$4000(Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;J)V

    return-object p0
.end method
