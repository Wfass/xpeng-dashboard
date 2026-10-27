.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;
.super Ljava/lang/Object;
.source "VipSeatControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStatusChangedListener"
.end annotation


# virtual methods
.method public onPlayLayFlatWaitingTTS()V
    .locals 0

    return-void
.end method

.method public onSeatHasFlat()V
    .locals 0

    return-void
.end method

.method public onSeatStartMove(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLayFlat"
        }
    .end annotation

    return-void
.end method

.method public abstract onStatusChanged(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatStatus"
        }
    .end annotation
.end method
