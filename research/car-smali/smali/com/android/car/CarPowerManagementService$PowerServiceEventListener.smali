.class public interface abstract Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;
.super Ljava/lang/Object;
.source "CarPowerManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPowerManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PowerServiceEventListener"
.end annotation


# virtual methods
.method public abstract onShutdown()V
.end method

.method public abstract onSleepEntry()V
.end method

.method public abstract onSleepExit()V
.end method
