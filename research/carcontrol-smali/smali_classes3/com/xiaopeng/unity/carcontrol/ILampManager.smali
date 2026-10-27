.class interface abstract Lcom/xiaopeng/unity/carcontrol/ILampManager;
.super Ljava/lang/Object;
.source "ILampManager.java"


# virtual methods
.method public abstract getHeadLampMode()I
.end method

.method public abstract getLluPreviewEffect()I
.end method

.method public abstract getLluPreviewState()I
.end method

.method public abstract isLLuSwEnable()Z
.end method

.method public abstract isRearFogLampOn()Z
.end method

.method public abstract isSupportLluPreview()Z
.end method

.method public abstract setHeadLampMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setLluPreviewEffect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation
.end method

.method public abstract setRearFogLamp(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract stopLluPreview()V
.end method
