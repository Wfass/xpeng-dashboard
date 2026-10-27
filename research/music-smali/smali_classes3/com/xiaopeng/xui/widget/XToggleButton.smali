.class public Lcom/xiaopeng/xui/widget/XToggleButton;
.super Landroid/widget/ToggleButton;
.source "XToggleButton.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 30
    sget v0, Lbyg$m;->XButton_CompoundButton_ToggleButton_Fill:I

    sget v1, Lbyg$m;->XButton_CompoundButton_ToggleButton_Fill:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaopeng/xui/widget/XToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 26
    sget v0, Lbyg$m;->XButton_CompoundButton_ToggleButton_Fill:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 22
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XToggleButton;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 86
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->releaseVui()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/widget/ToggleButton;->onAttachedToWindow()V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/widget/ToggleButton;->onDetachedFromWindow()V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Landroid/widget/ToggleButton;->onVisibilityChanged(Landroid/view/View;I)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XToggleButton;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->isChecked()Z

    move-result v0

    .line 78
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    if-eq v0, p1, :cond_0

    .line 80
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->updateVui(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 93
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 95
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XToggleButton;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 97
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XToggleButton;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setSelected(Z)V

    .line 72
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XToggleButton;->setVuiSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lapr;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 66
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XToggleButton;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
