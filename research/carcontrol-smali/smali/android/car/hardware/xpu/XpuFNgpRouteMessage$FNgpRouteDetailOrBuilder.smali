.class public interface abstract Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailOrBuilder;
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
    name = "FNgpRouteDetailOrBuilder"
.end annotation


# virtual methods
.method public abstract getFngpRouteBrief()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
.end method

.method public abstract getSegmentList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
.end method

.method public abstract getSegmentListCount()I
.end method

.method public abstract getSegmentListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getV2PointList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
.end method

.method public abstract getV2PointListCount()I
.end method

.method public abstract getV2PointListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasFngpRouteBrief()Z
.end method
