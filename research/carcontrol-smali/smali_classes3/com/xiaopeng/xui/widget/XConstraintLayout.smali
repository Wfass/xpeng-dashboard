.class public Lcom/xiaopeng/xui/widget/XConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "XConstraintLayout.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

.field protected mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

.field protected pressAnimEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XConstraintLayout;->pressAnimEnable:Z

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XConstraintLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 45
    invoke-static {p0, p2, p3, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XConstraintLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 47
    :cond_0
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 117
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->drawableStateChanged()V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XConstraintLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XConstraintLayout;->pressAnimEnable:Z

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->drawableStateChanged()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 107
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->releaseVui()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XConstraintLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XConstraintLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onDetachedFromWindow()V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XConstraintLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 96
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    return-void
.end method

.method public onViewCreated(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XConstraintLayout;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 102
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 145
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 146
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onVuiVisibilityChanged(I)V

    .line 147
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 158
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XConstraintLayout;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 137
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XConstraintLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setEnabled(Z)V

    .line 126
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 128
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 130
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPressAnimEnable(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XConstraintLayout;->pressAnimEnable:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelected(Z)V

    .line 90
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XConstraintLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 84
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
