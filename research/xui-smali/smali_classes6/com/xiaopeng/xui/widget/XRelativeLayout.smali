.class public Lcom/xiaopeng/xui/widget/XRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "XRelativeLayout.java"

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
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->pressAnimEnable:Z

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez v0, :cond_0

    .line 45
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 47
    :cond_0
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 129
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->pressAnimEnable:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->drawableStateChanged()V

    .line 133
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
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->releaseVui()V

    .line 109
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->vuiViewAttachedToWindow()V

    .line 70
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 57
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->vuiViewDetachedFromWindow()V

    .line 79
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 95
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onViewAdded(Landroid/view/View;)V

    .line 96
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 97
    return-void
.end method

.method public onViewCreated(Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    .line 53
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 101
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onViewRemoved(Landroid/view/View;)V

    .line 102
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 103
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .line 145
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 146
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onVuiVisibilityChanged(I)V

    .line 147
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onVisibilityChangedThemeRefresh(I)V

    .line 148
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 158
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 137
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setBackgroundResource(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 113
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 114
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    if-eqz p1, :cond_0

    .line 116
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setAlpha(F)V

    goto :goto_0

    .line 118
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setAlpha(F)V

    .line 121
    :cond_1
    :goto_0
    return-void
.end method

.method public setPressAnimEnable(Z)V
    .locals 0
    .param p1, "pressAnimEnable"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->pressAnimEnable:Z

    .line 125
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 89
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 90
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiSelected(Landroid/view/View;Z)V

    .line 91
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XRelativeLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 155
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 83
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 84
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiVisibility(Landroid/view/View;I)V

    .line 85
    return-void
.end method
