.class public interface abstract Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingDataOrBuilder;
.super Ljava/lang/Object;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApDrivingDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getCurFloor(I)I
.end method

.method public abstract getCurFloorCount()I
.end method

.method public abstract getCurFloorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDynObj(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
.end method

.method public abstract getDynObjCount()I
.end method

.method public abstract getDynObjList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEssentialMsg()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
.end method

.method public abstract getLanelines(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
.end method

.method public abstract getLanelinesCount()I
.end method

.method public abstract getLanelinesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocation()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
.end method

.method public abstract getObj(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
.end method

.method public abstract getObjCount()I
.end method

.method public abstract getObjList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSlot(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
.end method

.method public abstract getSlotAvm(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
.end method

.method public abstract getSlotAvmCount()I
.end method

.method public abstract getSlotAvmList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSlotCount()I
.end method

.method public abstract getSlotIdMapping(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
.end method

.method public abstract getSlotIdMappingCount()I
.end method

.method public abstract getSlotIdMappingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSlotList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpdBump(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
.end method

.method public abstract getSpdBumpCount()I
.end method

.method public abstract getSpdBumpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTrajectory(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
.end method

.method public abstract getTrajectoryCount()I
.end method

.method public abstract getTrajectoryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasEssentialMsg()Z
.end method

.method public abstract hasLocation()Z
.end method
