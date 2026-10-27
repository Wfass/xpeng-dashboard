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

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/xui/view/XView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez p1, :cond_0

    .line 41
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/view/XView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 43
    :cond_0
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/view/XView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

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
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/XView;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

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
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/XView;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method public onViewCreated(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/view/XView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 110
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/view/XView;->onVuiVisibilityChanged(I)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/view/XView;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 98
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 100
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/view/XView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 102
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/view/XView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 86
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/view/XView;->setVuiSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/view/XView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/view/XView;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
