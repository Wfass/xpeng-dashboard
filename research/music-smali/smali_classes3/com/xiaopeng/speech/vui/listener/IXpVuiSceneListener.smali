.class public interface abstract Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;
.super Ljava/lang/Object;
.source "IXpVuiSceneListener.java"

# interfaces
.implements Lbxv;


# virtual methods
.method public getElementState(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract onBuildScene()V
.end method

.method public abstract onExcuteCommand(Ljava/lang/String;)V
.end method

.method public abstract onInitCompleted(Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;)V
.end method

.method public abstract onVuiEvent(Lbyf;)V
.end method
