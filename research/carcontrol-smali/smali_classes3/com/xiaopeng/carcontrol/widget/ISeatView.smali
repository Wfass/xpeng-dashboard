.class public interface abstract Lcom/xiaopeng/carcontrol/widget/ISeatView;
.super Ljava/lang/Object;
.source "ISeatView.java"


# virtual methods
.method public abstract drawSecRowLegTitleControl()V
.end method

.method public abstract needPressedStatus()Z
.end method

.method public abstract setControlModeChair()V
.end method

.method public abstract setControlModeChairFrontBack()V
.end method

.method public abstract setControlModeChairTilt()V
.end method

.method public abstract setControlModeCushion()V
.end method

.method public abstract setControlModeForthLegCushion()V
.end method

.method public abstract setControlModeHeadRest()V
.end method

.method public abstract setControlModeLumbar()V
.end method

.method public abstract setControlModePsnSmallLeg()V
.end method

.method public abstract setControlModeRearSmallLeg()V
.end method

.method public abstract setControlModeTrdHeadRest()V
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

.method public abstract setLegHorPosition(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
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

.method public abstract setOnButtonClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation
.end method

.method public abstract setOnButtonTouchListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonTouchListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation
.end method

.method public abstract setSmallLegPosition(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
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
