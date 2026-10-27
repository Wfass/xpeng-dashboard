.class public Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;
.super Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;
.source "XNumberPagerIndicator.java"


# instance fields
.field private mChildViewSize:I

.field private mCount:I

.field private mFormat:Ljava/lang/String;

.field private mPosition:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
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

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method private refreshText()V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 76
    iget v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mPosition:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mCount:I

    if-gt v0, v1, :cond_0

    .line 79
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$style;->XNumberIndicatorTextStyle:I

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 80
    .local v0, "textSpan":Landroid/text/style/TextAppearanceSpan;
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mFormat:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "desc":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 83
    .local v2, "ss":Landroid/text/SpannableString;
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 84
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0    # "textSpan":Landroid/text/style/TextAppearanceSpan;
    .end local v1    # "desc":Ljava/lang/String;
    .end local v2    # "ss":Landroid/text/SpannableString;
    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position cannot greater than count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 3

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->init()V

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_pager_indicator_number_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 50
    .local v0, "padding":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->setPadding(IIII)V

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_pager_indicator_view_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mChildViewSize:I

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$string;->x_number_indicator_desc_format:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mFormat:Ljava/lang/String;

    .line 53
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 90
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    invoke-static {p1}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mTextView:Landroid/widget/TextView;

    sget v1, Lcom/xiaopeng/xpui/R$style;->XNumberIndicatorSelectedTextStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->refreshText()V

    .line 97
    :cond_1
    return-void
.end method

.method public populateData(I)V
    .locals 3
    .param p1, "count"    # I

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mTextView:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mTextView:Landroid/widget/TextView;

    sget v1, Lcom/xiaopeng/xpui/R$style;->XNumberIndicatorSelectedTextStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mChildViewSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 63
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mCount:I

    .line 66
    return-void
.end method

.method public select(I)V
    .locals 1
    .param p1, "position"    # I

    .line 70
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->mPosition:I

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XNumberPagerIndicator;->refreshText()V

    .line 72
    return-void
.end method
