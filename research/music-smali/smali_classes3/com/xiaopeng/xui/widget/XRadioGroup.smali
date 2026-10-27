.class public Lcom/xiaopeng/xui/widget/XRadioGroup;
.super Landroid/widget/RadioGroup;
.source "XRadioGroup.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 31
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XRadioGroup;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 80
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRadioGroup;->releaseVui()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/widget/RadioGroup;->onAttachedToWindow()V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRadioGroup;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/widget/RadioGroup;->onDetachedFromWindow()V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRadioGroup;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->onViewAdded(Landroid/view/View;)V

    .line 69
    sget-object p1, Lbyc;->UPDATE_VIEW:Lbyc;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XRadioGroup;->updateVui(Landroid/view/View;Lbyc;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->onViewRemoved(Landroid/view/View;)V

    .line 75
    sget-object p1, Lbyc;->UPDATE_VIEW:Lbyc;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XRadioGroup;->updateVui(Landroid/view/View;Lbyc;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2}, Landroid/widget/RadioGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 106
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XRadioGroup;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 87
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 89
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XRadioGroup;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 91
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XRadioGroup;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lapr;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 63
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XRadioGroup;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
