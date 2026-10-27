.class public interface abstract Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfoOrBuilder;
.super Ljava/lang/Object;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SegmentLaneInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getLaneInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
.end method

.method public abstract getLaneInfosCount()I
.end method

.method public abstract getLaneInfosList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSegmentIndex()I
.end method
