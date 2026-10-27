.class public final Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2259
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->access$2000()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 2252
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCities(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;"
        }
    .end annotation

    .line 2339
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2340
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->access$2700(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCities(ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2330
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2331
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->access$2600(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)V

    return-object p0
.end method

.method public addCities(ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2312
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2313
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->access$2400(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V

    return-object p0
.end method

.method public addCities(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2321
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2322
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->access$2500(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)V

    return-object p0
.end method

.method public addCities(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2303
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2304
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->access$2300(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V

    return-object p0
.end method

.method public clearCities()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2347
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2348
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->access$2800(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;)V

    return-object p0
.end method

.method public clearErrorCode()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2390
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2391
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->access$3100(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;)V

    return-object p0
.end method

.method public getCities(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
    .locals 1

    .line 2279
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->getCities(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    move-result-object p1

    return-object p1
.end method

.method public getCitiesCount()I
    .locals 1

    .line 2274
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->getCitiesCount()I

    move-result v0

    return v0
.end method

.method public getCitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;",
            ">;"
        }
    .end annotation

    .line 2267
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    .line 2268
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->getCitiesList()Ljava/util/List;

    move-result-object v0

    .line 2267
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 2368
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public removeCities(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2355
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2356
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->access$2900(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;I)V

    return-object p0
.end method

.method public setCities(ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2295
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2296
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->access$2200(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)V

    return-object p0
.end method

.method public setCities(ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2286
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2287
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->access$2100(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V

    return-object p0
.end method

.method public setErrorCode(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2378
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->copyOnWrite()V

    .line 2379
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->access$3000(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;I)V

    return-object p0
.end method
