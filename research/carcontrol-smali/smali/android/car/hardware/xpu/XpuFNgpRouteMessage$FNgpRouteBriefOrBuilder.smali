.class public interface abstract Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefOrBuilder;
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
    name = "FNgpRouteBriefOrBuilder"
.end annotation


# virtual methods
.method public abstract getBeginLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
.end method

.method public abstract getBeginPointName()Ljava/lang/String;
.end method

.method public abstract getBeginPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;
.end method

.method public abstract getClusterNumber()I
.end method

.method public abstract getCreateTime()J
.end method

.method public abstract getCustomStatusMsg()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
.end method

.method public abstract getEgoInternalRoadState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;
.end method

.method public abstract getEgoInternalRoadStateValue()I
.end method

.method public abstract getEndLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
.end method

.method public abstract getEndPointName()Ljava/lang/String;
.end method

.method public abstract getEndPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;
.end method

.method public abstract getEndSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;
.end method

.method public abstract getEndSlotShapeValue()I
.end method

.method public abstract getFngpStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;
.end method

.method public abstract getFngpStatusValue()I
.end method

.method public abstract getInternalMapInfoList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
.end method

.method public abstract getInternalMapInfoListCount()I
.end method

.method public abstract getInternalMapInfoListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInternalRouteTypeList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;
.end method

.method public abstract getInternalRouteTypeListCount()I
.end method

.method public abstract getInternalRouteTypeListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInternalRouteTypeListValue(I)I
.end method

.method public abstract getInternalRouteTypeListValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIsCustom()I
.end method

.method public abstract getIsLock()Z
.end method

.method public abstract getIsNaviEndMatch()I
.end method

.method public abstract getIsRenamedRoute()I
.end method

.method public abstract getIsSelected()Z
.end method

.method public abstract getLastUseTime()J
.end method

.method public abstract getLearnStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;
.end method

.method public abstract getLearnStatusValue()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/android/carsdk/protobuf/ByteString;
.end method

.method public abstract getPathType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;
.end method

.method public abstract getPathTypeValue()I
.end method

.method public abstract getPredictTimeDuration()J
.end method

.method public abstract getPriority()I
.end method

.method public abstract getPriorityInfo()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;
.end method

.method public abstract getPriorityInfoValue()I
.end method

.method public abstract getRouteId()J
.end method

.method public abstract getRouteScore()D
.end method

.method public abstract getRouteSelectedTimestamp()J
.end method

.method public abstract getRouteShowStatus()I
.end method

.method public abstract getSelectType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;
.end method

.method public abstract getSelectTypeValue()I
.end method

.method public abstract getSlotPreferType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;
.end method

.method public abstract getSlotPreferTypeValue()I
.end method

.method public abstract getStartEndClusterNumber()I
.end method

.method public abstract getStartSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;
.end method

.method public abstract getStartSlotShapeValue()I
.end method

.method public abstract getTotalMileage()I
.end method

.method public abstract getTotalOddMilage()I
.end method

.method public abstract getUsingRawRouteType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;
.end method

.method public abstract getUsingRawRouteTypeValue()I
.end method

.method public abstract hasBeginLonlatPoint()Z
.end method

.method public abstract hasCustomStatusMsg()Z
.end method

.method public abstract hasEndLonlatPoint()Z
.end method
