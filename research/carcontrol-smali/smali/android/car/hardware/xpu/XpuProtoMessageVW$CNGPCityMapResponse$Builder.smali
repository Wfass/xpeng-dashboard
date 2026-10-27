.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2092
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->access$2000()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 2085
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCities(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;"
        }
    .end annotation

    .line 2172
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2173
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->access$2700(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2163
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2164
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->access$2600(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)V

    return-object p0
.end method

.method public addCities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2145
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2146
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->access$2400(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V

    return-object p0
.end method

.method public addCities(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2154
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2155
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->access$2500(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)V

    return-object p0
.end method

.method public addCities(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2136
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2137
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->access$2300(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V

    return-object p0
.end method

.method public clearCities()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2180
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2181
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->access$2800(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;)V

    return-object p0
.end method

.method public clearErrorCode()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2223
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2224
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->access$3100(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;)V

    return-object p0
.end method

.method public getCities(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
    .locals 1

    .line 2112
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->getCities(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    move-result-object p1

    return-object p1
.end method

.method public getCitiesCount()I
    .locals 1

    .line 2107
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->getCitiesCount()I

    move-result v0

    return v0
.end method

.method public getCitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;",
            ">;"
        }
    .end annotation

    .line 2100
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    .line 2101
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->getCitiesList()Ljava/util/List;

    move-result-object v0

    .line 2100
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 2201
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public removeCities(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2188
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2189
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->access$2900(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;I)V

    return-object p0
.end method

.method public setCities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2128
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2129
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->access$2200(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)V

    return-object p0
.end method

.method public setCities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2119
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2120
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->access$2100(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V

    return-object p0
.end method

.method public setErrorCode(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2211
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2212
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->access$3000(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;I)V

    return-object p0
.end method
