.class public interface abstract Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponseOrBuilder;
.super Ljava/lang/Object;
.source "XpuProtoMessage.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CNGPCityMapResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getCities(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
.end method

.method public abstract getCitiesCount()I
.end method

.method public abstract getCitiesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getErrorCode()I
.end method
