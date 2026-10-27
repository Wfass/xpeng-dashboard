.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1606
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->access$1200()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 1599
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCityCode()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1640
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->copyOnWrite()V

    .line 1641
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->access$1400(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V

    return-object p0
.end method

.method public clearMapProgress()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1710
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->copyOnWrite()V

    .line 1711
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->access$1800(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V

    return-object p0
.end method

.method public clearMapStatus()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1675
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->copyOnWrite()V

    .line 1676
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->access$1600(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V

    return-object p0
.end method

.method public getCityCode()I
    .locals 1

    .line 1618
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->getCityCode()I

    move-result v0

    return v0
.end method

.method public getMapProgress()I
    .locals 1

    .line 1688
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->getMapProgress()I

    move-result v0

    return v0
.end method

.method public getMapStatus()I
    .locals 1

    .line 1653
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->getMapStatus()I

    move-result v0

    return v0
.end method

.method public setCityCode(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1628
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->copyOnWrite()V

    .line 1629
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->access$1300(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;I)V

    return-object p0
.end method

.method public setMapProgress(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1698
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->copyOnWrite()V

    .line 1699
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->access$1700(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;I)V

    return-object p0
.end method

.method public setMapStatus(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1663
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->copyOnWrite()V

    .line 1664
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->access$1500(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;I)V

    return-object p0
.end method
