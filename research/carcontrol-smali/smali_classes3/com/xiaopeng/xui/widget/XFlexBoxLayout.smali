.class public Lcom/xiaopeng/xui/widget/XFlexBoxLayout;
.super Lcom/google/android/flexbox/FlexboxLayout;
.source "XFlexBoxLayout.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 36
    invoke-static {p0, p2, p3, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 37
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

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

    .line 93
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->releaseVui()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/google/android/flexbox/FlexboxLayout;->onAttachedToWindow()V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/google/android/flexbox/FlexboxLayout;->onDetachedFromWindow()V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->onViewAdded(Landroid/view/View;)V

    .line 82
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->onViewRemoved(Landroid/view/View;)V

    .line 88
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 119
    invoke-super {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 120
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->onVuiVisibilityChanged(I)V

    .line 121
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setBackgroundResource(I)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setEnabled(Z)V

    .line 100
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 102
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 104
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setSelected(Z)V

    .line 76
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->setVuiSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setVisibility(I)V

    .line 70
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XFlexBoxLayout;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
