.class public final Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1773
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->access$1200()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 1766
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCityCode()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1807
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->copyOnWrite()V

    .line 1808
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->access$1400(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V

    return-object p0
.end method

.method public clearMapProgress()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1877
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->copyOnWrite()V

    .line 1878
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->access$1800(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V

    return-object p0
.end method

.method public clearMapStatus()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1842
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->copyOnWrite()V

    .line 1843
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->access$1600(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V

    return-object p0
.end method

.method public getCityCode()I
    .locals 1

    .line 1785
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->getCityCode()I

    move-result v0

    return v0
.end method

.method public getMapProgress()I
    .locals 1

    .line 1855
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->getMapProgress()I

    move-result v0

    return v0
.end method

.method public getMapStatus()I
    .locals 1

    .line 1820
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->getMapStatus()I

    move-result v0

    return v0
.end method

.method public setCityCode(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1795
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->copyOnWrite()V

    .line 1796
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->access$1300(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;I)V

    return-object p0
.end method

.method public setMapProgress(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1865
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->copyOnWrite()V

    .line 1866
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->access$1700(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;I)V

    return-object p0
.end method

.method public setMapStatus(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1830
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->copyOnWrite()V

    .line 1831
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->access$1500(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;I)V

    return-object p0
.end method
