.class public Lcom/xiaopeng/devtools/utils/p;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# static fields
.field private static height:I

.field private static width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, -0x1

    sput v0, Lcom/xiaopeng/devtools/utils/p;->width:I

    .line 21
    sput v0, Lcom/xiaopeng/devtools/utils/p;->height:I

    return-void
.end method

.method public static ah(Landroid/content/Context;)I
    .locals 1

    .line 38
    sget v0, Lcom/xiaopeng/devtools/utils/p;->height:I

    if-gez v0, :cond_0

    .line 39
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/p;->init(Landroid/content/Context;)V

    .line 41
    :cond_0
    sget p0, Lcom/xiaopeng/devtools/utils/p;->height:I

    return p0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 26
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/xiaopeng/devtools/utils/p;->width:I

    .line 27
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/xiaopeng/devtools/utils/p;->height:I

    .line 28
    return-void
.end method
