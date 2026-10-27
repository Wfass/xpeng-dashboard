.class public interface abstract Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$UnitChangeListener;
.super Ljava/lang/Object;
.source "UnitConversionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnitChangeListener"
.end annotation


# virtual methods
.method public abstract onAirPressureUnitChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract onSpeedUnitChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method
