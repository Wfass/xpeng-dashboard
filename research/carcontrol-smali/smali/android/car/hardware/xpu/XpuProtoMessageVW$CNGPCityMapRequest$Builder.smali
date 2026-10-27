.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1124
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->access$600()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 1117
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCity()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;
    .locals 1

    .line 1192
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;->copyOnWrite()V

    .line 1193
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->access$1000(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;)V

    return-object p0
.end method

.method public getCity()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    .locals 1

    .line 1146
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->getCity()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    move-result-object v0

    return-object v0
.end method

.method public hasCity()Z
    .locals 1

    .line 1136
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->hasCity()Z

    move-result v0

    return v0
.end method

.method public mergeCity(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;
    .locals 1

    .line 1181
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;->copyOnWrite()V

    .line 1182
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->access$900(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)V

    return-object p0
.end method

.method public setCity(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;
    .locals 1

    .line 1169
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;->copyOnWrite()V

    .line 1170
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->access$800(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;)V

    return-object p0
.end method

.method public setCity(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;
    .locals 1

    .line 1156
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;->copyOnWrite()V

    .line 1157
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->access$700(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)V

    return-object p0
.end method
