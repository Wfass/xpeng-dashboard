.class public final Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1291
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;->access$600()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 1284
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCity()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;
    .locals 1

    .line 1359
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;->copyOnWrite()V

    .line 1360
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;->access$1000(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;)V

    return-object p0
.end method

.method public getCity()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;
    .locals 1

    .line 1313
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;->getCity()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;

    move-result-object v0

    return-object v0
.end method

.method public hasCity()Z
    .locals 1

    .line 1303
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;->hasCity()Z

    move-result v0

    return v0
.end method

.method public mergeCity(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;
    .locals 1

    .line 1348
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;->copyOnWrite()V

    .line 1349
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;->access$900(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;)V

    return-object p0
.end method

.method public setCity(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;
    .locals 1

    .line 1336
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;->copyOnWrite()V

    .line 1337
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;->access$800(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;)V

    return-object p0
.end method

.method public setCity(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;->copyOnWrite()V

    .line 1324
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;->access$700(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;)V

    return-object p0
.end method
