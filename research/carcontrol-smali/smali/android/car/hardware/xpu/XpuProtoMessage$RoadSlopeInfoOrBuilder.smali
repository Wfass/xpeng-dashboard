.class public interface abstract Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfoOrBuilder;
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
    name = "RoadSlopeInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getSlopePoints(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
.end method

.method public abstract getSlopePointsCount()I
.end method

.method public abstract getSlopePointsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSlopeType()I
.end method
