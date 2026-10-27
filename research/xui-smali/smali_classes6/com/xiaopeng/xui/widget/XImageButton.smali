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
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez v0, :cond_0

    .line 37
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 39
    :cond_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XImageButton;->init(Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez v0, :cond_0

    .line 45
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 47
    :cond_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XImageButton;->init(Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 57
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;Landroid/util/AttributeSet;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mRectBgPadding:Landroid/graphics/Rect;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/widget/-$$Lambda$XImageButton$EupZ0mKod2YG9yQNqkISe1XuScc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XImageButton$EupZ0mKod2YG9yQNqkISe1XuScc;-><init>(Lcom/xiaopeng/xui/widget/XImageButton;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xui/widget/XImageButton;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mRectBgPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "XImageButton change theme reset backgroundPadding"

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

    .line 65
    :cond_0
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xui/widget/XImageButton;)V
    .locals 1

    .line 59
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XImageButton$B1KxVC_lwkntq-asL0FRIrknPNk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XImageButton$B1KxVC_lwkntq-asL0FRIrknPNk;-><init>(Lcom/xiaopeng/xui/widget/XImageButton;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public backgroundPadding(IIII)V
    .locals 1
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I

    .line 70
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mRectBgPadding:Landroid/graphics/Rect;

    .line 71
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageButton;->releaseVui()V

    .line 122
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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 96
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 84
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageButton;->onDetachedFromWindow()V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 104
    :cond_0
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

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    .line 53
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 160
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;->onVisibilityChanged(Landroid/view/View;I)V

    .line 161
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XImageButton;->onVisibilityChangedThemeRefresh(I)V

    .line 162
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 152
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 126
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setEnabled(Z)V

    .line 127
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setAlpha(F)V

    goto :goto_0

    .line 131
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setAlpha(F)V

    .line 134
    :cond_1
    :goto_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 144
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 75
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

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

    .line 80
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 114
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setSelected(Z)V

    .line 115
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiSelected(Landroid/view/View;Z)V

    .line 116
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 141
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 108
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setVisibility(I)V

    .line 109
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiVisibility(Landroid/view/View;I)V

    .line 110
    return-void
.end method
