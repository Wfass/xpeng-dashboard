.class public Lcom/xiaopeng/xui/view/delegate/XViewFontScale;
.super Ljava/lang/Object;
.source "XViewFontScale.java"


# instance fields
.field private mComplexToFloat:F

.field private mFontScale:F

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;F)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mTextView:Landroid/widget/TextView;

    .line 80
    iput p2, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mComplexToFloat:F

    .line 81
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mFontScale:F

    return-void
.end method

.method private checkFont(Landroid/content/res/Configuration;Ljava/lang/String;)V
    .locals 1

    .line 93
    iget p2, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mFontScale:F

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_0

    .line 94
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mFontScale:F

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mTextView:Landroid/widget/TextView;

    iget p2, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mComplexToFloat:F

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method static create(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewFontScale;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

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

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    new-array v3, v4, [I

    const/4 v5, 0x0

    const v6, 0x1010095

    aput v6, v3, v5

    .line 41
    invoke-virtual {v1, p1, v3, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 43
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 44
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 45
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 46
    invoke-virtual {v2}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result v7

    .line 47
    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    move v8, v4

    goto :goto_0

    :cond_2
    move v7, v5

    move v8, v7

    .line 50
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v8, :cond_5

    new-array v3, v4, [I

    const v8, 0x1010034

    aput v8, v3, v5

    .line 53
    invoke-virtual {v1, p1, v3, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 56
    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq p3, p2, :cond_3

    new-array p1, v4, [I

    aput v6, p1, v5

    .line 59
    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 62
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 63
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 64
    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 65
    invoke-virtual {p2}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result p3

    .line 66
    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-static {p2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p2

    move v2, p2

    move v7, p3

    .line 68
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    const/4 p1, 0x2

    if-ne v7, p1, :cond_6

    .line 73
    new-instance p1, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;

    invoke-direct {p1, p0, v2}, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;-><init>(Landroid/widget/TextView;F)V

    return-object p1

    :cond_6
    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "onAttachedToWindow"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->checkFont(Landroid/content/res/Configuration;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "onConfigurationChanged"

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->checkFont(Landroid/content/res/Configuration;Ljava/lang/String;)V

    return-void
.end method
