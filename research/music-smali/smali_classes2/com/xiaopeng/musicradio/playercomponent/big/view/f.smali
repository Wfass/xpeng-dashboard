.class public Lcom/xiaopeng/musicradio/playercomponent/big/view/f;
.super Landroid/graphics/drawable/Drawable;
.source "PlayerBgEffectDrawable.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Landroid/animation/ValueAnimator;

.field private o:Landroid/animation/ValueAnimator;

.field private p:F

.field private q:F

.field private r:J

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->b:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->c:Landroid/graphics/Paint;

    const-wide/16 v0, 0x0

    .line 131
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->r:J

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->s:Z

    .line 30
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 33
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->b:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v4, 0x43960000    # 300.0f

    invoke-direct {v2, v4, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 34
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 35
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v4, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 36
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 37
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/playercomponent/big/view/f;F)F
    .locals 0

    .line 21
    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->p:F

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/playercomponent/big/view/f;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->r:J

    return-wide v0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/playercomponent/big/view/f;J)J
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->r:J

    return-wide p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/playercomponent/big/view/f;F)F
    .locals 0

    .line 21
    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->q:F

    return p1
.end method

.method private d()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 108
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    const-wide/32 v2, 0xc350

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 111
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 112
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/f$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 120
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->s:Z

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private e()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 136
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->o:Landroid/animation/ValueAnimator;

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->o:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->o:Landroid/animation/ValueAnimator;

    const-wide/32 v1, 0xc350

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->o:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->o:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/f$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f$2;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->s:Z

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 91
    iput-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 95
    iput-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->o:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;IIIZ)V
    .locals 1

    .line 54
    iput-boolean p5, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->s:Z

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->a:Landroid/graphics/Bitmap;

    mul-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    const/high16 p5, 0x43160000    # 150.0f

    add-float/2addr p4, p5

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p4, p5

    .line 59
    iput p4, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->h:F

    .line 60
    iput p4, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->i:F

    int-to-float p3, p3

    .line 62
    iget p5, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->h:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p5, v0

    sub-float/2addr p3, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p3, p5

    iput p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->d:F

    neg-float p3, p4

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p3, v0

    div-float/2addr p3, p5

    iput p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->e:F

    .line 64
    iget p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->d:F

    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    div-float/2addr v0, p5

    add-float/2addr p3, v0

    iput p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->f:F

    .line 65
    iget p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->e:F

    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    div-float/2addr v0, p5

    add-float/2addr p3, v0

    iput p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->g:F

    .line 67
    iget p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->d:F

    iput p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->j:F

    int-to-float p2, p2

    .line 68
    iget p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->h:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p3, p1

    div-float/2addr p3, p5

    sub-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->k:F

    .line 69
    iget p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->j:F

    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p4

    div-float/2addr p2, p5

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->l:F

    .line 70
    iget p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->k:F

    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p4, p2

    div-float/2addr p4, p5

    add-float/2addr p1, p4

    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->m:F

    .line 72
    invoke-static {}, Laqz;->a()Laqz;

    move-result-object p1

    invoke-virtual {p1}, Laqz;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->d()V

    .line 74
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->e()V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->invalidateSelf()V

    return-void
.end method

.method public a(Landroid/graphics/PorterDuffXfermode;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->invalidateSelf()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->s:Z

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->s:Z

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 176
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 177
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_1

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 193
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 194
    iget v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->h:F

    iget v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->i:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 195
    iget v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->d:F

    iget v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->e:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 196
    iget v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->p:F

    iget v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->f:F

    iget v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->g:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 197
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 201
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 202
    iget v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->h:F

    iget v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->i:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 203
    iget v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->j:F

    iget v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->k:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 204
    iget v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->q:F

    iget v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->l:F

    iget v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->m:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 205
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method
