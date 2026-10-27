.class public Lcom/xiaopeng/lib/utils/d/b;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field private static height:I

.field private static width:I


# direct methods
.method public static a(Landroid/content/Context;F)I
    .locals 0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 63
    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 28
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/xiaopeng/lib/utils/d/b;->width:I

    .line 29
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/xiaopeng/lib/utils/d/b;->height:I

    .line 30
    return-void
.end method
