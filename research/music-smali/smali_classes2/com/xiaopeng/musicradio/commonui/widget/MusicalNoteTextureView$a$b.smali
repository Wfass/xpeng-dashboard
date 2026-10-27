.class Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;
.super Ljava/lang/Object;
.source "MusicalNoteTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:J

.field private i:Z

.field private j:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->a:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$1;)V
    .locals 0

    .line 274
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 303
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->c:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->j:I

    return-void
.end method

.method public a(III)V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->a:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    int-to-float p2, p2

    .line 290
    iput p2, v0, Landroid/graphics/RectF;->right:F

    neg-int p2, p3

    int-to-float p2, p2

    .line 291
    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 292
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 293
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->b:I

    .line 294
    iput p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->c:I

    const p1, 0x3ecccccd    # 0.4f

    .line 296
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->f:F

    .line 297
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide v0, 0x4085e00000000000L    # 700.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->d:I

    .line 298
    iget p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->f:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    const/high16 p3, 0x44160000    # 600.0f

    div-float/2addr p2, p3

    const/high16 p3, 0x42a60000    # 83.0f

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->e:F

    .line 299
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    mul-double/2addr p2, v0

    double-to-int p2, p2

    int-to-float p2, p2

    const p3, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->g:F

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Z)V
    .locals 4

    .line 307
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->h:J

    .line 311
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->h:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->d:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_2

    if-eqz p3, :cond_2

    .line 312
    iget-boolean p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->i:Z

    if-eqz p3, :cond_1

    .line 313
    iget p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->g:F

    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->e:F

    sub-float/2addr p3, v0

    iput p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->g:F

    .line 314
    iget p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->g:F

    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->f:F

    cmpg-float p3, p3, v0

    if-gtz p3, :cond_2

    const/4 p3, 0x0

    .line 315
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->i:Z

    .line 316
    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->g:F

    goto :goto_0

    .line 319
    :cond_1
    iget p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->g:F

    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->e:F

    add-float/2addr p3, v0

    iput p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->g:F

    .line 320
    iget p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->g:F

    cmpl-float p3, p3, v1

    if-ltz p3, :cond_2

    const/4 p3, 0x1

    .line 321
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->i:Z

    .line 322
    iput v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->g:F

    .line 327
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 328
    iget p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->b:I

    int-to-float p3, p3

    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->j:I

    int-to-float v0, v0

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 329
    iget p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->g:F

    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 330
    iget-object p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->a:Landroid/graphics/RectF;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, p3, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 331
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
