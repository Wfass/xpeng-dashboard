.class public interface abstract Lcom/android/car/hal/PowerHalService$PowerEventListener;
.super Ljava/lang/Object;
.source "PowerHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/PowerHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PowerEventListener"
.end annotation


# virtual methods
.method public abstract onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V
.end method

.method public abstract onBootReasonReceived(I)V
.end method

.method public abstract onDisplayBrightnessChange(I)V
.end method
