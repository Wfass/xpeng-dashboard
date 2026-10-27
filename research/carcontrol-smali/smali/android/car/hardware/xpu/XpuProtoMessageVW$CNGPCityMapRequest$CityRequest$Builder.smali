.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 763
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->access$000()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 756
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCityCode()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;
    .locals 1

    .line 797
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->copyOnWrite()V

    .line 798
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->access$200(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)V

    return-object p0
.end method

.method public clearReqType()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;
    .locals 1

    .line 832
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->copyOnWrite()V

    .line 833
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->access$400(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)V

    return-object p0
.end method

.method public getCityCode()I
    .locals 1

    .line 775
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->getCityCode()I

    move-result v0

    return v0
.end method

.method public getReqType()I
    .locals 1

    .line 810
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->getReqType()I

    move-result v0

    return v0
.end method

.method public setCityCode(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;
    .locals 1

    .line 785
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->copyOnWrite()V

    .line 786
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->access$100(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;I)V

    return-object p0
.end method

.method public setReqType(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;
    .locals 1

    .line 820
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->copyOnWrite()V

    .line 821
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->access$300(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;I)V

    return-object p0
.end method
