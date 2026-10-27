.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;
.super Ljava/lang/Object;
.source "IAudioViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# virtual methods
.method public abstract confirmMuteMicrophone()V
.end method

.method public abstract confirmMuteMicrophone(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayId"
        }
    .end annotation
.end method

.method public abstract confirmUnmuteMicrophone(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shouldDismiss",
            "displayId"
        }
    .end annotation
.end method

.method public abstract dismissAllDialogs()V
.end method

.method public abstract isMicrophoneMute()Z
.end method

.method public abstract setMicrophoneMute(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation
.end method
