.class public Lapf;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# static fields
.field private static a:I = -0x1

.field private static b:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    .line 38
    sget v0, Lapf;->b:I

    if-gez v0, :cond_0

    .line 39
    invoke-static {p0}, Lapf;->b(Landroid/content/Context;)V

    .line 41
    :cond_0
    sget p0, Lapf;->b:I

    return p0
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 26
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lapf;->a:I

    .line 27
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lapf;->b:I

    return-void
.end method
