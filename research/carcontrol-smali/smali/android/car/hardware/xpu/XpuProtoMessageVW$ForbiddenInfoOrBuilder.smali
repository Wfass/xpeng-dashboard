.class public interface abstract Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfoOrBuilder;
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
    name = "ForbiddenInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getLinkIndex()J
.end method

.method public abstract getSegIndex()J
.end method

.method public abstract getTimeDescription(I)I
.end method

.method public abstract getTimeDescriptionCount()I
.end method

.method public abstract getTimeDescriptionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()I
.end method

.method public abstract getVehicleType()I
.end method
