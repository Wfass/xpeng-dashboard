.class public interface abstract Lcom/xiaopeng/unity/carcontrol/ILluSayHiControlManager;
.super Ljava/lang/Object;
.source "ILluSayHiControlManager.java"


# virtual methods
.method public abstract getLluPreviewState()I
.end method

.method public abstract getLluSayHiEffect()I
.end method

.method public abstract isSayHiAvasEnable()Z
.end method

.method public abstract isSayHiEnable()Z
.end method

.method public abstract isSupportLluPreview()Z
.end method

.method public abstract setLluSayHiEffect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation
.end method

.method public abstract setSayHiAvasSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setSayHiSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setXKeyForCustomerSayHi()V
.end method

.method public abstract stopLluPreview()V
.end method
