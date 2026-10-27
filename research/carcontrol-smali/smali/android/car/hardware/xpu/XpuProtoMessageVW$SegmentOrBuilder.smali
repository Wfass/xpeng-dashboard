.class public interface abstract Landroid/car/hardware/xpu/XpuProtoMessageVW$SegmentOrBuilder;
.super Ljava/lang/Object;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SegmentOrBuilder"
.end annotation


# virtual methods
.method public abstract getAssistAction()I
.end method

.method public abstract getGuideboardName()Ljava/lang/String;
.end method

.method public abstract getGuideboardNameBytes()Lcom/android/carsdk/protobuf/ByteString;
.end method

.method public abstract getHasCrossImage()Z
.end method

.method public abstract getLength()D
.end method

.method public abstract getLinks(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
.end method

.method public abstract getLinksCount()I
.end method

.method public abstract getLinksList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMainAction()I
.end method

.method public abstract getSlope()I
.end method

.method public abstract getTrafficLightNum()J
.end method
