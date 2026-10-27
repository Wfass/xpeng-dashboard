.class public Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;
.super Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;
.source "XDotPagerIndicator.java"


# instance fields
.field private mDotSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    return-void
.end method


# virtual methods
.method protected generateIndicator()Landroid/view/View;
    .locals 2

    .line 61
    new-instance v0, Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "view":Landroid/widget/ImageView;
    sget v1, Lcom/xiaopeng/xpui/R$drawable;->x_dot_indicator_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->init()V

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_pager_indicator_view_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;->mDotSize:I

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_pager_indicator_dot_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 44
    .local v0, "padding":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;->setPadding(IIII)V

    .line 45
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 84
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    invoke-static {p1}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;->getChildCount()I

    move-result v0

    .line 87
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 88
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 90
    move-object v3, v2

    check-cast v3, Landroid/widget/ImageView;

    .line 91
    .local v3, "imageView":Landroid/widget/ImageView;
    sget v4, Lcom/xiaopeng/xpui/R$drawable;->x_dot_indicator_bg:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public populateData(I)V
    .locals 5
    .param p1, "count"    # I

    .line 49
    if-lez p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;->removeAllViews()V

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;->generateIndicator()Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;->mDotSize:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;->mDotSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public select(I)V
    .locals 5
    .param p1, "position"    # I

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;->getChildCount()I

    move-result v0

    .line 70
    .local v0, "childCount":I
    if-lez v0, :cond_1

    if-ge p1, v0, :cond_1

    .line 71
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 72
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/pageindicator/XDotPagerIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 73
    .local v3, "child":Landroid/view/View;
    if-ne v2, p1, :cond_0

    .line 74
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 76
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setActivated(Z)V

    .line 71
    .end local v3    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
