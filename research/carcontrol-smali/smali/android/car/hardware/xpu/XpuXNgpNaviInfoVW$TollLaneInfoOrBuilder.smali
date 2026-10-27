.class public interface abstract Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfoOrBuilder;
.super Ljava/lang/Object;
.source "XpuXNgpNaviInfoVW.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TollLaneInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getTollGateInfo(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;
.end method

.method public abstract getTollGateInfoCount()I
.end method

.method public abstract getTollGateInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTollGateInfoValue(I)I
.end method

.method public abstract getTollGateInfoValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
