.class public Lcom/xiaopeng/xui/widget/XGridLayout;
.super Landroid/widget/GridLayout;
.source "XGridLayout.java"

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
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XGridLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 41
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XGridLayout;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XGridLayout;->setClipToOutline(Z)V

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

    .line 98
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGridLayout;->releaseVui()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGridLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGridLayout;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGridLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGridLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGridLayout;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onViewAdded(Landroid/view/View;)V

    .line 87
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XGridLayout;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onViewRemoved(Landroid/view/View;)V

    .line 93
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XGridLayout;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2}, Landroid/widget/GridLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 123
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XGridLayout;->onVuiVisibilityChanged(I)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XGridLayout;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->setBackgroundResource(I)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGridLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setBackgroundResource(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->setEnabled(Z)V

    .line 105
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 107
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XGridLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 109
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XGridLayout;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->setSelected(Z)V

    .line 81
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XGridLayout;->setVuiSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGridLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 75
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XGridLayout;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
