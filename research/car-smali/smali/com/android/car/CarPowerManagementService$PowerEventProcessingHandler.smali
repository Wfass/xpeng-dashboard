.class public interface abstract Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;
.super Ljava/lang/Object;
.source "CarPowerManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPowerManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PowerEventProcessingHandler"
.end annotation


# virtual methods
.method public abstract getWakeupTime()I
.end method

.method public abstract onPowerOn(Z)V
.end method

.method public abstract onPrepareShutdown(Z)J
.end method
