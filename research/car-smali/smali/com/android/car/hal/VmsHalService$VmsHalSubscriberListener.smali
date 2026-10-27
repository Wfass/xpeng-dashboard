.class public interface abstract Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;
.super Ljava/lang/Object;
.source "VmsHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/VmsHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VmsHalSubscriberListener"
.end annotation


# virtual methods
.method public abstract onDataMessage(Landroid/car/vms/VmsLayer;I[B)V
.end method

.method public abstract onLayersAvaiabilityChange(Landroid/car/vms/VmsAvailableLayers;)V
.end method
