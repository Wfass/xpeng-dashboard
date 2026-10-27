.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;
.super Ljava/lang/Object;
.source "AmbientEventListener.java"


# virtual methods
.method public abstract onChangeAmbientLightEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract onChangeBright(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "bright"
        }
    .end annotation
.end method

.method public abstract onChangeColorType(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "type"
        }
    .end annotation
.end method

.method public abstract onChangeDoubleColor(Ljava/lang/String;Landroid/util/Pair;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;",
            "Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onChangeMode(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "mode"
        }
    .end annotation
.end method

.method public abstract onChangeMonoColor(Ljava/lang/String;Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "color"
        }
    .end annotation
.end method

.method public abstract onErrorPlay(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "effect"
        }
    .end annotation
.end method

.method public abstract onErrorSet(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "mode"
        }
    .end annotation
.end method

.method public abstract onErrorStop(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "effect"
        }
    .end annotation
.end method

.method public abstract onErrorSub(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "mode"
        }
    .end annotation
.end method
