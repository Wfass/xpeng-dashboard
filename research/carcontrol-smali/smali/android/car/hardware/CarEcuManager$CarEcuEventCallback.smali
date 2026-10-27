.class public interface abstract Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;
.super Ljava/lang/Object;
.source "CarEcuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/CarEcuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarEcuEventCallback"
.end annotation


# virtual methods
.method public abstract onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
.end method

.method public abstract onErrorEvent(II)V
.end method
