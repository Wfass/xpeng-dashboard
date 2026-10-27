.class public interface abstract Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCduOrBuilder;
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
    name = "PolygonForCduOrBuilder"
.end annotation


# virtual methods
.method public abstract getPoint(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;
.end method

.method public abstract getPointCount()I
.end method

.method public abstract getPointList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;",
            ">;"
        }
    .end annotation
.end method
