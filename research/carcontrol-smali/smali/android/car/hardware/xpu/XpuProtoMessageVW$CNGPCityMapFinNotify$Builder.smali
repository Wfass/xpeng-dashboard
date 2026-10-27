.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotifyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotifyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2555
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->access$3300()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 2548
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCityCode()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;
    .locals 1

    .line 2589
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;->copyOnWrite()V

    .line 2590
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->access$3500(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;)V

    return-object p0
.end method

.method public clearResult()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;
    .locals 1

    .line 2624
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;->copyOnWrite()V

    .line 2625
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->access$3700(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;)V

    return-object p0
.end method

.method public getCityCode()I
    .locals 1

    .line 2567
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->getCityCode()I

    move-result v0

    return v0
.end method

.method public getResult()I
    .locals 1

    .line 2602
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->getResult()I

    move-result v0

    return v0
.end method

.method public setCityCode(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;
    .locals 1

    .line 2577
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;->copyOnWrite()V

    .line 2578
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->access$3400(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;I)V

    return-object p0
.end method

.method public setResult(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;
    .locals 1

    .line 2612
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;->copyOnWrite()V

    .line 2613
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->access$3600(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;I)V

    return-object p0
.end method
