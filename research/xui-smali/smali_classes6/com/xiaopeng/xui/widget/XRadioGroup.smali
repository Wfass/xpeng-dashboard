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
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 31
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XRadioGroup;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 32
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

    .line 78
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRadioGroup;->releaseVui()V

    .line 80
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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 48
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 36
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/RadioGroup;->onDetachedFromWindow()V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 56
    :cond_0
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 66
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->onViewAdded(Landroid/view/View;)V

    .line 67
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XRadioGroup;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 68
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 72
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->onViewRemoved(Landroid/view/View;)V

    .line 73
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XRadioGroup;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 74
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 103
    invoke-super {p0, p1, p2}, Landroid/widget/RadioGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XRadioGroup;->onVisibilityChangedThemeRefresh(I)V

    .line 105
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 84
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 85
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    if-eqz p1, :cond_0

    .line 87
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XRadioGroup;->setAlpha(F)V

    goto :goto_0

    .line 89
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XRadioGroup;->setAlpha(F)V

    .line 92
    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 99
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 60
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 61
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XRadioGroup;->setVuiVisibility(Landroid/view/View;I)V

    .line 62
    return-void
.end method
