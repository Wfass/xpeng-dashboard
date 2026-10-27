.class public Lcom/xiaopeng/xui/view/b/b;
.super Ljava/lang/Object;
.source "XFontScaleHelper.java"


# instance fields
.field private abv:F


# direct methods
.method private constructor <init>(F)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/xiaopeng/xui/view/b/b;->abv:F

    .line 58
    return-void
.end method

.method public static a(Landroid/content/res/Resources;I)Lcom/xiaopeng/xui/view/b/b;
    .locals 2
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 26
    invoke-static {}, Lcom/xiaopeng/xui/a;->qm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/view/b/b;->b(Landroid/content/res/Resources;I)F

    move-result p0

    .line 30
    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p0, p1

    if-eqz p1, :cond_1

    .line 31
    new-instance p1, Lcom/xiaopeng/xui/view/b/b;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/view/b/b;-><init>(F)V

    return-object p1

    .line 33
    :cond_1
    return-object v1
.end method

.method public static a(Landroid/content/res/TypedArray;I)Lcom/xiaopeng/xui/view/b/b;
    .locals 1
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 39
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/view/b/b;->a(Landroid/content/res/TypedArray;II)Lcom/xiaopeng/xui/view/b/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/res/TypedArray;II)Lcom/xiaopeng/xui/view/b/b;
    .locals 2
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 46
    invoke-static {}, Lcom/xiaopeng/xui/a;->qm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    return-object v1

    .line 49
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/xui/view/b/b;->b(Landroid/content/res/TypedArray;II)F

    move-result p0

    .line 50
    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p0, p1

    if-eqz p1, :cond_1

    .line 51
    new-instance p1, Lcom/xiaopeng/xui/view/b/b;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/view/b/b;-><init>(F)V

    return-object p1

    .line 53
    :cond_1
    return-object v1
.end method

.method private static b(Landroid/content/res/Resources;I)F
    .locals 2
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 86
    if-eqz p1, :cond_0

    .line 87
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 88
    const/4 v1, 0x1

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

    .line 93
    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method private static b(Landroid/content/res/TypedArray;II)F
    .locals 1
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

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

    .line 78
    :cond_0
    nop

    .line 81
    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/b/b;->b(Landroid/content/res/Resources;I)F

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    iget v0, p0, Lcom/xiaopeng/xui/view/b/b;->abv:F

    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    iget v0, p0, Lcom/xiaopeng/xui/view/b/b;->abv:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    return-void
.end method
