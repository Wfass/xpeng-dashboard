.class public interface abstract Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;
.super Ljava/lang/Object;
.source "IVuiEventInterceptListener.java"


# virtual methods
.method public onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 16
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 11
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onVuiStateChanged()V
    .locals 0

    return-void
.end method
