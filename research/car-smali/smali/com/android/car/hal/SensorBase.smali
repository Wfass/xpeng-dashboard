.class public interface abstract Lcom/android/car/hal/SensorBase;
.super Ljava/lang/Object;
.source "SensorBase.java"


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getSupportedSensors()[I
.end method

.method public abstract init()V
.end method

.method public abstract isReady()Z
.end method

.method public abstract release()V
.end method

.method public abstract requestSensorStart(II)Z
.end method

.method public abstract requestSensorStop(I)V
.end method
