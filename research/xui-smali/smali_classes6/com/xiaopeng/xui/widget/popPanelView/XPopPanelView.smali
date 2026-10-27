.class public Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;
.super Lcom/xiaopeng/xui/vui/VuiViewScene;
.source "XPopPanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView$IPopPanelViewInterface;
    }
.end annotation


# instance fields
.field private mPopPanelViewInterface:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView$IPopPanelViewInterface;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "contextView"    # Landroid/view/View;

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;->setVuiView(Landroid/view/View;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getVuiDisplayLocation()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;->mPopPanelViewInterface:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView$IPopPanelViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;->mPopPanelViewInterface:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView$IPopPanelViewInterface;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView$IPopPanelViewInterface;->getDisplayScreenId()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBuildScenePrepare()V
    .locals 0

    .line 22
    return-void
.end method

.method public onVuiEventExecutioned()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;->mPopPanelViewInterface:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView$IPopPanelViewInterface;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;->mPopPanelViewInterface:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView$IPopPanelViewInterface;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView$IPopPanelViewInterface;->onVuiEventExecuted()V

    .line 43
    :cond_0
    return-void
.end method

.method public setPopPanelViewInterface(Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView$IPopPanelViewInterface;)V
    .locals 0
    .param p1, "popPanelViewInterface"    # Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView$IPopPanelViewInterface;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;->mPopPanelViewInterface:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView$IPopPanelViewInterface;

    .line 36
    return-void
.end method
