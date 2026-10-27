.class public abstract Lmq;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Ljq;
.implements Lkh$a;
.implements Llf;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/graphics/Paint;

.field final a:Landroid/graphics/Matrix;

.field final b:Lcom/airbnb/lottie/f;

.field final c:Lmt;

.field final d:Lkw;

.field e:F

.field f:Landroid/graphics/BlurMaskFilter;

.field private final g:Landroid/graphics/Path;

.field private final h:Landroid/graphics/Matrix;

.field private final i:Landroid/graphics/Matrix;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/Paint;

.field private final m:Landroid/graphics/Paint;

.field private final n:Landroid/graphics/Paint;

.field private final o:Landroid/graphics/RectF;

.field private final p:Landroid/graphics/RectF;

.field private final q:Landroid/graphics/RectF;

.field private final r:Landroid/graphics/RectF;

.field private final s:Landroid/graphics/RectF;

.field private final t:Ljava/lang/String;

.field private u:Lko;

.field private v:Lkk;

.field private w:Lmq;

.field private x:Lmq;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmq;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkh<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;Lmt;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmq;->g:Landroid/graphics/Path;

    .line 79
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmq;->h:Landroid/graphics/Matrix;

    .line 80
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmq;->i:Landroid/graphics/Matrix;

    .line 81
    new-instance v0, Ljl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljl;-><init>(I)V

    iput-object v0, p0, Lmq;->j:Landroid/graphics/Paint;

    .line 82
    new-instance v0, Ljl;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Ljl;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lmq;->k:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Ljl;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Ljl;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lmq;->l:Landroid/graphics/Paint;

    .line 84
    new-instance v0, Ljl;

    invoke-direct {v0, v1}, Ljl;-><init>(I)V

    iput-object v0, p0, Lmq;->m:Landroid/graphics/Paint;

    .line 85
    new-instance v0, Ljl;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Ljl;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lmq;->n:Landroid/graphics/Paint;

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmq;->o:Landroid/graphics/RectF;

    .line 87
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmq;->p:Landroid/graphics/RectF;

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmq;->q:Landroid/graphics/RectF;

    .line 89
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmq;->r:Landroid/graphics/RectF;

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmq;->s:Landroid/graphics/RectF;

    .line 92
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmq;->a:Landroid/graphics/Matrix;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmq;->z:Ljava/util/List;

    .line 111
    iput-boolean v1, p0, Lmq;->A:Z

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lmq;->e:F

    .line 120
    iput-object p1, p0, Lmq;->b:Lcom/airbnb/lottie/f;

    .line 121
    iput-object p2, p0, Lmq;->c:Lmt;

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lmt;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#draw"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmq;->t:Ljava/lang/String;

    .line 123
    invoke-virtual {p2}, Lmt;->l()Lmt$b;

    move-result-object p1

    sget-object v0, Lmt$b;->INVERT:Lmt$b;

    if-ne p1, v0, :cond_0

    .line 124
    iget-object p1, p0, Lmq;->m:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lmq;->m:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 129
    :goto_0
    invoke-virtual {p2}, Lmt;->o()Llu;

    move-result-object p1

    invoke-virtual {p1}, Llu;->j()Lkw;

    move-result-object p1

    iput-object p1, p0, Lmq;->d:Lkw;

    .line 130
    iget-object p1, p0, Lmq;->d:Lkw;

    invoke-virtual {p1, p0}, Lkw;->a(Lkh$a;)V

    .line 132
    invoke-virtual {p2}, Lmt;->j()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lmt;->j()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 133
    new-instance p1, Lko;

    invoke-virtual {p2}, Lmt;->j()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lko;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lmq;->u:Lko;

    .line 134
    iget-object p1, p0, Lmq;->u:Lko;

    invoke-virtual {p1}, Lko;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkh;

    .line 137
    invoke-virtual {p2, p0}, Lkh;->a(Lkh$a;)V

    goto :goto_1

    .line 139
    :cond_1
    iget-object p1, p0, Lmq;->u:Lko;

    invoke-virtual {p1}, Lko;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkh;

    .line 140
    invoke-virtual {p0, p2}, Lmq;->a(Lkh;)V

    .line 141
    invoke-virtual {p2, p0}, Lkh;->a(Lkh$a;)V

    goto :goto_2

    .line 144
    :cond_2
    invoke-direct {p0}, Lmq;->g()V

    return-void
