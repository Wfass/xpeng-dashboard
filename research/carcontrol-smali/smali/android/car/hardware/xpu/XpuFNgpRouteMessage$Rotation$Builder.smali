.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RotationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RotationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19092
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->access$32200()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 19085
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPitch()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;
    .locals 1

    .line 19161
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->copyOnWrite()V

    .line 19162
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->access$32600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)V

    return-object p0
.end method

.method public clearRoll()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;
    .locals 1

    .line 19126
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->copyOnWrite()V

    .line 19127
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->access$32400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)V

    return-object p0
.end method

.method public clearYaw()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;
    .locals 1

    .line 19196
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->copyOnWrite()V

    .line 19197
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->access$32800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)V

    return-object p0
.end method

.method public getPitch()D
    .locals 2

    .line 19139
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->getPitch()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRoll()D
    .locals 2

    .line 19104
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->getRoll()D

    move-result-wide v0

    return-wide v0
.end method

.method public getYaw()D
    .locals 2

    .line 19174
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->getYaw()D

    move-result-wide v0

    return-wide v0
.end method

.method public setPitch(D)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;
    .locals 1

    .line 19149
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->copyOnWrite()V

    .line 19150
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->access$32500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;D)V

    return-object p0
.end method

.method public setRoll(D)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;
    .locals 1

    .line 19114
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->copyOnWrite()V

    .line 19115
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->access$32300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;D)V

    return-object p0
.end method

.method public setYaw(D)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;
    .locals 1

    .line 19184
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->copyOnWrite()V

    .line 19185
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->access$32700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;D)V

    return-object p0
.end method
