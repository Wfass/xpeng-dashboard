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
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    sget v0, Lcom/xiaopeng/xpui/R$style;->XButton_CompoundButton_ToggleButton_Fill:I

    sget v1, Lcom/xiaopeng/xpui/R$style;->XButton_CompoundButton_ToggleButton_Fill:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaopeng/xui/widget/XToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 26
    sget v0, Lcom/xiaopeng/xpui/R$style;->XButton_CompoundButton_ToggleButton_Fill:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 22
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XToggleButton;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 84
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->releaseVui()V

    .line 86
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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 51
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 39
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 55
    invoke-super {p0}, Landroid/widget/ToggleButton;->onDetachedFromWindow()V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 59
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 109
    invoke-super {p0, p1, p2}, Landroid/widget/ToggleButton;->onVisibilityChanged(Landroid/view/View;I)V

    .line 110
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XToggleButton;->onVisibilityChangedThemeRefresh(I)V

    .line 111
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->isChecked()Z

    move-result v0

    .line 76
    .local v0, "isChecked":Z
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 77
    if-eq v0, p1, :cond_0

    .line 78
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XToggleButton;->updateVui(Landroid/view/View;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 90
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 91
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XToggleButton;->setAlpha(F)V

    goto :goto_0

    .line 95
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XToggleButton;->setAlpha(F)V

    .line 98
    :cond_1
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 69
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setSelected(Z)V

    .line 70
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XToggleButton;->setVuiSelected(Landroid/view/View;Z)V

    .line 71
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 63
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 64
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XToggleButton;->setVuiVisibility(Landroid/view/View;I)V

    .line 65
    return-void
.end method