.end method

.method static a(Lmr;Lmt;Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/d;)Lmq;
    .locals 2

    .line 56
    sget-object v0, Lmq$1;->a:[I

    invoke-virtual {p1}, Lmt;->k()Lmt$a;

    move-result-object v1

    invoke-virtual {v1}, Lmt$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown layer type "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmt;->k()Lmt$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lox;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 69
    :pswitch_0
    new-instance p0, Lmx;

    invoke-direct {p0, p2, p1}, Lmx;-><init>(Lcom/airbnb/lottie/f;Lmt;)V

    return-object p0

    .line 67
    :pswitch_1
    new-instance p0, Lmu;

    invoke-direct {p0, p2, p1}, Lmu;-><init>(Lcom/airbnb/lottie/f;Lmt;)V

    return-object p0

    .line 65
    :pswitch_2
    new-instance p0, Lms;

    invoke-direct {p0, p2, p1}, Lms;-><init>(Lcom/airbnb/lottie/f;Lmt;)V

    return-object p0

    .line 63
    :pswitch_3
    new-instance p0, Lmw;

    invoke-direct {p0, p2, p1}, Lmw;-><init>(Lcom/airbnb/lottie/f;Lmt;)V

    return-object p0

    .line 60
    :pswitch_4
    new-instance p0, Lmr;

    .line 61
    invoke-virtual {p1}, Lmt;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, p3}, Lmr;-><init>(Lcom/airbnb/lottie/f;Lmt;Ljava/util/List;Lcom/airbnb/lottie/d;)V

    return-object p0

    .line 58
    :pswitch_5
    new-instance p3, Lmv;

    invoke-direct {p3, p2, p1, p0}, Lmv;-><init>(Lcom/airbnb/lottie/f;Lmt;Lmr;)V

    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 9

    const-string v0, "Layer#clearLayer"

    .line 338
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lmq;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget-object v1, p0, Lmq;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget-object v1, p0, Lmq;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget-object v1, p0, Lmq;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v7, v1, v2

    iget-object v8, p0, Lmq;->n:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 341
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 7

    const-string v0, "Layer#saveLayer"

    .line 422
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v2, p0, Lmq;->k:Landroid/graphics/Paint;

    const/16 v3, 0x13

    invoke-static {p1, v1, v2, v3}, Lpb;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 424
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    .line 427
    invoke-direct {p0, p1}, Lmq;->a(Landroid/graphics/Canvas;)V

    .line 429
    :cond_0
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    const/4 v0, 0x0

    .line 430
    :goto_0
    iget-object v1, p0, Lmq;->u:Lko;

    invoke-virtual {v1}, Lko;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 431
    iget-object v1, p0, Lmq;->u:Lko;

    invoke-virtual {v1}, Lko;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme;

    .line 432
    iget-object v2, p0, Lmq;->u:Lko;

    invoke-virtual {v2}, Lko;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkh;

    .line 433
    iget-object v3, p0, Lmq;->u:Lko;

    invoke-virtual {v3}, Lko;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkh;

    .line 434
    sget-object v4, Lmq$1;->b:[I

    invoke-virtual {v1}, Lme;->a()Lme$a;

    move-result-object v5

    invoke-virtual {v5}, Lme$a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-eq v4, v6, :cond_8

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 446
    :cond_1
    invoke-virtual {v1}, Lme;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 447
    invoke-direct {p0, p1, p2, v2, v3}, Lmq;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lkh;Lkh;)V

    goto :goto_1

    .line 449
    :cond_2
    invoke-direct {p0, p1, p2, v2, v3}, Lmq;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lkh;Lkh;)V

    goto :goto_1

    .line 465
    :cond_3
    invoke-virtual {v1}, Lme;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 466
    invoke-direct {p0, p1, p2, v2, v3}, Lmq;->e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lkh;Lkh;)V

    goto :goto_1

    .line 468
    :cond_4
    invoke-direct {p0, p1, p2, v2, v3}, Lmq;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lkh;Lkh;)V

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 454
    iget-object v4, p0, Lmq;->j:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    iget-object v4, p0, Lmq;->j:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 456
    iget-object v4, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v5, p0, Lmq;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 458
    :cond_6
    invoke-virtual {v1}, Lme;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 459
    invoke-direct {p0, p1, p2, v2, v3}, Lmq;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lkh;Lkh;)V

    goto :goto_1

    .line 461
    :cond_7
    invoke-direct {p0, p1, p2, v2}, Lmq;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lkh;)V

    goto :goto_1

    .line 440
    :cond_8
    invoke-direct {p0}, Lmq;->i()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 441
    iget-object v1, p0, Lmq;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 442
    iget-object v1, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v2, p0, Lmq;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    const-string p2, "Layer#restoreLayer"

    .line 473
    invoke-static {p2}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 475
    invoke-static {p2}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lkh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lkh<",
            "Lmk;",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    .line 512
    invoke-virtual {p3}, Lkh;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 513
    iget-object v0, p0, Lmq;->g:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 514
    iget-object p3, p0, Lmq;->g:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 515
    iget-object p2, p0, Lmq;->g:Landroid/graphics/Path;

    iget-object p3, p0, Lmq;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lkh;Lkh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lkh<",
            "Lmk;",
            "Landroid/graphics/Path;",
            ">;",
            "Lkh<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 492
    invoke-virtual {p3}, Lkh;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 493
    iget-object v0, p0, Lmq;->g:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 494
    iget-object p3, p0, Lmq;->g:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 495
    iget-object p2, p0, Lmq;->j:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lkh;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 496
    iget-object p2, p0, Lmq;->g:Landroid/graphics/Path;

    iget-object p3, p0, Lmq;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 10

    .line 345
    iget-object v0, p0, Lmq;->q:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 346
    invoke-virtual {p0}, Lmq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lmq;->u:Lko;

    invoke-virtual {v0}, Lko;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    .line 352
    iget-object v4, p0, Lmq;->u:Lko;

    invoke-virtual {v4}, Lko;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lme;

    .line 353
    iget-object v5, p0, Lmq;->u:Lko;

    invoke-virtual {v5}, Lko;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkh;

    .line 354
    invoke-virtual {v5}, Lkh;->g()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    if-nez v5, :cond_1

    goto :goto_2

    .line 361
    :cond_1
    iget-object v6, p0, Lmq;->g:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 362
    iget-object v5, p0, Lmq;->g:Landroid/graphics/Path;

    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 364
    sget-object v5, Lmq$1;->b:[I

    invoke-virtual {v4}, Lme;->a()Lme$a;

    move-result-object v6

    invoke-virtual {v6}, Lme$a;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    goto :goto_1

    .line 374
    :cond_2
    invoke-virtual {v4}, Lme;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    .line 378
    :cond_3
    :goto_1
    iget-object v4, p0, Lmq;->g:Landroid/graphics/Path;

    iget-object v5, p0, Lmq;->s:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v3, :cond_4

    .line 383
    iget-object v4, p0, Lmq;->q:Landroid/graphics/RectF;

    iget-object v5, p0, Lmq;->s:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_2

    .line 385
    :cond_4
    iget-object v4, p0, Lmq;->q:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lmq;->s:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 386
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lmq;->q:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lmq;->s:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 387
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lmq;->q:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lmq;->s:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 388
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, p0, Lmq;->q:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lmq;->s:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    .line 389
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 385
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    .line 395
    :cond_6
    iget-object p2, p0, Lmq;->q:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 397
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_7
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lkh;Lkh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lkh<",
            "Lmk;",
            "Landroid/graphics/Path;",
            ">;",
            "Lkh<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lmq;->j:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lpb;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 502
    iget-object v0, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lmq;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 503
    invoke-virtual {p3}, Lkh;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 504
    iget-object v0, p0, Lmq;->g:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 505
    iget-object p3, p0, Lmq;->g:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 506
    iget-object p2, p0, Lmq;->j:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lkh;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 507
    iget-object p2, p0, Lmq;->g:Landroid/graphics/Path;

    iget-object p3, p0, Lmq;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 508
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private b(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    .line 402
    invoke-virtual {p0}, Lmq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lmq;->c:Lmt;

    invoke-virtual {v0}, Lmt;->l()Lmt$b;

    move-result-object v0

    sget-object v1, Lmt$b;->INVERT:Lmt$b;

    if-ne v0, v1, :cond_1

    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lmq;->r:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 412
    iget-object v0, p0, Lmq;->w:Lmq;

    iget-object v2, p0, Lmq;->r:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Lmq;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 413
    iget-object p2, p0, Lmq;->r:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 415
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 558
    iget-boolean v0, p0, Lmq;->A:Z

    if-eq p1, v0, :cond_0

    .line 559
    iput-boolean p1, p0, Lmq;->A:Z

    .line 560
    invoke-direct {p0}, Lmq;->h()V

    :cond_0
    return-void
.end method

.method private c(F)V
    .locals 2

    .line 332
    iget-object v0, p0, Lmq;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->getComposition()Lcom/airbnb/lottie/d;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->c()Lcom/airbnb/lottie/n;

    move-result-object v0

    iget-object v1, p0, Lmq;->c:Lmt;

    invoke-virtual {v1}, Lmt;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/lottie/n;->a(Ljava/lang/String;F)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lkh;Lkh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lkh<",
            "Lmk;",
            "Landroid/graphics/Path;",
            ">;",
            "Lkh<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lmq;->l:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lpb;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 521
    iget-object v0, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lmq;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 522
    iget-object v0, p0, Lmq;->l:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lkh;->g()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    const v1, 0x40233333    # 2.55f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 523
    invoke-virtual {p3}, Lkh;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 524
    iget-object p4, p0, Lmq;->g:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 525
    iget-object p3, p0, Lmq;->g:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 526
    iget-object p2, p0, Lmq;->g:Landroid/graphics/Path;

    iget-object p3, p0, Lmq;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 527
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lkh;Lkh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lkh<",
            "Lmk;",
            "Landroid/graphics/Path;",
            ">;",
            "Lkh<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lmq;->k:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lpb;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 533
    invoke-virtual {p3}, Lkh;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 534
    iget-object v0, p0, Lmq;->g:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 535
    iget-object p3, p0, Lmq;->g:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 536
    iget-object p2, p0, Lmq;->j:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lkh;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 537
    iget-object p2, p0, Lmq;->g:Landroid/graphics/Path;

    iget-object p3, p0, Lmq;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 538
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lkh;Lkh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lkh<",
            "Lmk;",
            "Landroid/graphics/Path;",
            ">;",
            "Lkh<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lmq;->k:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lpb;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 544
    iget-object v0, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lmq;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 545
    iget-object v0, p0, Lmq;->l:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lkh;->g()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    const v1, 0x40233333    # 2.55f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 546
    invoke-virtual {p3}, Lkh;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 547
    iget-object p4, p0, Lmq;->g:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 548
    iget-object p3, p0, Lmq;->g:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 549
    iget-object p2, p0, Lmq;->g:Landroid/graphics/Path;

    iget-object p3, p0, Lmq;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 550
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 182
    iget-object v0, p0, Lmq;->c:Lmt;

    invoke-virtual {v0}, Lmt;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Lkk;

    iget-object v2, p0, Lmq;->c:Lmt;

    invoke-virtual {v2}, Lmt;->d()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lkk;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lmq;->v:Lkk;

    .line 184
    iget-object v0, p0, Lmq;->v:Lkk;

    invoke-virtual {v0}, Lkk;->a()V

    .line 185
    iget-object v0, p0, Lmq;->v:Lkk;

    new-instance v2, L-$$Lambda$mq$kgNhiHuEEMhYugFieuL-HHZSPco;

    invoke-direct {v2, p0}, L-$$Lambda$mq$kgNhiHuEEMhYugFieuL-HHZSPco;-><init>(Lmq;)V

    invoke-virtual {v0, v2}, Lkk;->a(Lkh$a;)V

    .line 186
    iget-object v0, p0, Lmq;->v:Lkk;

    invoke-virtual {v0}, Lkk;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lmq;->b(Z)V

    .line 187
    iget-object v0, p0, Lmq;->v:Lkk;

    invoke-virtual {p0, v0}, Lmq;->a(Lkh;)V

    goto :goto_1

    .line 189
    :cond_1
    invoke-direct {p0, v1}, Lmq;->b(Z)V

    :goto_1
    return-void
.end method

.method private h()V
    .locals 1

    .line 194
    iget-object v0, p0, Lmq;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    return-void
.end method

.method private i()Z
    .locals 4

    .line 479
    iget-object v0, p0, Lmq;->u:Lko;

    invoke-virtual {v0}, Lko;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 482
    :goto_0
    iget-object v2, p0, Lmq;->u:Lko;

    invoke-virtual {v2}, Lko;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 483
    iget-object v2, p0, Lmq;->u:Lko;

    invoke-virtual {v2}, Lko;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme;

    invoke-virtual {v2}, Lme;->a()Lme$a;

    move-result-object v2

    sget-object v3, Lme$a;->MASK_MODE_NONE:Lme$a;

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private j()V
    .locals 2

    .line 584
    iget-object v0, p0, Lmq;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lmq;->x:Lmq;

    if-nez v0, :cond_1

    .line 588
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmq;->y:Ljava/util/List;

    return-void

    .line 592
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmq;->y:Ljava/util/List;

    .line 593
    iget-object v0, p0, Lmq;->x:Lmq;

    :goto_0
    if-eqz v0, :cond_2

    .line 595
    iget-object v1, p0, Lmq;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    iget-object v0, v0, Lmq;->x:Lmq;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic k()V
    .locals 2

    .line 185
    iget-object v0, p0, Lmq;->v:Lkk;

    invoke-virtual {v0}, Lkk;->i()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lmq;->b(Z)V

    return-void
.end method

.method public static synthetic lambda$kgNhiHuEEMhYugFieuL-HHZSPco(Lmq;)V
    .locals 0

    invoke-direct {p0}, Lmq;->k()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 602
    iget-object v0, p0, Lmq;->c:Lmt;

    invoke-virtual {v0}, Lmt;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(F)V
    .locals 3

    .line 566
    iget-object v0, p0, Lmq;->d:Lkw;

    invoke-virtual {v0, p1}, Lkw;->a(F)V

    .line 567
    iget-object v0, p0, Lmq;->u:Lko;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 568
    :goto_0
    iget-object v2, p0, Lmq;->u:Lko;

    invoke-virtual {v2}, Lko;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 569
    iget-object v2, p0, Lmq;->u:Lko;

    invoke-virtual {v2}, Lko;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkh;

    invoke-virtual {v2, p1}, Lkh;->a(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_0
    iget-object v0, p0, Lmq;->v:Lkk;

    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {v0, p1}, Lkk;->a(F)V

    .line 575
    :cond_1
    iget-object v0, p0, Lmq;->w:Lmq;

    if-eqz v0, :cond_2

    .line 576
    invoke-virtual {v0, p1}, Lmq;->a(F)V

    .line 578
    :cond_2
    :goto_1
    iget-object v0, p0, Lmq;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 579
    iget-object v0, p0, Lmq;->z:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkh;

    invoke-virtual {v0, p1}, Lkh;->a(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    .line 231
    iget-object v0, p0, Lmq;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 232
    iget-boolean v0, p0, Lmq;->A:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmq;->c:Lmt;

    invoke-virtual {v0}, Lmt;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 236
    :cond_0
    invoke-direct {p0}, Lmq;->j()V

    const-string v0, "Layer#parentMatrix"

    .line 237
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lmq;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 239
    iget-object v1, p0, Lmq;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 240
    iget-object v1, p0, Lmq;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 241
    iget-object v2, p0, Lmq;->h:Landroid/graphics/Matrix;

    iget-object v3, p0, Lmq;->y:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmq;

    iget-object v3, v3, Lmq;->d:Lkw;

    invoke-virtual {v3}, Lkw;->d()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    .line 244
    iget-object v0, p0, Lmq;->d:Lkw;

    invoke-virtual {v0}, Lkw;->a()Lkh;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x64

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmq;->d:Lkw;

    invoke-virtual {v0}, Lkw;->a()Lkh;

    move-result-object v0

    invoke-virtual {v0}, Lkh;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    int-to-float v0, v0

    mul-float/2addr p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    mul-float/2addr p3, v1

    float-to-int p3, p3

    .line 247
    invoke-virtual {p0}, Lmq;->c()Z

    move-result v0

    const-string v1, "Layer#drawLayer"

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lmq;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 248
    iget-object p2, p0, Lmq;->h:Landroid/graphics/Matrix;

    iget-object v0, p0, Lmq;->d:Lkw;

    invoke-virtual {v0}, Lkw;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 249
    invoke-static {v1}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 250
    iget-object p2, p0, Lmq;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lmq;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 251
    invoke-static {v1}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    .line 252
    iget-object p1, p0, Lmq;->t:Ljava/lang/String;

    invoke-static {p1}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lmq;->c(F)V

    return-void

    :cond_3
    const-string v0, "Layer#computeBounds"

    .line 256
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v3, p0, Lmq;->h:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lmq;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 259
    iget-object v2, p0, Lmq;->o:Landroid/graphics/RectF;

    invoke-direct {p0, v2, p2}, Lmq;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 261
    iget-object v2, p0, Lmq;->h:Landroid/graphics/Matrix;

    iget-object v3, p0, Lmq;->d:Lkw;

    invoke-virtual {v3}, Lkw;->d()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 262
    iget-object v2, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v3, p0, Lmq;->h:Landroid/graphics/Matrix;

    invoke-direct {p0, v2, v3}, Lmq;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 267
    iget-object v2, p0, Lmq;->p:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 269
    iget-object v2, p0, Lmq;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 270
    iget-object v2, p0, Lmq;->i:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_4

    .line 271
    iget-object v2, p0, Lmq;->i:Landroid/graphics/Matrix;

    invoke-virtual {v2, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 272
    iget-object v2, p0, Lmq;->i:Landroid/graphics/Matrix;

    iget-object v3, p0, Lmq;->p:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 274
    :cond_4
    iget-object v2, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v3, p0, Lmq;->p:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 275
    iget-object v2, p0, Lmq;->o:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 278
    :cond_5
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    .line 283
    iget-object v0, p0, Lmq;->o:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    iget-object v0, p0, Lmq;->o:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    const-string v0, "Layer#saveLayer"

    .line 284
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lmq;->j:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 286
    iget-object v2, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v3, p0, Lmq;->j:Landroid/graphics/Paint;

    invoke-static {p1, v2, v3}, Lpb;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 287
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    .line 290
    invoke-direct {p0, p1}, Lmq;->a(Landroid/graphics/Canvas;)V

    .line 291
    invoke-static {v1}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lmq;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v2, p3}, Lmq;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 293
    invoke-static {v1}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    .line 295
    invoke-virtual {p0}, Lmq;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 296
    iget-object v1, p0, Lmq;->h:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lmq;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 299
    :cond_6
    invoke-virtual {p0}, Lmq;->c()Z

    move-result v1

    const-string v2, "Layer#restoreLayer"

    if-eqz v1, :cond_7

    const-string v1, "Layer#drawMatte"

    .line 300
    invoke-static {v1}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 301
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 302
    iget-object v3, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object v4, p0, Lmq;->m:Landroid/graphics/Paint;

    const/16 v5, 0x13

    invoke-static {p1, v3, v4, v5}, Lpb;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 303
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    .line 304
    invoke-direct {p0, p1}, Lmq;->a(Landroid/graphics/Canvas;)V

    .line 306
    iget-object v0, p0, Lmq;->w:Lmq;

    invoke-virtual {v0, p1, p2, p3}, Lmq;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 307
    invoke-static {v2}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 309
    invoke-static {v2}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    .line 310
    invoke-static {v1}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    .line 313
    :cond_7
    invoke-static {v2}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 315
    invoke-static {v2}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    .line 318
    :cond_8
    iget-boolean p2, p0, Lmq;->B:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lmq;->C:Landroid/graphics/Paint;

    if-eqz p2, :cond_9

    .line 319
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 320
    iget-object p2, p0, Lmq;->C:Landroid/graphics/Paint;

    const p3, -0x3d7fd

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object p2, p0, Lmq;->C:Landroid/graphics/Paint;

    const/high16 p3, 0x40800000    # 4.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 322
    iget-object p2, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object p3, p0, Lmq;->C:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 323
    iget-object p2, p0, Lmq;->C:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    iget-object p2, p0, Lmq;->C:Landroid/graphics/Paint;

    const p3, 0x50ebebeb

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    iget-object p2, p0, Lmq;->o:Landroid/graphics/RectF;

    iget-object p3, p0, Lmq;->C:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 328
    :cond_9
    iget-object p1, p0, Lmq;->t:Ljava/lang/String;

    invoke-static {p1}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lmq;->c(F)V

    return-void

    .line 233
    :cond_a
    :goto_2
    iget-object p1, p0, Lmq;->t:Ljava/lang/String;

    invoke-static {p1}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 212
    iget-object p1, p0, Lmq;->o:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 213
    invoke-direct {p0}, Lmq;->j()V

    .line 214
    iget-object p1, p0, Lmq;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    .line 217
    iget-object p1, p0, Lmq;->y:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 219
    iget-object p2, p0, Lmq;->a:Landroid/graphics/Matrix;

    iget-object p3, p0, Lmq;->y:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmq;

    iget-object p3, p3, Lmq;->d:Lkw;

    invoke-virtual {p3}, Lkw;->d()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lmq;->x:Lmq;

    if-eqz p1, :cond_1

    .line 222
    iget-object p2, p0, Lmq;->a:Landroid/graphics/Matrix;

    iget-object p1, p1, Lmq;->d:Lkw;

    invoke-virtual {p1}, Lkw;->d()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 226
    :cond_1
    iget-object p1, p0, Lmq;->a:Landroid/graphics/Matrix;

    iget-object p2, p0, Lmq;->d:Lkw;

    invoke-virtual {p2}, Lkw;->d()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public a(Ljava/lang/Object;Lpe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lpe<",
            "TT;>;)V"
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lmq;->d:Lkw;

    invoke-virtual {v0, p1, p2}, Lkw;->a(Ljava/lang/Object;Lpe;)Z

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljo;",
            ">;",
            "Ljava/util/List<",
            "Ljo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Lkh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkh<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lmq;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lle;ILjava/util/List;Lle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lle;",
            "I",
            "Ljava/util/List<",
            "Lle;",
            ">;",
            "Lle;",
            ")V"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lmq;->w:Lmq;

    if-eqz v0, :cond_1

    .line 633
    invoke-virtual {v0}, Lmq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lle;->a(Ljava/lang/String;)Lle;

    move-result-object v0

    .line 634
    iget-object v1, p0, Lmq;->w:Lmq;

    invoke-virtual {v1}, Lmq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lle;->c(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lmq;->w:Lmq;

    invoke-virtual {v0, v1}, Lle;->a(Llf;)Lle;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_0
    invoke-virtual {p0}, Lmq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lle;->d(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 639
    iget-object v1, p0, Lmq;->w:Lmq;

    invoke-virtual {v1}, Lmq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lle;->b(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, p2

    .line 640
    iget-object v2, p0, Lmq;->w:Lmq;

    invoke-virtual {v2, p1, v1, p3, v0}, Lmq;->b(Lle;ILjava/util/List;Lle;)V

    .line 644
    :cond_1
    invoke-virtual {p0}, Lmq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lle;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 648
    :cond_2
    invoke-virtual {p0}, Lmq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 649
    invoke-virtual {p0}, Lmq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lle;->a(Ljava/lang/String;)Lle;

    move-result-object p4

    .line 651
    invoke-virtual {p0}, Lmq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lle;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 652
    invoke-virtual {p4, p0}, Lle;->a(Llf;)Lle;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_3
    invoke-virtual {p0}, Lmq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lle;->d(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 657
    invoke-virtual {p0}, Lmq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lle;->b(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    .line 658
    invoke-virtual {p0, p1, p2, p3, p4}, Lmq;->b(Lle;ILjava/util/List;Lle;)V

    :cond_4
    return-void
.end method

.method a(Lmq;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lmq;->w:Lmq;

    return-void
.end method

.method a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lmq;->C:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljl;

    invoke-direct {v0}, Ljl;-><init>()V

    iput-object v0, p0, Lmq;->C:Landroid/graphics/Paint;

    .line 157
    :cond_0
    iput-boolean p1, p0, Lmq;->B:Z

    return-void
.end method

.method public b(F)Landroid/graphics/BlurMaskFilter;
    .locals 3

    .line 611
    iget v0, p0, Lmq;->e:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 612
    iget-object p1, p0, Lmq;->f:Landroid/graphics/BlurMaskFilter;

    return-object p1

    .line 614
    :cond_0
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lmq;->f:Landroid/graphics/BlurMaskFilter;

    .line 615
    iput p1, p0, Lmq;->e:F

    .line 616
    iget-object p1, p0, Lmq;->f:Landroid/graphics/BlurMaskFilter;

    return-object p1
.end method

.method b()Lmt;
    .locals 1

    .line 166
    iget-object v0, p0, Lmq;->c:Lmt;

    return-object v0
.end method

.method abstract b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public b(Lkh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkh<",
            "**>;)V"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lmq;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lle;ILjava/util/List;Lle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lle;",
            "I",
            "Ljava/util/List<",
            "Lle;",
            ">;",
            "Lle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method b(Lmq;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lmq;->x:Lmq;

    return-void
.end method

.method c()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lmq;->w:Lmq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method d()Z
    .locals 1

    .line 554
    iget-object v0, p0, Lmq;->u:Lko;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lko;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Llx;
    .locals 1

    .line 607
    iget-object v0, p0, Lmq;->c:Lmt;

    invoke-virtual {v0}, Lmt;->w()Llx;

    move-result-object v0

    return-object v0
.end method

.method public f()Lnp;
    .locals 1

    .line 621
    iget-object v0, p0, Lmq;->c:Lmt;

    invoke-virtual {v0}, Lmt;->x()Lnp;

    move-result-object v0

    return-object v0
.end method

.method public onValueChanged()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lmq;->h()V

    return-void
.end method
