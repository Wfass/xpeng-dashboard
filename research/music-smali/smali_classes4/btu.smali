.class Lbtu;
.super Ljava/lang/Object;
.source "FontScaleHelper.java"


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/TextView;F)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 10
    iput v0, p0, Lbtu;->a:I

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lbtu;->b:F

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbtu;->d:Ljava/lang/ref/WeakReference;

    .line 18
    iput p2, p0, Lbtu;->c:F

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .line 22
    iget-object v0, p0, Lbtu;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 27
    iget v2, p0, Lbtu;->c:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    return-void

    .line 30
    :cond_1
    iget v2, p0, Lbtu;->a:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_3

    iget v3, p0, Lbtu;->b:F

    const/4 v4, 0x1

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 31
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 32
    iget v3, p0, Lbtu;->c:F

    div-float/2addr v2, v3

    const/4 v3, 0x2

    .line 33
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 37
    :goto_1
    iput v1, p0, Lbtu;->c:F

    return-void
.end method

.method a(IF)V
    .locals 0

    .line 41
    iput p1, p0, Lbtu;->a:I

    .line 42
    iput p2, p0, Lbtu;->b:F

    return-void
.end method
