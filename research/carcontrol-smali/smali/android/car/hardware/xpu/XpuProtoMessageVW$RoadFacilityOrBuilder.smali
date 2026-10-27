.class public interface abstract Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacilityOrBuilder;
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
    name = "RoadFacilityOrBuilder"
.end annotation


# virtual methods
.method public abstract getDistToEnd()I
.end method

.method public abstract getLaneNum()I
.end method

.method public abstract getLat()F
.end method

.method public abstract getLon()F
.end method

.method public abstract getSpeedLimits(I)I
.end method

.method public abstract getSpeedLimitsCount()I
.end method

.method public abstract getSpeedLimitsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimeRanges(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
.end method

.method public abstract getTimeRangesCount()I
.end method

.method public abstract getTimeRangesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()I
.end method

.method public abstract getValidLane()I
.end method
