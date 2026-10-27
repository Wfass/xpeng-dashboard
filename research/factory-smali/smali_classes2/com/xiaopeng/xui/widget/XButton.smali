.class public Lcom/xiaopeng/xui/widget/XButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "XButton.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;


# instance fields
.field private mRectBgPadding:Landroid/graphics/Rect;

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 31
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XButton;->init(Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 37
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XButton;->init(Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XButton;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 42
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;Landroid/util/AttributeSet;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/widget/-$$Lambda$XButton$bQLWIPstTakjCA8X4JBkR4xO3_s;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XButton$bQLWIPstTakjCA8X4JBkR4xO3_s;-><init>(Lcom/xiaopeng/xui/widget/XButton;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 52
    :cond_0
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xui/widget/XButton;)V
    .locals 1

    .line 44
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XButton$W4DwNpm_x2Hg_uCeAR1B-dyN6Nk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XButton$W4DwNpm_x2Hg_uCeAR1B-dyN6Nk;-><init>(Lcom/xiaopeng/xui/widget/XButton;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$null$0(Lcom/xiaopeng/xui/widget/XButton;)V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "XButton change theme reset backgroundPadding"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XButton;->logD(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    .line 50
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

    .line 55
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    .line 56
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 96
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->releaseVui()V

    .line 98
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onAttachedToWindow()V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 72
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onDetachedFromWindow()V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 80
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 90
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSelected(Z)V

    .line 91
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiSelected(Landroid/view/View;Z)V

    .line 92
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 84
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 85
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiVisibility(Landroid/view/View;I)V

    .line 86
    return-void
.end method
