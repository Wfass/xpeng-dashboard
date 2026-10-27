.class public Lcom/xiaopeng/xui/widget/XImageButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "XImageButton.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;


# instance fields
.field mRectBgPadding:Landroid/graphics/Rect;

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 30
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XImageButton;->init(Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 36
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XImageButton;->init(Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;Landroid/util/AttributeSet;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mRectBgPadding:Landroid/graphics/Rect;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/widget/-$$Lambda$XImageButton$EupZ0mKod2YG9yQNqkISe1XuScc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XImageButton$EupZ0mKod2YG9yQNqkISe1XuScc;-><init>(Lcom/xiaopeng/xui/widget/XImageButton;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 51
    :cond_0
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xui/widget/XImageButton;)V
    .locals 1

    .line 43
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XImageButton$xJZgpIAUpadxlSrzHwqmP5RqqrA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XImageButton$xJZgpIAUpadxlSrzHwqmP5RqqrA;-><init>(Lcom/xiaopeng/xui/widget/XImageButton;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$null$0(Lcom/xiaopeng/xui/widget/XImageButton;)V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mRectBgPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "XImageButton change theme reset backgroundPadding"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->logD(Ljava/lang/String;)V

    .line 46
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

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public backgroundPadding(IIII)V
    .locals 1
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I

    .line 54
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mRectBgPadding:Landroid/graphics/Rect;

    .line 55
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 103
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageButton;->releaseVui()V

    .line 105
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageButton;->onAttachedToWindow()V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 79
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 67
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageButton;->onDetachedFromWindow()V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 87
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 59
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setImageResource(I)V

    .line 63
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 97
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setSelected(Z)V

    .line 98
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiSelected(Landroid/view/View;Z)V

    .line 99
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setVisibility(I)V

    .line 92
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiVisibility(Landroid/view/View;I)V

    .line 93
    return-void
.end method
