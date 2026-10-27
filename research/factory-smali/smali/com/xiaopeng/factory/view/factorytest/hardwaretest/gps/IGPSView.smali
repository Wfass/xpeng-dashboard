.class public interface abstract Lcom/xiaopeng/factory/view/factorytest/hardwaretest/gps/IGPSView;
.super Ljava/lang/Object;
.source "IGPSView.java"


# virtual methods
.method public abstract onSensorChanged(I[FJF)V
.end method

.method public abstract updateGPSStatus(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/location/GpsSatellite;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateLocation(Ljava/lang/String;)V
.end method

.method public abstract updateOnOffInfo()V
.end method
