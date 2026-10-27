.class public interface abstract Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigationOrBuilder;
.super Ljava/lang/Object;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FNgpEmulatorNavigationOrBuilder"
.end annotation


# virtual methods
.method public abstract getArriveTime()J
.end method

.method public abstract getCurrentLocalPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
.end method

.method public abstract getCurrentLocalRotation()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
.end method

.method public abstract getCurrentLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
.end method

.method public abstract getCurrentOffset()I
.end method

.method public abstract getCurrentPointIndexInV2List()I
.end method

.method public abstract getEgoInternalRoadState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;
.end method

.method public abstract getEgoInternalRoadStateValue()I
.end method

.method public abstract getEndInternalPassedMileage()I
.end method

.method public abstract getEndPointName()Ljava/lang/String;
.end method

.method public abstract getEndPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;
.end method

.method public abstract getEndSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;
.end method

.method public abstract getEndSlotShapeValue()I
.end method

.method public abstract getManeuverDirection()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;
.end method

.method public abstract getManeuverDirectionValue()I
.end method

.method public abstract getManeuverDistance()I
.end method

.method public abstract getManeuverType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;
.end method

.method public abstract getManeuverTypeValue()I
.end method

.method public abstract getOffsetSegmentList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
.end method

.method public abstract getOffsetSegmentListCount()I
.end method

.method public abstract getOffsetSegmentListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPassedMileage()I
.end method

.method public abstract getPathType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;
.end method

.method public abstract getPathTypeValue()I
.end method

.method public abstract getPredictTimeDuration()J
.end method

.method public abstract getRemainMileage()I
.end method

.method public abstract getRouteId()J
.end method

.method public abstract hasCurrentLocalPoint()Z
.end method

.method public abstract hasCurrentLocalRotation()Z
.end method

.method public abstract hasCurrentLonlatPoint()Z
.end method
