.class public final Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 930
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;->access$000()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 923
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCityCode()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;
    .locals 1

    .line 964
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;->copyOnWrite()V

    .line 965
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;->access$200(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;)V

    return-object p0
.end method

.method public clearReqType()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;
    .locals 1

    .line 999
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;->copyOnWrite()V

    .line 1000
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;->access$400(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;)V

    return-object p0
.end method

.method public getCityCode()I
    .locals 1

    .line 942
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;->getCityCode()I

    move-result v0

    return v0
.end method

.method public getReqType()I
    .locals 1

    .line 977
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;->getReqType()I

    move-result v0

    return v0
.end method

.method public setCityCode(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;
    .locals 1

    .line 952
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;->copyOnWrite()V

    .line 953
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;->access$100(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;I)V

    return-object p0
.end method

.method public setReqType(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;
    .locals 1

    .line 987
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;->copyOnWrite()V

    .line 988
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;->access$300(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;I)V

    return-object p0
.end method
