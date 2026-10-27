.class public Lms;
.super Lmq;
.source "ImageLayer.java"


# instance fields
.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Rect;

.field private final i:Landroid/graphics/Rect;

.field private final j:Lcom/airbnb/lottie/g;

.field private k:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;Lmt;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1, p2}, Lmq;-><init>(Lcom/airbnb/lottie/f;Lmt;)V

    .line 25
    new-instance v0, Ljl;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljl;-><init>(I)V

    iput-object v0, p0, Lms;->g:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lms;->h:Landroid/graphics/Rect;

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lms;->i:Landroid/graphics/Rect;

    .line 34
    invoke-virtual {p2}, Lmt;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/f;->getLottieImageAssetForId(Ljava/lang/String;)Lcom/airbnb/lottie/g;

    move-result-object p1

    iput-object p1, p0, Lms;->j:Lcom/airbnb/lottie/g;

    return-void
.end method

.method private g()Landroid/graphics/Bitmap;
    .locals 2

    .line 72
    iget-object v0, p0, Lms;->l:Lkh;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lkh;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lms;->c:Lmt;

    invoke-virtual {v0}, Lmt;->g()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lms;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/f;->getBitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 83
    :cond_1
    iget-object v0, p0, Lms;->j:Lcom/airbnb/lottie/g;

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 62
    invoke-super {p0, p1, p2, p3}, Lmq;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 63
    iget-object p2, p0, Lms;->j:Lcom/airbnb/lottie/g;

    if-eqz p2, :cond_0

    .line 64
    invoke-static {}, Lpb;->a()F

    move-result p2

    .line 65
    iget-object p3, p0, Lms;->j:Lcom/airbnb/lottie/g;

    invoke-virtual {p3}, Lcom/airbnb/lottie/g;->a()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    iget-object v0, p0, Lms;->j:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->b()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 66
    iget-object p2, p0, Lms;->a:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Lpe;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lpe<",
            "TT;>;)V"
        }
    .end annotation

    .line 93
    invoke-super {p0, p1, p2}, Lmq;->a(Ljava/lang/Object;Lpe;)V

    .line 94
    sget-object v0, Lcom/airbnb/lottie/k;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    .line 96
    iput-object v1, p0, Lms;->k:Lkh;

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Lms;->k:Lkh;

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/k;->N:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    .line 104
    iput-object v1, p0, Lms;->l:Lkh;

    goto :goto_0

    .line 107
    :cond_2
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Lms;->l:Lkh;

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 38
    invoke-direct {p0}, Lms;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lms;->j:Lcom/airbnb/lottie/g;

    if-nez v1, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    invoke-static {}, Lpb;->a()F

    move-result v1

    .line 44
    iget-object v2, p0, Lms;->g:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    iget-object p3, p0, Lms;->k:Lkh;

    if-eqz p3, :cond_1

    .line 46
    iget-object v2, p0, Lms;->g:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lkh;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 49
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 50
    iget-object p2, p0, Lms;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 51
    iget-object p2, p0, Lms;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {p2}, Lcom/airbnb/lottie/f;->getMaintainOriginalImageBounds()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 52
    iget-object p2, p0, Lms;->i:Landroid/graphics/Rect;

    iget-object p3, p0, Lms;->j:Lcom/airbnb/lottie/g;

    invoke-virtual {p3}, Lcom/airbnb/lottie/g;->a()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    iget-object v2, p0, Lms;->j:Lcom/airbnb/lottie/g;

    invoke-virtual {v2}, Lcom/airbnb/lottie/g;->b()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 54
    :cond_2
    iget-object p2, p0, Lms;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    :goto_0
    iget-object p2, p0, Lms;->h:Landroid/graphics/Rect;

    iget-object p3, p0, Lms;->i:Landroid/graphics/Rect;

    iget-object v1, p0, Lms;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method
