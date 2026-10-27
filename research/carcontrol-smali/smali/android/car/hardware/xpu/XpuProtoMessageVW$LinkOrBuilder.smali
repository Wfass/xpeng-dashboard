.class public interface abstract Landroid/car/hardware/xpu/XpuProtoMessageVW$LinkOrBuilder;
.super Ljava/lang/Object;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LinkOrBuilder"
.end annotation


# virtual methods
.method public abstract getAssistantAction()I
.end method

.method public abstract getCameras(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
.end method

.method public abstract getCamerasCount()I
.end method

.method public abstract getCamerasList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFormwayType()I
.end method

.method public abstract getHasMixFork()Z
.end method

.method public abstract getHasMultiOut()Z
.end method

.method public abstract getHasParallelRoad()Z
.end method

.method public abstract getHasTrafficLight()Z
.end method

.method public abstract getHeightDiffData()Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;
.end method

.method public abstract getId()J
.end method

.method public abstract getIsAtService()Z
.end method

.method public abstract getIsOverHead()Z
.end method

.method public abstract getLaneNum()I
.end method

.method public abstract getLength()D
.end method

.method public abstract getLinkDirection()I
.end method

.method public abstract getLinkType()I
.end method

.method public abstract getMainAction()I
.end method

.method public abstract getOwnership()I
.end method

.method public abstract getRoadClass()I
.end method

.method public abstract getRoadDirection()I
.end method

.method public abstract getRoadFacilities(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;
.end method

.method public abstract getRoadFacilitiesCount()I
.end method

.method public abstract getRoadFacilitiesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRoadFacilityCount()I
.end method

.method public abstract getRoadName()Ljava/lang/String;
.end method

.method public abstract getRoadNameBytes()Lcom/android/carsdk/protobuf/ByteString;
.end method

.method public abstract getRoadSlopInfo()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
.end method

.method public abstract getSlopeInfos(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
.end method

.method public abstract getSlopeInfosCount()I
.end method

.method public abstract getSlopeInfosList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpeed()I
.end method

.method public abstract getV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
.end method

.method public abstract getV2PointsCount()I
.end method

.method public abstract getV2PointsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasHeightDiffData()Z
.end method

.method public abstract hasRoadSlopInfo()Z
.end method
