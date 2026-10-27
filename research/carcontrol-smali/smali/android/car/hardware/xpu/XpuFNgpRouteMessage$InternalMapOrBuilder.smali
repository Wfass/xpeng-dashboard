.class public interface abstract Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapOrBuilder;
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
    name = "InternalMapOrBuilder"
.end annotation


# virtual methods
.method public abstract getBoundary(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
.end method

.method public abstract getBoundaryCount()I
.end method

.method public abstract getBoundaryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeader()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
.end method

.method public abstract getSlot(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
.end method

.method public abstract getSlotCount()I
.end method

.method public abstract getSlotList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpeedBump(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
.end method

.method public abstract getSpeedBumpCount()I
.end method

.method public abstract getSpeedBumpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTrajectoryPoses(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
.end method

.method public abstract getTrajectoryPosesCount()I
.end method

.method public abstract getTrajectoryPosesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasHeader()Z
.end method
