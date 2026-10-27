.class public interface abstract Lcom/xiaopeng/vui/commons/IVuiSceneListener;
.super Ljava/lang/Object;
.source "IVuiSceneListener.java"


# virtual methods
.method public onBuildScene()V
    .locals 0

    .line 18
    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public onVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 11
    return-void
.end method

.method public onVuiEvent(Lcom/xiaopeng/vui/commons/model/VuiEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 20
    return-void
.end method

.method public onVuiEventExecutioned()V
    .locals 0

    .line 26
    return-void
.end method

.method public onVuiStateChanged()V
    .locals 0

    .line 30
    return-void
.end method
