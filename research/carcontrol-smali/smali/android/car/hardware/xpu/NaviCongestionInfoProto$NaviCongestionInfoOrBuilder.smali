.class public interface abstract Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfoOrBuilder;
.super Ljava/lang/Object;
.source "NaviCongestionInfoProto.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/NaviCongestionInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NaviCongestionInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getDetailInfo(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
.end method

.method public abstract getDetailInfoCount()I
.end method

.method public abstract getDetailInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPathId()J
.end method

.method public abstract getTotalRemainDist()J
.end method

.method public abstract getTotalTimeOfSecond()J
.end method

.method public abstract getUnobstructed()Z
.end method
