.class public Lcom/xiaopeng/xui/widget/XViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "XViewPager.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XViewPager;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 33
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XViewPager;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

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

    .line 82
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XViewPager;->releaseVui()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onAttachedToWindow()V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XViewPager;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 55
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onDetachedFromWindow()V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XViewPager;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onViewAdded(Landroid/view/View;)V

    .line 71
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onViewRemoved(Landroid/view/View;)V

    .line 77
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onVisibilityChanged(Landroid/view/View;I)V

    .line 107
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XViewPager;->onVuiVisibilityChanged(I)V

    .line 108
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XViewPager;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setBackgroundResource(I)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setBackgroundResource(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setEnabled(Z)V

    .line 89
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 91
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 93
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 65
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
