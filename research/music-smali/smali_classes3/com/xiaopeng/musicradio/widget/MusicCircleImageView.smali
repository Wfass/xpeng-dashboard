.class public Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;
.super Lcom/xiaopeng/xui/widget/XImageView;
.source "MusicCircleImageView.java"


# static fields
.field private static final a:Landroid/widget/ImageView$ScaleType;

.field private static final b:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private g:I

.field private h:I

.field protected final i:Landroid/graphics/RectF;

.field protected final j:Landroid/graphics/RectF;

.field protected k:I

.field private l:Z

.field private m:Landroid/graphics/Bitmap;

.field private n:Landroid/graphics/BitmapShader;

.field private o:I

.field private p:I

.field private q:F

.field private r:F

.field private s:F

.field private t:Landroid/graphics/ColorFilter;

.field private u:Z

.field private v:Z

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->b:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    .line 55
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->j:Landroid/graphics/RectF;

    .line 57
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->c:Landroid/graphics/Matrix;

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->d:Landroid/graphics/Paint;

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->e:Landroid/graphics/Paint;

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->f:Landroid/graphics/Paint;

    const/high16 p1, 0x10000000

    .line 62
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->g:I

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->k:I

    .line 64
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->h:I

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->j:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->c:Landroid/graphics/Matrix;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->d:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->e:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->f:Landroid/graphics/Paint;

    const/high16 v0, 0x10000000

    .line 62
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->g:I

    const/4 v1, 0x0

    .line 63
    iput v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->k:I

    .line 64
    iput v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->h:I

    const/4 v2, 0x1

    .line 65
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->l:Z

    .line 94
    sget-object v3, Lcom/xiaopeng/musicradio/common/k$i;->MusicCircleImageView:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->MusicCircleImageView_border_width:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->k:I

    .line 98
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->MusicCircleImageView_border_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->g:I

    .line 99
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->MusicCircleImageView_border_overlay:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->l:Z

    .line 100
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->MusicCircleImageView_fill_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->h:I

    .line 101
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->MusicCircleImageView_round_radius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->s:F

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 380
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 381
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 387
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 388
    sget-object v1, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->b:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 390
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->b:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 393
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 394
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 395
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 398
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private d()V
    .locals 2

    .line 108
    sget-object v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setWillNotDraw(Z)V

    const/4 v1, 0x1

    .line 111
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->u:Z

    .line 113
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->v:Z

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->a()V

    .line 115
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->v:Z

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->d:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 348
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->t:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 405
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->m:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->m:Landroid/graphics/Bitmap;

    .line 409
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->a()V

    return-void
.end method

.method private g()Landroid/graphics/RectF;
    .locals 5

    .line 472
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 473
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 475
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 477
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 478
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 480
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v2

    add-float v4, v3, v2

    add-float/2addr v2, v0

    invoke-direct {v1, v3, v0, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private h()Landroid/graphics/RectF;
    .locals 5

    .line 484
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getPaddingLeft()I

    move-result v0

    .line 485
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getPaddingTop()I

    move-result v1

    .line 486
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 487
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 488
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method private i()V
    .locals 6

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->c:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 498
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->o:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->p:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    if-lez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v3, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->p:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 500
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->o:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v3, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->o:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 503
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->p:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    .line 506
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 507
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->c:Landroid/graphics/Matrix;

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->n:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 413
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->u:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 414
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->v:Z

    return-void

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 427
    :cond_2
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->m:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->n:Landroid/graphics/BitmapShader;

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->n:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->g:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->k:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->p:I

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->o:I

    .line 444
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->s:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 445
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->b()V

    goto :goto_0

    .line 447
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->c()V

    .line 450
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->e()V

    .line 451
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i()V

    .line 452
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->invalidate()V

    return-void

    .line 423
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->invalidate()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 3

    .line 163
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->h:I

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->s:F

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->s:F

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 167
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->k:I

    if-lez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->j:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->s:F

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected b()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->h()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 458
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->s:F

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->r:F

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 173
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->h:I

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->q:F

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->q:F

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 177
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->k:I

    if-lez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->j:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->j:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->r:F

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected c()V
    .locals 5

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->j:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->g()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->j:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->k:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->j:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->k:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->r:F

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->j:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 465
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->l:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->k:I

    if-lez v0, :cond_0

    .line 466
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->q:F

    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->g:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->k:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->t:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->h:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 127
    sget-object v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 121
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XImageView;->onAttachedToWindow()V

    .line 122
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->d()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 146
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->w:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->s:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 156
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->b(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XImageView;->onSizeChanged(IIII)V

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->a()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 140
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adjustViewBounds not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 205
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->g:I

    if-ne p1, v0, :cond_0

    return-void

    .line 209
    :cond_0
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->g:I

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->e:Landroid/graphics/Paint;

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->g:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->invalidate()V

    return-void
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setBorderColor(I)V

    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->l:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 289
    :cond_0
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->l:Z

    .line 290
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->a()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 272
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->k:I

    if-ne p1, v0, :cond_0

    return-void

    .line 276
    :cond_0
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->k:I

    .line 277
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->a()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->t:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    return-void

    .line 336
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->t:Landroid/graphics/ColorFilter;

    .line 337
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->e()V

    .line 338
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->invalidate()V

    return-void
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->w:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 302
    :cond_0
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->w:Z

    .line 303
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->f()V

    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->h:I

    if-ne p1, v0, :cond_0

    return-void

    .line 248
    :cond_0
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->h:I

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->invalidate()V

    return-void
.end method

.method public setFillColorResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setFillColor(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 308
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 309
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->f()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 314
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->f()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 320
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 321
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->f()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 326
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageURI(Landroid/net/Uri;)V

    .line 327
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->f()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XImageView;->setPadding(IIII)V

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->a()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XImageView;->setPaddingRelative(IIII)V

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->a()V

    return-void
.end method

.method public setRoundRadius(F)V
    .locals 1

    .line 357
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->s:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->s:F

    .line 362
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->u:Z

    if-nez p1, :cond_1

    return-void

    .line 365
    :cond_1
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->s:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 366
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->b()V

    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->c()V

    .line 371
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->i()V

    .line 372
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->invalidate()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .line 132
    sget-object v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ScaleType %s not supported."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
