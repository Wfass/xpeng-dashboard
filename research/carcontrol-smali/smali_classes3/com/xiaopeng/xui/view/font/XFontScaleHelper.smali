.class public Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
.super Ljava/lang/Object;
.source "XFontScaleHelper.java"


# instance fields
.field private mComplexToFloat:F


# direct methods
.method private constructor <init>(F)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->mComplexToFloat:F

    return-void
.end method

.method private static complexToFloatForSp(Landroid/content/res/Resources;I)F
    .locals 2

    if-eqz p1, :cond_0

    .line 87
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    .line 88
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 89
    invoke-virtual {v0}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 90
    iget p0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method private static complexToFloatForSp(Landroid/content/res/TypedArray;II)F
    .locals 1

    .line 72
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 74
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 75
    invoke-virtual {p2}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 76
    iget p0, p2, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->complexToFloatForSp(Landroid/content/res/Resources;I)F

    move-result p0

    return p0
.end method

.method public static create(Landroid/content/res/Resources;I)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    .locals 2

    .line 26
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isFontScaleDynamicChangeEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 29
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->complexToFloatForSp(Landroid/content/res/Resources;I)F

    move-result p0

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p0, p1

    if-eqz p1, :cond_1

    .line 31
    new-instance p1, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;-><init>(F)V

    return-object p1

    :cond_1
    return-object v1
.end method

.method public static create(Landroid/content/res/TypedArray;I)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->create(Landroid/content/res/TypedArray;II)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/res/TypedArray;II)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    .locals 2

    .line 46
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isFontScaleDynamicChangeEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 49
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->complexToFloatForSp(Landroid/content/res/TypedArray;II)F

    move-result p0

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p0, p1

    if-eqz p1, :cond_1

    .line 51
    new-instance p1, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;-><init>(F)V

    return-object p1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getCurrentFontSize(Landroid/util/DisplayMetrics;)F
    .locals 2

    .line 61
    iget v0, p0, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->mComplexToFloat:F

    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public refreshTextSize(Landroid/widget/TextView;)V
    .locals 1

    .line 66
    iget v0, p0, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->mComplexToFloat:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
