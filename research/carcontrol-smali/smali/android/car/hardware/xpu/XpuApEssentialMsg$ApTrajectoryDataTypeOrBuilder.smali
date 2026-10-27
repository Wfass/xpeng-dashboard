.class public interface abstract Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataTypeOrBuilder;
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
    name = "ApTrajectoryDataTypeOrBuilder"
.end annotation


# virtual methods
.method public abstract getId()I
.end method

.method public abstract getTrajectory(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
.end method

.method public abstract getTrajectoryCount()I
.end method

.method public abstract getTrajectoryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;
.end method

.method public abstract getTypeValue()I
.end method
