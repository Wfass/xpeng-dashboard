.class public interface abstract Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacleOrBuilder;
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
    name = "StripObstacleOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttri()I
.end method

.method public abstract getColor()I
.end method

.method public abstract getId()I
.end method

.method public abstract getSegment(I)F
.end method

.method public abstract getSegmentCount()I
.end method

.method public abstract getSegmentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSize()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
.end method

.method public abstract getType()I
.end method

.method public abstract hasSize()Z
.end method
