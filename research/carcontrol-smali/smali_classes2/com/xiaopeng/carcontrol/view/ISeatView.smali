.class public interface abstract Lcom/xiaopeng/carcontrol/view/ISeatView;
.super Ljava/lang/Object;
.source "ISeatView.java"


# virtual methods
.method public abstract needPressedStatus()Z
.end method

.method public abstract setControlModeChair()V
.end method

.method public abstract setControlModeCushion()V
.end method

.method public abstract setControlModeLeg()V
.end method

.method public abstract setControlModeLumbar()V
.end method

.method public abstract setHorPosition(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setLegVerPosition(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setOnButtonClickListener(Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonClickListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation
.end method

.method public abstract setOnButtonTouchListener(Lcom/xiaopeng/carcontrol/view/BaseSeatControlView$OnButtonTouchListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation
.end method

.method public abstract setSupportMove(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "support"
        }
    .end annotation
.end method

.method public abstract setTiltPosition(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setVerPosition(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract stopControl()V
.end method
