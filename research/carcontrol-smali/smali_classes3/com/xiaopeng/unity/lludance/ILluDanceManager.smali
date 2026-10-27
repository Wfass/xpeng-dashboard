.class public interface abstract Lcom/xiaopeng/unity/lludance/ILluDanceManager;
.super Ljava/lang/Object;
.source "ILluDanceManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/base/INapaListener;


# virtual methods
.method public abstract cancelAlarmForDance()V
.end method

.method public abstract disableWakeup()V
.end method

.method public abstract enableWakeup()V
.end method

.method public abstract executeWindowAndVolume()V
.end method

.method public abstract getAllData()V
.end method

.method public abstract getLightDanceAvailable()I
.end method

.method public abstract needOpenWindowWhenPlayLlu(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation
.end method

.method public abstract needTurnUpVolumeWhenPlayLlu(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "turnUp"
        }
    .end annotation
.end method

.method public abstract pauseDownLoad(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract resumeDownload(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract setAlarmForDance(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resId",
            "effectName",
            "orderedTime",
            "title"
        }
    .end annotation
.end method

.method public abstract startDownload(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract startPlay(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract stopPlayLlu()V
.end method
