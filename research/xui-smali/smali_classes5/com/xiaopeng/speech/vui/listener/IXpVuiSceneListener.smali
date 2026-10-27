.class public interface abstract Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;
.super Ljava/lang/Object;
.source "IXpVuiSceneListener.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiSceneListener;


# virtual methods
.method public getElementState(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "elementId"    # Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onBuildScene()V
.end method

.method public abstract onExcuteCommand(Ljava/lang/String;)V
.end method

.method public abstract onInitCompleted(Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;)V
.end method

.method public abstract onVuiEvent(Lcom/xiaopeng/vui/commons/model/VuiEvent;)V
.end method
