.class public interface abstract Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfoOrBuilder;
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
    name = "NaviReloadInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getExpectCostTime()J
.end method

.method public abstract getFngpStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;
.end method

.method public abstract getFngpStatusValue()I
.end method

.method public abstract getNaviRoutingInfoV2()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
.end method

.method public abstract getOddEnd()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
.end method

.method public abstract getOddStart()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
.end method

.method public abstract getPathwayPoint(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
.end method

.method public abstract getPathwayPointCount()I
.end method

.method public abstract getPathwayPointList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReloadErrorCode()I
.end method

.method public abstract getRouteId()J
.end method

.method public abstract getRouteSelectedTimestamp()J
.end method

.method public abstract getTotalOddMilage()I
.end method

.method public abstract hasNaviRoutingInfoV2()Z
.end method

.method public abstract hasOddEnd()Z
.end method

.method public abstract hasOddStart()Z
.end method
