.class public Lcom/xiaopeng/xui/widget/XImageButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "XImageButton.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field mRectBgPadding:Landroid/graphics/Rect;

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

.field protected mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez p1, :cond_0

    .line 37
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 39
    :cond_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XImageButton;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez p1, :cond_0

    .line 45
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 47
    :cond_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XImageButton;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 57
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;Landroid/util/AttributeSet;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mRectBgPadding:Landroid/graphics/Rect;

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XImageButton$uU2VvXHnSUkb1BDjl_nq1vK3k5M;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XImageButton$uU2VvXHnSUkb1BDjl_nq1vK3k5M;-><init>(Lcom/xiaopeng/xui/widget/XImageButton;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public backgroundPadding(IIII)V
    .locals 0

    .line 70
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;IIII)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mRectBgPadding:Landroid/graphics/Rect;

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 122
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageButton;->releaseVui()V

    return-void
.end method

.method public synthetic lambda$init$1$XImageButton()V
    .locals 1

    .line 59
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XImageButton$M9oGx77fIhlHFaYIztAk0UzE_co;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XImageButton$M9oGx77fIhlHFaYIztAk0UzE_co;-><init>(Lcom/xiaopeng/xui/widget/XImageButton;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$null$0$XImageButton()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mRectBgPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const-string v0, "XImageButton change theme reset backgroundPadding"

    .line 61
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->logD(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mRectBgPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mRectBgPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mRectBgPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mRectBgPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mRectBgPadding:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageButton;->onAttachedToWindow()V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageButton;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageButton;->onDetachedFromWindow()V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageButton;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method public onViewCreated(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 162
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;->onVisibilityChanged(Landroid/view/View;I)V

    .line 163
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XImageButton;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setEnabled(Z)V

    .line 129
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 131
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 133
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setImageResource(I)V

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiImageResource(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setSelected(Z)V

    .line 117
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setVisibility(I)V

    .line 111
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
