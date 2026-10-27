.class public Lmx;
.super Lmq;
.source "TextLayer.java"


# instance fields
.field private final g:Ljava/lang/StringBuilder;

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/Matrix;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lld;",
            "Ljava/util/List<",
            "Ljp;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Landroidx/collection/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lkv;

.field private final o:Lcom/airbnb/lottie/f;

.field private final p:Lcom/airbnb/lottie/d;

.field private q:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Landroid/graphics/Typeface;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;Lmt;)V
    .locals 2

    .line 76
    invoke-direct {p0, p1, p2}, Lmq;-><init>(Lcom/airbnb/lottie/f;Lmt;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lmx;->g:Ljava/lang/StringBuilder;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmx;->h:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmx;->i:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Lmx$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmx$1;-><init>(Lmx;I)V

    iput-object v0, p0, Lmx;->j:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Lmx$2;

    invoke-direct {v0, p0, v1}, Lmx$2;-><init>(Lmx;I)V

    iput-object v0, p0, Lmx;->k:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmx;->l:Ljava/util/Map;

    .line 50
    new-instance v0, Landroidx/collection/c;

    invoke-direct {v0}, Landroidx/collection/c;-><init>()V

    iput-object v0, p0, Lmx;->m:Landroidx/collection/c;

    .line 77
    iput-object p1, p0, Lmx;->o:Lcom/airbnb/lottie/f;

    .line 78
    invoke-virtual {p2}, Lmt;->a()Lcom/airbnb/lottie/d;

    move-result-object p1

    iput-object p1, p0, Lmx;->p:Lcom/airbnb/lottie/d;

    .line 80
    invoke-virtual {p2}, Lmt;->s()Lls;

    move-result-object p1

    invoke-virtual {p1}, Lls;->d()Lkv;

    move-result-object p1

    iput-object p1, p0, Lmx;->n:Lkv;

    .line 81
    iget-object p1, p0, Lmx;->n:Lkv;

    invoke-virtual {p1, p0}, Lkv;->a(Lkh$a;)V

    .line 82
    iget-object p1, p0, Lmx;->n:Lkv;

    invoke-virtual {p0, p1}, Lmx;->a(Lkh;)V

    .line 84
    invoke-virtual {p2}, Lmt;->t()Llt;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p2, p1, Llt;->a:Llj;

    if-eqz p2, :cond_0

    .line 86
    iget-object p2, p1, Llt;->a:Llj;

    invoke-virtual {p2}, Llj;->a()Lkh;

    move-result-object p2

    iput-object p2, p0, Lmx;->q:Lkh;

    .line 87
    iget-object p2, p0, Lmx;->q:Lkh;

    invoke-virtual {p2, p0}, Lkh;->a(Lkh$a;)V

    .line 88
    iget-object p2, p0, Lmx;->q:Lkh;

    invoke-virtual {p0, p2}, Lmx;->a(Lkh;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 91
    iget-object p2, p1, Llt;->b:Llj;

    if-eqz p2, :cond_1

    .line 92
    iget-object p2, p1, Llt;->b:Llj;

    invoke-virtual {p2}, Llj;->a()Lkh;

    move-result-object p2

    iput-object p2, p0, Lmx;->s:Lkh;

    .line 93
    iget-object p2, p0, Lmx;->s:Lkh;

    invoke-virtual {p2, p0}, Lkh;->a(Lkh$a;)V

    .line 94
    iget-object p2, p0, Lmx;->s:Lkh;

    invoke-virtual {p0, p2}, Lmx;->a(Lkh;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 97
    iget-object p2, p1, Llt;->c:Llk;

    if-eqz p2, :cond_2

    .line 98
    iget-object p2, p1, Llt;->c:Llk;

    invoke-virtual {p2}, Llk;->a()Lkh;

    move-result-object p2

    iput-object p2, p0, Lmx;->u:Lkh;

    .line 99
    iget-object p2, p0, Lmx;->u:Lkh;

    invoke-virtual {p2, p0}, Lkh;->a(Lkh$a;)V

    .line 100
    iget-object p2, p0, Lmx;->u:Lkh;

    invoke-virtual {p0, p2}, Lmx;->a(Lkh;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 103
    iget-object p2, p1, Llt;->d:Llk;

    if-eqz p2, :cond_3

    .line 104
    iget-object p1, p1, Llt;->d:Llk;

    invoke-virtual {p1}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Lmx;->w:Lkh;

    .line 105
    iget-object p1, p0, Lmx;->w:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 106
    iget-object p1, p0, Lmx;->w:Lkh;

    invoke-virtual {p0, p1}, Lmx;->a(Lkh;)V

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Llc;FF)F
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 332
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 333
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 334
    invoke-virtual {p2}, Llc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Llc;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lld;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 335
    iget-object v3, p0, Lmx;->p:Lcom/airbnb/lottie/d;

    invoke-virtual {v3}, Lcom/airbnb/lottie/d;->j()Landroidx/collection/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/collection/f;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lld;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    float-to-double v3, v0

    .line 339
    invoke-virtual {v2}, Lld;->b()D

    move-result-wide v5

    float-to-double v7, p3

    mul-double/2addr v5, v7

    invoke-static {}, Lpb;->a()F

    move-result v0

    float-to-double v7, v0

    mul-double/2addr v5, v7

    float-to-double v7, p4

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private a(Llc;)Landroid/graphics/Typeface;
    .locals 3

    .line 297
    iget-object v0, p0, Lmx;->z:Lkh;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lkh;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 303
    :cond_0
    iget-object v0, p0, Lmx;->o:Lcom/airbnb/lottie/f;

    invoke-virtual {p1}, Llc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Llc;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/f;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 307
    :cond_1
    invoke-virtual {p1}, Llc;->d()Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 428
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 429
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 432
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 433
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 434
    invoke-direct {p0, v2}, Lmx;->a(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 437
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    goto :goto_0

    .line 442
    :cond_1
    :goto_1
    iget-object v2, p0, Lmx;->m:Landroidx/collection/c;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroidx/collection/c;->d(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    iget-object p1, p0, Lmx;->m:Landroidx/collection/c;

    invoke-virtual {p1, v3, v4}, Landroidx/collection/c;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 446
    :cond_2
    iget-object v0, p0, Lmx;->g:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_2
    if-ge p2, v1, :cond_3

    .line 448
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 449
    iget-object v2, p0, Lmx;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 450
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_2

    .line 452
    :cond_3
    iget-object p1, p0, Lmx;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 453
    iget-object p2, p0, Lmx;->m:Landroidx/collection/c;

    invoke-virtual {p2, v3, v4, p1}, Landroidx/collection/c;->b(JLjava/lang/Object;)V

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\r"

    const-string v1, "\r\n"

    .line 312
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\n"

    .line 313
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a(Lld;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lld;",
            ")",
            "Ljava/util/List<",
            "Ljp;",
            ">;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lmx;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lmx;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 416
    :cond_0
    invoke-virtual {p1}, Lld;->a()Ljava/util/List;

    move-result-object v0

    .line 417
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 418
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 420
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmm;

    .line 421
    new-instance v5, Ljp;

    iget-object v6, p0, Lmx;->o:Lcom/airbnb/lottie/f;

    invoke-direct {v5, v6, p0, v4}, Ljp;-><init>(Lcom/airbnb/lottie/f;Lmq;Lmm;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lmx;->l:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .line 383
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    .line 389
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 403
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 409
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Ljava/lang/String;Llb;Landroid/graphics/Canvas;)V
    .locals 0

    .line 393
    iget-boolean p2, p2, Llb;->k:Z

    if-eqz p2, :cond_0

    .line 394
    iget-object p2, p0, Lmx;->j:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lmx;->a(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 395
    iget-object p2, p0, Lmx;->k:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lmx;->a(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object p2, p0, Lmx;->k:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lmx;->a(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 398
    iget-object p2, p0, Lmx;->j:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lmx;->a(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Llb;Landroid/graphics/Canvas;F)V
    .locals 3

    const/4 v0, 0x0

    .line 319
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 320
    invoke-direct {p0, p1, v0}, Lmx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 322
    invoke-direct {p0, v1, p2, p3}, Lmx;->a(Ljava/lang/String;Llb;Landroid/graphics/Canvas;)V

    .line 323
    iget-object v2, p0, Lmx;->j:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, p4

    const/4 v2, 0x0

    .line 325
    invoke-virtual {p3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Llb;Landroid/graphics/Matrix;Llc;Landroid/graphics/Canvas;FF)V
    .locals 8

    const/4 v0, 0x0

    .line 213
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 215
    invoke-virtual {p4}, Llc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Llc;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lld;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 216
    iget-object v2, p0, Lmx;->p:Lcom/airbnb/lottie/d;

    invoke-virtual {v2}, Lcom/airbnb/lottie/d;->j()Landroidx/collection/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/collection/f;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lld;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    move-object v2, p0

    move-object v3, v1

    move-object v4, p3

    move v5, p7

    move-object v6, p2

    move-object v7, p5

    .line 221
    invoke-direct/range {v2 .. v7}, Lmx;->a(Lld;Landroid/graphics/Matrix;FLlb;Landroid/graphics/Canvas;)V

    .line 222
    invoke-virtual {v1}, Lld;->b()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p7

    invoke-static {}, Lpb;->a()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p6

    .line 224
    iget v2, p2, Llb;->e:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    .line 225
    iget-object v3, p0, Lmx;->x:Lkh;

    if-eqz v3, :cond_1

    .line 226
    invoke-virtual {v3}, Lkh;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1
    add-float/2addr v2, v3

    goto :goto_2

    .line 227
    :cond_1
    iget-object v3, p0, Lmx;->w:Lkh;

    if-eqz v3, :cond_2

    .line 228
    invoke-virtual {v3}, Lkh;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_2
    :goto_2
    mul-float/2addr v2, p6

    add-float/2addr v1, v2

    const/4 v2, 0x0

    .line 231
    invoke-virtual {p5, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Llb$a;Landroid/graphics/Canvas;F)V
    .locals 2

    .line 345
    sget-object v0, Lmx$3;->a:[I

    invoke-virtual {p1}, Llb$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    .line 353
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    neg-float p1, p3

    .line 350
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Llb;Landroid/graphics/Matrix;Llc;Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    .line 172
    iget-object v0, v8, Lmx;->y:Lkh;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lkh;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 175
    :cond_0
    iget v0, v9, Llb;->c:F

    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v11, v0, v1

    .line 178
    invoke-static/range {p2 .. p2}, Lpb;->a(Landroid/graphics/Matrix;)F

    move-result v12

    .line 180
    iget-object v0, v9, Llb;->a:Ljava/lang/String;

    .line 183
    iget v1, v9, Llb;->f:F

    invoke-static {}, Lpb;->a()F

    move-result v2

    mul-float v13, v1, v2

    .line 186
    invoke-direct {v8, v0}, Lmx;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 187
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v15, :cond_1

    .line 190
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object/from16 v6, p3

    .line 191
    invoke-direct {v8, v1, v6, v11, v12}, Lmx;->a(Ljava/lang/String;Llc;FF)F

    move-result v0

    .line 193
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    .line 196
    iget-object v2, v9, Llb;->d:Llb$a;

    invoke-direct {v8, v2, v10, v0}, Lmx;->a(Llb$a;Landroid/graphics/Canvas;F)V

    add-int/lit8 v0, v15, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v13

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v2, v7

    mul-float/2addr v2, v13

    sub-float/2addr v2, v0

    const/4 v0, 0x0

    .line 201
    invoke-virtual {v10, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v12

    move/from16 v16, v7

    move v7, v11

    .line 204
    invoke-direct/range {v0 .. v7}, Lmx;->a(Ljava/lang/String;Llb;Landroid/graphics/Matrix;Llc;Landroid/graphics/Canvas;FF)V

    .line 207
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v7, v16, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(Llb;Llc;Landroid/graphics/Canvas;)V
    .locals 7

    .line 236
    invoke-direct {p0, p2}, Lmx;->a(Llc;)Landroid/graphics/Typeface;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v0, p1, Llb;->a:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lmx;->o:Lcom/airbnb/lottie/f;

    invoke-virtual {v1}, Lcom/airbnb/lottie/f;->getTextDelegate()Lcom/airbnb/lottie/r;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {p0}, Lmx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/lottie/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_1
    iget-object v1, p0, Lmx;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 247
    iget-object p2, p0, Lmx;->y:Lkh;

    if-eqz p2, :cond_2

    .line 248
    invoke-virtual {p2}, Lkh;->g()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    .line 250
    :cond_2
    iget p2, p1, Llb;->c:F

    .line 252
    :goto_0
    iget-object v1, p0, Lmx;->j:Landroid/graphics/Paint;

    invoke-static {}, Lpb;->a()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 253
    iget-object v1, p0, Lmx;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lmx;->j:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 254
    iget-object v1, p0, Lmx;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lmx;->j:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 257
    iget v1, p1, Llb;->f:F

    invoke-static {}, Lpb;->a()F

    move-result v2

    mul-float/2addr v1, v2

    .line 260
    iget v2, p1, Llb;->e:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    .line 261
    iget-object v3, p0, Lmx;->x:Lkh;

    if-eqz v3, :cond_3

    .line 262
    invoke-virtual {v3}, Lkh;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1
    add-float/2addr v2, v3

    goto :goto_2

    .line 263
    :cond_3
    iget-object v3, p0, Lmx;->w:Lkh;

    if-eqz v3, :cond_4

    .line 264
    invoke-virtual {v3}, Lkh;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    .line 266
    :cond_4
    :goto_2
    invoke-static {}, Lpb;->a()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr v2, p2

    .line 269
    invoke-direct {p0, v0}, Lmx;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 270
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_5

    .line 273
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    iget-object v5, p0, Lmx;->k:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 277
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 280
    iget-object v6, p1, Llb;->d:Llb$a;

    invoke-direct {p0, v6, p3, v5}, Lmx;->a(Llb$a;Landroid/graphics/Canvas;F)V

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v6, v1

    sub-float/2addr v6, v5

    const/4 v5, 0x0

    .line 285
    invoke-virtual {p3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 288
    invoke-direct {p0, v4, p1, p3, v2}, Lmx;->a(Ljava/lang/String;Llb;Landroid/graphics/Canvas;F)V

    .line 291
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private a(Lld;Landroid/graphics/Matrix;FLlb;Landroid/graphics/Canvas;)V
    .locals 7

    .line 364
    invoke-direct {p0, p1}, Lmx;->a(Lld;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 365
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 366
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp;

    invoke-virtual {v2}, Ljp;->d()Landroid/graphics/Path;

    move-result-object v2

    .line 367
    iget-object v3, p0, Lmx;->h:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 368
    iget-object v3, p0, Lmx;->i:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 369
    iget-object v3, p0, Lmx;->i:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    iget v5, p4, Llb;->g:F

    neg-float v5, v5

    invoke-static {}, Lpb;->a()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 370
    iget-object v3, p0, Lmx;->i:Landroid/graphics/Matrix;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 371
    iget-object v3, p0, Lmx;->i:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 372
    iget-boolean v3, p4, Llb;->k:Z

    if-eqz v3, :cond_0

    .line 373
    iget-object v3, p0, Lmx;->j:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lmx;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 374
    iget-object v3, p0, Lmx;->k:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lmx;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 376
    :cond_0
    iget-object v3, p0, Lmx;->k:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lmx;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 377
    iget-object v3, p0, Lmx;->j:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lmx;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 458
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 459
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    .line 460
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 461
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    .line 462
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 463
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 112
    invoke-super {p0, p1, p2, p3}, Lmq;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 114
    iget-object p2, p0, Lmx;->p:Lcom/airbnb/lottie/d;

    invoke-virtual {p2}, Lcom/airbnb/lottie/d;->d()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lmx;->p:Lcom/airbnb/lottie/d;

    invoke-virtual {p3}, Lcom/airbnb/lottie/d;->d()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

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

    .line 469
    invoke-super {p0, p1, p2}, Lmq;->a(Ljava/lang/Object;Lpe;)V

    .line 470
    sget-object v0, Lcom/airbnb/lottie/k;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 471
    iget-object p1, p0, Lmx;->r:Lkh;

    if-eqz p1, :cond_0

    .line 472
    invoke-virtual {p0, p1}, Lmx;->b(Lkh;)V

    :cond_0
    if-nez p2, :cond_1

    .line 476
    iput-object v1, p0, Lmx;->r:Lkh;

    goto/16 :goto_0

    .line 478
    :cond_1
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Lmx;->r:Lkh;

    .line 479
    iget-object p1, p0, Lmx;->r:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 480
    iget-object p1, p0, Lmx;->r:Lkh;

    invoke-virtual {p0, p1}, Lmx;->a(Lkh;)V

    goto/16 :goto_0

    .line 482
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/k;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_5

    .line 483
    iget-object p1, p0, Lmx;->t:Lkh;

    if-eqz p1, :cond_3

    .line 484
    invoke-virtual {p0, p1}, Lmx;->b(Lkh;)V

    :cond_3
    if-nez p2, :cond_4

    .line 488
    iput-object v1, p0, Lmx;->t:Lkh;

    goto/16 :goto_0

    .line 490
    :cond_4
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Lmx;->t:Lkh;

    .line 491
    iget-object p1, p0, Lmx;->t:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 492
    iget-object p1, p0, Lmx;->t:Lkh;

    invoke-virtual {p0, p1}, Lmx;->a(Lkh;)V

    goto/16 :goto_0

    .line 494
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/k;->s:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    .line 495
    iget-object p1, p0, Lmx;->v:Lkh;

    if-eqz p1, :cond_6

    .line 496
    invoke-virtual {p0, p1}, Lmx;->b(Lkh;)V

    :cond_6
    if-nez p2, :cond_7

    .line 500
    iput-object v1, p0, Lmx;->v:Lkh;

    goto/16 :goto_0

    .line 502
    :cond_7
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Lmx;->v:Lkh;

    .line 503
    iget-object p1, p0, Lmx;->v:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 504
    iget-object p1, p0, Lmx;->v:Lkh;

    invoke-virtual {p0, p1}, Lmx;->a(Lkh;)V

    goto/16 :goto_0

    .line 506
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/k;->t:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    .line 507
    iget-object p1, p0, Lmx;->x:Lkh;

    if-eqz p1, :cond_9

    .line 508
    invoke-virtual {p0, p1}, Lmx;->b(Lkh;)V

    :cond_9
    if-nez p2, :cond_a

    .line 512
    iput-object v1, p0, Lmx;->x:Lkh;

    goto :goto_0

    .line 514
    :cond_a
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Lmx;->x:Lkh;

    .line 515
    iget-object p1, p0, Lmx;->x:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 516
    iget-object p1, p0, Lmx;->x:Lkh;

    invoke-virtual {p0, p1}, Lmx;->a(Lkh;)V

    goto :goto_0

    .line 518
    :cond_b
    sget-object v0, Lcom/airbnb/lottie/k;->F:Ljava/lang/Float;

    if-ne p1, v0, :cond_e

    .line 519
    iget-object p1, p0, Lmx;->y:Lkh;

    if-eqz p1, :cond_c

    .line 520
    invoke-virtual {p0, p1}, Lmx;->b(Lkh;)V

    :cond_c
    if-nez p2, :cond_d

    .line 524
    iput-object v1, p0, Lmx;->y:Lkh;

    goto :goto_0

    .line 526
    :cond_d
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Lmx;->y:Lkh;

    .line 527
    iget-object p1, p0, Lmx;->y:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 528
    iget-object p1, p0, Lmx;->y:Lkh;

    invoke-virtual {p0, p1}, Lmx;->a(Lkh;)V

    goto :goto_0

    .line 530
    :cond_e
    sget-object v0, Lcom/airbnb/lottie/k;->M:Landroid/graphics/Typeface;

    if-ne p1, v0, :cond_11

    .line 531
    iget-object p1, p0, Lmx;->z:Lkh;

    if-eqz p1, :cond_f

    .line 532
    invoke-virtual {p0, p1}, Lmx;->b(Lkh;)V

    :cond_f
    if-nez p2, :cond_10

    .line 536
    iput-object v1, p0, Lmx;->z:Lkh;

    goto :goto_0

    .line 538
    :cond_10
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Lmx;->z:Lkh;

    .line 539
    iget-object p1, p0, Lmx;->z:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 540
    iget-object p1, p0, Lmx;->z:Lkh;

    invoke-virtual {p0, p1}, Lmx;->a(Lkh;)V

    goto :goto_0

    .line 542
    :cond_11
    sget-object v0, Lcom/airbnb/lottie/k;->O:Ljava/lang/CharSequence;

    if-ne p1, v0, :cond_12

    .line 543
    iget-object p1, p0, Lmx;->n:Lkv;

    invoke-virtual {p1, p2}, Lkv;->b(Lpe;)V

    :cond_12
    :goto_0
    return-void
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    iget-object p3, p0, Lmx;->o:Lcom/airbnb/lottie/f;

    invoke-virtual {p3}, Lcom/airbnb/lottie/f;->useTextGlyphs()Z

    move-result p3

    if-nez p3, :cond_0

    .line 121
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 123
    :cond_0
    iget-object p3, p0, Lmx;->n:Lkv;

    invoke-virtual {p3}, Lkv;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Llb;

    .line 124
    iget-object v0, p0, Lmx;->p:Lcom/airbnb/lottie/d;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->k()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p3, Llb;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    if-nez v0, :cond_1

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lmx;->r:Lkh;

    if-eqz v1, :cond_2

    .line 132
    iget-object v2, p0, Lmx;->j:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v1, p0, Lmx;->q:Lkh;

    if-eqz v1, :cond_3

    .line 134
    iget-object v2, p0, Lmx;->j:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v1, p0, Lmx;->j:Landroid/graphics/Paint;

    iget v2, p3, Llb;->h:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    :goto_0
    iget-object v1, p0, Lmx;->t:Lkh;

    if-eqz v1, :cond_4

    .line 140
    iget-object v2, p0, Lmx;->k:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 141
    :cond_4
    iget-object v1, p0, Lmx;->s:Lkh;

    if-eqz v1, :cond_5

    .line 142
    iget-object v2, p0, Lmx;->k:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 144
    :cond_5
    iget-object v1, p0, Lmx;->k:Landroid/graphics/Paint;

    iget v2, p3, Llb;->i:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    :goto_1
    iget-object v1, p0, Lmx;->d:Lkw;

    invoke-virtual {v1}, Lkw;->a()Lkh;

    move-result-object v1

    const/16 v2, 0x64

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lmx;->d:Lkw;

    invoke-virtual {v1}, Lkw;->a()Lkh;

    move-result-object v1

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    mul-int/lit16 v1, v1, 0xff

    .line 147
    div-int/2addr v1, v2

    .line 148
    iget-object v2, p0, Lmx;->j:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    iget-object v2, p0, Lmx;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    iget-object v1, p0, Lmx;->v:Lkh;

    if-eqz v1, :cond_7

    .line 152
    iget-object v2, p0, Lmx;->k:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 153
    :cond_7
    iget-object v1, p0, Lmx;->u:Lkh;

    if-eqz v1, :cond_8

    .line 154
    iget-object v2, p0, Lmx;->k:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 156
    :cond_8
    invoke-static {p2}, Lpb;->a(Landroid/graphics/Matrix;)F

    move-result v1

    .line 157
    iget-object v2, p0, Lmx;->k:Landroid/graphics/Paint;

    iget v3, p3, Llb;->j:F

    invoke-static {}, Lpb;->a()F

    move-result v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    :goto_3
    iget-object v1, p0, Lmx;->o:Lcom/airbnb/lottie/f;

    invoke-virtual {v1}, Lcom/airbnb/lottie/f;->useTextGlyphs()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 161
    invoke-direct {p0, p3, p2, v0, p1}, Lmx;->a(Llb;Landroid/graphics/Matrix;Llc;Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 163
    :cond_9
    invoke-direct {p0, p3, v0, p1}, Lmx;->a(Llb;Llc;Landroid/graphics/Canvas;)V

    .line 166
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
