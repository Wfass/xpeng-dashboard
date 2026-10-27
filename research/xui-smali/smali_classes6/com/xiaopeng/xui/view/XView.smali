.class public Lcom/xiaopeng/xui/view/XView;
.super Landroid/view/View;
.source "XView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

.field protected mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez v0, :cond_0

    .line 41
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 43
    :cond_0
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/view/XView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 44
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

    .line 91
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/XView;->releaseVui()V

    .line 93
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/XView;->vuiViewAttachedToWindow()V

    .line 66
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 53
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/XView;->vuiViewDetachedFromWindow()V

    .line 75
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

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    .line 49
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .line 109
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 110
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/view/XView;->onVuiVisibilityChanged(I)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/view/XView;->onVisibilityChangedThemeRefresh(I)V

    .line 112
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 122
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 97
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 98
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    if-eqz p1, :cond_0

    .line 100
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/view/XView;->setAlpha(F)V

    goto :goto_0

    .line 102
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/view/XView;->setAlpha(F)V

    .line 105
    :cond_1
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 85
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 86
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/view/XView;->setVuiSelected(Landroid/view/View;Z)V

    .line 87
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 119
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 79
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/view/XView;->setVuiVisibility(Landroid/view/View;I)V

    .line 81
    return-void
.end method
