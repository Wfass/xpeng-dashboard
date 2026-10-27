.class public Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
.super Ljava/lang/Object;
.source "XFontScaleHelper.java"


# instance fields
.field private mComplexToFloat:F


# direct methods
.method private constructor <init>(F)V
    .locals 0
    .param p1, "complexToFloat"    # F

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->mComplexToFloat:F

    .line 58
    return-void
.end method

.method private static complexToFloatForSp(Landroid/content/res/Resources;I)F
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 86
    if-eqz p1, :cond_0

    .line 87
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 88
    .local v0, "out":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 89
    invoke-virtual {v0}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 90
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    return v1

    .line 93
    .end local v0    # "out":Landroid/util/TypedValue;
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private static complexToFloatForSp(Landroid/content/res/TypedArray;II)F
    .locals 3
    .param p0, "typedArray"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "index"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "defaultValue"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 72
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 74
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 75
    invoke-virtual {v0}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 76
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    return v1

    .line 78
    .end local v0    # "out":Landroid/util/TypedValue;
    :cond_0
    nop

    .line 81
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->complexToFloatForSp(Landroid/content/res/Resources;I)F

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/res/Resources;I)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 26
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isFontScaleDynamicChangeEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->complexToFloatForSp(Landroid/content/res/Resources;I)F

    move-result v0

    .line 30
    .local v0, "complexToFloat":F
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    .line 31
    new-instance v1, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;-><init>(F)V

    return-object v1

    .line 33
    :cond_1
    return-object v1
.end method

.method public static create(Landroid/content/res/TypedArray;I)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    .locals 1
    .param p0, "typedArray"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "index"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 39
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->create(Landroid/content/res/TypedArray;II)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/res/TypedArray;II)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    .locals 3
    .param p0, "typedArray"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "index"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "defaultValue"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 46
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isFontScaleDynamicChangeEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    return-object v1

    .line 49
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->complexToFloatForSp(Landroid/content/res/TypedArray;II)F

    move-result v0

    .line 50
    .local v0, "complexToFloat":F
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    .line 51
    new-instance v1, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;-><init>(F)V

    return-object v1

    .line 53
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getCurrentFontSize(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    iget v0, p0, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->mComplexToFloat:F

    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public refreshTextSize(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    iget v0, p0, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->mComplexToFloat:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    return-void
.end method
