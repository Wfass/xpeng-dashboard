.class public Lcom/xiaopeng/xui/view/a/a;
.super Lcom/xiaopeng/xui/view/a/b;
.source "XViewDelegateFontScale.java"


# instance fields
.field private abv:F

.field private mFontScale:F

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;F)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/xui/view/a/b;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/xui/view/a/a;->mTextView:Landroid/widget/TextView;

    .line 80
    iput p2, p0, Lcom/xiaopeng/xui/view/a/a;->abv:F

    .line 81
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/xiaopeng/xui/view/a/a;->mFontScale:F

    .line 86
    return-void
.end method

.method static a(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/a/a;
    .locals 9
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 25
    return-object v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/xpui/R$styleable;->XFontSize:[I

    invoke-virtual {v2, p1, v3, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 31
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XFontSize_x_dynamic_font_scale_change_enable:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 32
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    if-nez v3, :cond_1

    .line 34
    return-object v0

    .line 37
    :cond_1
    nop

    .line 38
    nop

    .line 39
    const/4 v2, 0x0

    .line 41
    new-array v3, v4, [I

    const v5, 0x1010095

    const/4 v6, 0x0

    aput v5, v3, v6

    invoke-virtual {v1, p1, v3, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 43
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 44
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 45
    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 46
    invoke-virtual {v2}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result v7

    .line 47
    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    .line 48
    nop

    .line 50
    move v8, v2

    move v2, v4

    goto :goto_0

    :cond_2
    move v8, v2

    move v2, v6

    move v7, v2

    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    if-nez v2, :cond_5

    .line 53
    new-array v2, v4, [I

    const v3, 0x1010034

    aput v3, v2, v6

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    nop

    .line 56
    const/4 p2, -0x1

    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    if-eq p3, p2, :cond_3

    .line 59
    new-array p1, v4, [I

    aput v5, p1, v6

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_1

    .line 61
    :cond_3
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 62
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 63
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 64
    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 65
    invoke-virtual {p2}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result p3

    .line 66
    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-static {p2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p2

    .line 68
    move v8, p2

    move v7, p3

    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    :cond_5
    const/4 p1, 0x2

    if-ne v7, p1, :cond_6

    .line 73
    new-instance p1, Lcom/xiaopeng/xui/view/a/a;

    invoke-direct {p1, p0, v8}, Lcom/xiaopeng/xui/view/a/a;-><init>(Landroid/widget/TextView;F)V

    return-object p1

    .line 75
    :cond_6
    return-object v0
.end method

.method private a(Landroid/content/res/Configuration;Ljava/lang/String;)V
    .locals 1

    .line 94
    iget p2, p0, Lcom/xiaopeng/xui/view/a/a;->mFontScale:F

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_0

    .line 95
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/xiaopeng/xui/view/a/a;->mFontScale:F

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/xui/view/a/a;->mTextView:Landroid/widget/TextView;

    iget p2, p0, Lcom/xiaopeng/xui/view/a/a;->abv:F

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/view/a/a;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "onAttachedToWindow"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/view/a/a;->a(Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 90
    const-string v0, "onConfigurationChanged"

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/view/a/a;->a(Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 114
    return-void
.end method
