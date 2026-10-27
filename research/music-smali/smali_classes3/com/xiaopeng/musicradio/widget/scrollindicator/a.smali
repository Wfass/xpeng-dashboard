.class public Lcom/xiaopeng/musicradio/widget/scrollindicator/a;
.super Landroid/widget/LinearLayout;
.source "FixedIndicatorView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/scrollindicator/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

.field private b:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;

.field private c:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$c;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

.field private m:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

.field private n:Landroid/graphics/Bitmap;

.field private o:Landroid/graphics/Matrix;

.field private p:Landroid/graphics/Canvas;

.field private q:[I

.field private r:I

.field private s:I

.field private t:F

.field private u:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d:I

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e:I

    .line 39
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->f:I

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->g:Z

    .line 116
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->h:I

    .line 174
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->i:Ljava/util/List;

    .line 176
    new-instance p1, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;-><init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->j:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;

    .line 226
    new-instance p1, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$2;-><init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->k:Landroid/view/View$OnClickListener;

    .line 454
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->o:Landroid/graphics/Matrix;

    .line 455
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->p:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    .line 457
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->q:[I

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->c()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private a(IFZ)I
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    if-nez v2, :cond_0

    goto :goto_2

    .line 499
    :cond_0
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a()Landroid/view/View;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_4

    .line 501
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object p3

    add-int/lit8 p1, p1, 0x1

    .line 503
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->b()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 504
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 506
    :cond_2
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_4

    .line 509
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float/2addr p3, v2

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    :goto_1
    add-float/2addr p3, p1

    float-to-int p1, p3

    .line 510
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    invoke-interface {p2, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->b(I)I

    move-result p2

    .line 511
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getHeight()I

    move-result v2

    invoke-interface {p3, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a(I)I

    move-result p3

    .line 512
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 513
    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/view/View;->layout(IIII)V

    return p1

    .line 517
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1

    :cond_5
    :goto_2
    return v1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;I)Landroid/view/View;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->m:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    return-object p0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 14

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 347
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 349
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->m:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->d()V

    return-void

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v0, :cond_2

    sub-int/2addr v0, v2

    .line 353
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->setCurrentItem(I)V

    .line 354
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->m:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->d()V

    return-void

    .line 359
    :cond_2
    sget-object v1, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$3;->a:[I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    invoke-interface {v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->b()Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    const/4 v5, 0x5

    if-eq v1, v5, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getHeight()I

    move-result v1

    iget-object v5, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getHeight()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a(I)I

    move-result v5

    sub-int/2addr v1, v5

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    .line 362
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getHeight()I

    move-result v1

    iget-object v5, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getHeight()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a(I)I

    move-result v5

    sub-int/2addr v1, v5

    div-int/2addr v1, v3

    goto :goto_0

    :cond_4
    move v1, v4

    .line 376
    :goto_1
    iget-object v5, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->m:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->a()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->m:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->b()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 377
    iget-object v5, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->m:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->c()I

    move-result v5

    int-to-float v5, v5

    move-object v9, v6

    move v8, v7

    :goto_2
    if-ge v8, v0, :cond_6

    .line 380
    invoke-direct {p0, v8}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object v9

    .line 381
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v10, v5

    if-gtz v10, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-gez v10, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    move v8, v7

    .line 386
    :goto_3
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 387
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v5, v10

    float-to-int v10, v10

    .line 388
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v5, v9

    int-to-float v0, v0

    div-float/2addr v9, v0

    .line 389
    invoke-direct {p0, v8, v9, v10}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b(IFI)V

    .line 390
    invoke-direct {p0, v8, v9, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a(IFZ)I

    move-result v0

    goto :goto_4

    .line 392
    :cond_7
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->f:I

    if-eqz v0, :cond_8

    .line 393
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->r:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 395
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v5, v5

    iget v8, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->t:F

    mul-float/2addr v5, v8

    add-float/2addr v5, v0

    .line 396
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->r:I

    iget v9, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->s:I

    invoke-direct {p0, v0, v8, v9}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b(IFI)V

    .line 397
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->r:I

    iget v8, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->t:F

    invoke-direct {p0, v0, v8, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a(IFZ)I

    move-result v0

    goto :goto_4

    .line 400
    :cond_8
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d:I

    invoke-direct {p0, v0, v4, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a(IFZ)I

    move-result v0

    .line 401
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d:I

    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_9

    return-void

    .line 405
    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v5, v2

    .line 407
    :goto_4
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    invoke-interface {v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 408
    iget-object v8, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    invoke-interface {v8}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int v9, v0, v8

    .line 409
    div-int/2addr v9, v3

    int-to-float v3, v9

    add-float/2addr v5, v3

    .line 411
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 413
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getMeasuredWidth()I

    move-result v9

    .line 414
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getMeasuredHeight()I

    move-result v10

    .line 418
    iget-object v11, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    invoke-virtual {v11}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->a()Z

    move-result v11

    if-eqz v11, :cond_c

    int-to-float v11, v8

    add-float/2addr v11, v5

    int-to-float v12, v9

    cmpl-float v13, v11, v12

    if-lez v13, :cond_c

    .line 421
    iget-object v13, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->n:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-lt v13, v8, :cond_a

    iget-object v13, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-ge v13, v2, :cond_b

    .line 422
    :cond_a
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->n:Landroid/graphics/Bitmap;

    .line 423
    iget-object v9, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->p:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_b
    sub-float/2addr v11, v12

    .line 427
    iget-object v9, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->p:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 428
    iget-object v9, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->p:Landroid/graphics/Canvas;

    invoke-virtual {v9, v7, v7, v8, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 429
    iget-object v9, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->p:Landroid/graphics/Canvas;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v7, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 430
    iget-object v9, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    invoke-interface {v9}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a()Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->p:Landroid/graphics/Canvas;

    invoke-virtual {v9, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 431
    iget-object v9, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->p:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 433
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 434
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 435
    invoke-virtual {p1, v7, v7, v8, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 437
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->n:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v4, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 438
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    int-to-float v1, v2

    .line 441
    invoke-virtual {p1, v4, v4, v11, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 442
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->o:Landroid/graphics/Matrix;

    int-to-float v0, v0

    sub-float/2addr v11, v0

    invoke-virtual {v1, v11, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 443
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->n:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 445
    :cond_c
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 446
    invoke-virtual {p1, v7, v7, v8, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 450
    :goto_5
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 344
    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->m:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->d()V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)I
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getTabCountInLayout()I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->h:I

    return p1
.end method

.method private b(IFI)V
    .locals 8

    if-ltz p1, :cond_6

    .line 460
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    if-eqz v0, :cond_1

    .line 464
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a(IFI)V

    .line 466
    :cond_1
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->u:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;

    if-eqz p3, :cond_6

    .line 467
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->q:[I

    array-length v0, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_3

    aget v5, p3, v3

    if-eq v5, p1, :cond_2

    add-int/lit8 v6, p1, 0x1

    if-eq v5, v6, :cond_2

    .line 469
    invoke-virtual {p0, v5}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 471
    iget-object v7, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->u:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;

    invoke-interface {v7, v6, v5, v4}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;->a(Landroid/view/View;IF)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 475
    :cond_3
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->q:[I

    aput p1, p3, v2

    add-int/lit8 v0, p1, 0x1

    .line 476
    aput v0, p3, v1

    .line 478
    iget p3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->h:I

    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 480
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->u:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->h:I

    invoke-interface {v1, p3, v2, v4}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;->a(Landroid/view/View;IF)V

    .line 483
    :cond_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 485
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->u:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-interface {v1, p3, p1, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;->a(Landroid/view/View;IF)V

    .line 488
    :cond_5
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 490
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->u:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;

    invoke-interface {p3, p1, v0, p2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;->a(Landroid/view/View;IF)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 58
    new-instance v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;-><init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->m:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    return-void
.end method

.method private c(I)V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->b()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 162
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    if-ne p1, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 164
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private d(I)Landroid/view/View;
    .locals 1

    .line 624
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 628
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->i:Ljava/util/List;

    return-object p0
.end method

.method private d()V
    .locals 6

    .line 521
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getTabCountInLayout()I

    move-result v0

    .line 522
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v4, -0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_3

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_3

    .line 534
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object v1

    .line 535
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 536
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    .line 537
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 538
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v0, :cond_3

    .line 543
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 545
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 546
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 547
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_3

    .line 525
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object v4

    .line 526
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 527
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 528
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 529
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private e(I)Landroid/view/View;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 637
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->u:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d:I

    return p0
.end method

.method static synthetic g(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->k:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private getTabCountInLayout()I
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getChildCount()I

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->v:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->w:Landroid/widget/LinearLayout$LayoutParams;

    return-object p0
.end method

.method static synthetic j(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d()V

    return-void
.end method

.method static synthetic k(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->g:Z

    return p0
.end method

.method static synthetic l(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/b$c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->c:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$c;

    return-object p0
.end method

.method static synthetic m(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;

    return-object p0
.end method

.method static synthetic n(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->h:I

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 588
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->f:I

    if-nez p1, :cond_0

    .line 590
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->c(I)V

    :cond_0
    return-void
.end method

.method public a(IFI)V
    .locals 1

    .line 576
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->r:I

    .line 577
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->t:F

    .line 578
    iput p3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->s:I

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    if-eqz v0, :cond_0

    .line 580
    invoke-static {p0}, Lgj;->e(Landroid/view/View;)V

    goto :goto_0

    .line 582
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b(IFI)V

    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-gez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    move p1, v0

    .line 129
    :cond_2
    :goto_0
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d:I

    if-eq v0, p1, :cond_6

    .line 130
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->h:I

    .line 131
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d:I

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->m:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->m:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->d()V

    .line 136
    :cond_3
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->f:I

    if-nez v0, :cond_5

    .line 137
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->c(I)V

    if-eqz p2, :cond_4

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->h:I

    if-ltz p2, :cond_4

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getTabCountInLayout()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 139
    iget p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->h:I

    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    .line 140
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v1, v0, p2

    .line 141
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int p1, v1

    const/16 v1, 0x258

    .line 143
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 144
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->m:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    invoke-virtual {v1, p2, v0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->a(III)V

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 146
    invoke-direct {p0, p1, p2, v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b(IFI)V

    goto :goto_1

    .line 149
    :cond_5
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->u:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;

    if-nez p2, :cond_6

    .line 150
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->c(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 656
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b()V

    if-nez p2, :cond_0

    .line 659
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 661
    :cond_0
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    .line 663
    :goto_0
    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->w:Landroid/widget/LinearLayout$LayoutParams;

    .line 664
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->v:Landroid/view/View;

    .line 665
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 666
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->g:Z

    return v0
.end method

.method public b(I)Landroid/view/View;
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_2

    .line 617
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 620
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public b()V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->v:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->removeView(Landroid/view/View;)V

    .line 683
    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->v:Landroid/view/View;

    .line 685
    :cond_0
    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->w:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->b()Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->CENTENT_BACKGROUND:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    if-ne v0, v1, :cond_0

    .line 334
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a(Landroid/graphics/Canvas;)V

    .line 336
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->b()Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->CENTENT_BACKGROUND:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    if-eq v0, v1, :cond_1

    .line 338
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getCenterView()Landroid/view/View;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->v:Landroid/view/View;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 557
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->b()I

    move-result v0

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d:I

    return v0
.end method

.method public getIndicatorAdapter()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    return-object v0
.end method

.method public getOnIndicatorItemClickListener()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$c;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->c:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$c;

    return-object v0
.end method

.method public getOnItemSelectListener()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;

    return-object v0
.end method

.method public getOnTransitionListener()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->u:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    .line 708
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->h:I

    return v0
.end method

.method public getScrollBar()Lcom/xiaopeng/musicradio/widget/scrollindicator/c;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    return-object v0
.end method

.method public getSplitMethod()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e:I

    return v0
.end method

.method protected measureChildren(II)V
    .locals 0

    .line 562
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureChildren(II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->m:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->d()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->v:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->w:Landroid/widget/LinearLayout$LayoutParams;

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 568
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a(IFZ)I

    return-void
.end method

.method public setAdapter(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->j:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->b(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;)V

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->j:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->a(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;)V

    .line 74
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->c()V

    return-void
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 1

    .line 652
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a(IZ)V

    return-void
.end method

.method public setItemClickable(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->g:Z

    return-void
.end method

.method public setOnIndicatorItemClickListener(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$c;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->c:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$c;

    return-void
.end method

.method public setOnItemSelectListener(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;

    return-void
.end method

.method public setOnTransitionListener(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;)V
    .locals 3

    .line 598
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->u:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;

    .line 599
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->c(I)V

    .line 600
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 601
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->b()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 602
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 604
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d:I

    if-ne v2, v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1, v1, v0, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;->a(Landroid/view/View;IF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setScrollBar(Lcom/xiaopeng/musicradio/widget/scrollindicator/c;)V
    .locals 6

    .line 248
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getPaddingBottom()I

    move-result v0

    .line 249
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getPaddingTop()I

    move-result v1

    .line 250
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 251
    sget-object v2, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$3;->a:[I

    iget-object v5, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    invoke-interface {v5}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->b()Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 263
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    .line 264
    sget-object v2, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$3;->a:[I

    iget-object v5, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l:Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    invoke-interface {v5}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->b()Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 270
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a(I)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_1

    .line 266
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a(I)I

    move-result p1

    add-int/2addr v0, p1

    .line 275
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->setPadding(IIII)V

    return-void
.end method

.method public setSplitMethod(I)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e:I

    .line 219
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d()V

    return-void
.end method
