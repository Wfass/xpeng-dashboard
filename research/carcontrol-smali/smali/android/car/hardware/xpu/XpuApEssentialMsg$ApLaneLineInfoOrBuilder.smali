.class public interface abstract Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfoOrBuilder;
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
    name = "ApLaneLineInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttri()I
.end method

.method public abstract getPathPoints(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
.end method

.method public abstract getPathPointsCount()I
.end method

.method public abstract getPathPointsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
            ">;"
        }
    .end annotation
.end method
