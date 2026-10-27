.class public final Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotifyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotifyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2722
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;->access$3300()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 2715
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCityCode()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;
    .locals 1

    .line 2756
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;->copyOnWrite()V

    .line 2757
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;->access$3500(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;)V

    return-object p0
.end method

.method public clearResult()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;
    .locals 1

    .line 2791
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;->copyOnWrite()V

    .line 2792
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;->access$3700(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;)V

    return-object p0
.end method

.method public getCityCode()I
    .locals 1

    .line 2734
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;->getCityCode()I

    move-result v0

    return v0
.end method

.method public getResult()I
    .locals 1

    .line 2769
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;->getResult()I

    move-result v0

    return v0
.end method

.method public setCityCode(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;
    .locals 1

    .line 2744
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;->copyOnWrite()V

    .line 2745
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;->access$3400(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;I)V

    return-object p0
.end method

.method public setResult(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;
    .locals 1

    .line 2779
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;->copyOnWrite()V

    .line 2780
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;->access$3600(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;I)V

    return-object p0
.end method
