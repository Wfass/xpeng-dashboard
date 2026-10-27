.class public interface abstract Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoOrBuilder;
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
    name = "NaviRoutingInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getNavigationId()J
.end method

.method public abstract getNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;
.end method

.method public abstract getNavigationStatusValue()I
.end method

.method public abstract getV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
.end method

.method public abstract getV2PointsCount()I
.end method

.method public abstract getV2PointsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;"
        }
    .end annotation
.end method
