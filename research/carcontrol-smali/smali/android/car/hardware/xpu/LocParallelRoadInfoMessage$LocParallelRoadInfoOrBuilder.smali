.class public interface abstract Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfoOrBuilder;
.super Ljava/lang/Object;
.source "LocParallelRoadInfoMessage.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/LocParallelRoadInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocParallelRoadInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getFlag()I
.end method

.method public abstract getHwFlag()I
.end method

.method public abstract getParallelRoadList(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
.end method

.method public abstract getParallelRoadListCount()I
.end method

.method public abstract getParallelRoadListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatus()I
.end method
