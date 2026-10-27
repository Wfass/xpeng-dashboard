.class public Lcom/xiaopeng/xui/widget/XCardView;
.super Landroidx/cardview/widget/CardView;
.source "XCardView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

.field protected mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez p1, :cond_0

    .line 36
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 38
    :cond_0
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XCardView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 44
    invoke-static {p0, p2, p3, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 46
    :cond_0
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XCardView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 100
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCardView;->releaseVui()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->onAttachedToWindow()V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCardView;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->onDetachedFromWindow()V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCardView;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onViewAdded(Landroid/view/View;)V

    .line 89
    sget-object p1, Lbyc;->UPDATE_VIEW:Lbyc;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XCardView;->updateVui(Landroid/view/View;Lbyc;)V

    return-void
.end method

.method public onViewCreated(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onViewRemoved(Landroid/view/View;)V

    .line 95
    sget-object p1, Lbyc;->UPDATE_VIEW:Lbyc;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XCardView;->updateVui(Landroid/view/View;Lbyc;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 133
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XCardView;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setEnabled(Z)V

    .line 107
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 109
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XCardView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 111
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XCardView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCardView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lapr;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 83
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XCardView;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
