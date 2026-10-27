.class public Lcq;
.super Lco;
.source "KeyCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcq$a;
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Lco;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcq;->g:Ljava/lang/String;

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lcq;->h:I

    const/4 v1, -0x1

    .line 59
    iput v1, p0, Lcq;->i:I

    .line 60
    iput-object v0, p0, Lcq;->j:Ljava/lang/String;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 61
    iput v0, p0, Lcq;->k:F

    const/4 v2, 0x0

    .line 62
    iput v2, p0, Lcq;->l:F

    .line 63
    iput v2, p0, Lcq;->m:F

    .line 64
    iput v0, p0, Lcq;->n:F

    .line 65
    iput v1, p0, Lcq;->o:I

    .line 66
    iput v0, p0, Lcq;->p:F

    .line 67
    iput v0, p0, Lcq;->q:F

    .line 68
    iput v0, p0, Lcq;->r:F

    .line 69
    iput v0, p0, Lcq;->s:F

    .line 70
    iput v0, p0, Lcq;->t:F

    .line 71
    iput v0, p0, Lcq;->u:F

    .line 72
    iput v0, p0, Lcq;->v:F

    .line 73
    iput v0, p0, Lcq;->w:F

    .line 74
    iput v0, p0, Lcq;->x:F

    .line 75
    iput v0, p0, Lcq;->y:F

    .line 76
    iput v0, p0, Lcq;->z:F

    const/4 v0, 0x4

    .line 80
    iput v0, p0, Lcq;->e:I

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcq;->f:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->k:F

    return p1
.end method

.method static synthetic a(Lcq;)I
    .locals 0

    .line 42
    iget p0, p0, Lcq;->h:I

    return p0
.end method

.method static synthetic a(Lcq;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcq;->h:I

    return p1
.end method

.method static synthetic a(Lcq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcq;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->l:F

    return p1
.end method

.method static synthetic b(Lcq;)I
    .locals 0

    .line 42
    iget p0, p0, Lcq;->i:I

    return p0
.end method

.method static synthetic b(Lcq;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcq;->i:I

    return p1
.end method

.method static synthetic b(Lcq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcq;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->k:F

    return p0
.end method

.method static synthetic c(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->p:F

    return p1
.end method

.method static synthetic c(Lcq;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcq;->o:I

    return p1
.end method

.method static synthetic d(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->l:F

    return p0
.end method

.method static synthetic d(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->q:F

    return p1
.end method

.method static synthetic e(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->r:F

    return p1
.end method

.method static synthetic e(Lcq;)I
    .locals 0

    .line 42
    iget p0, p0, Lcq;->o:I

    return p0
.end method

.method static synthetic f(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->p:F

    return p0
.end method

.method static synthetic f(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->t:F

    return p1
.end method

.method static synthetic g(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->q:F

    return p0
.end method

.method static synthetic g(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->u:F

    return p1
.end method

.method static synthetic h(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->r:F

    return p0
.end method

.method static synthetic h(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->s:F

    return p1
.end method

.method static synthetic i(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->t:F

    return p0
.end method

.method static synthetic i(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->v:F

    return p1
.end method

.method static synthetic j(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->u:F

    return p0
.end method

.method static synthetic j(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->w:F

    return p1
.end method

.method static synthetic k(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->s:F

    return p0
.end method

.method static synthetic k(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->x:F

    return p1
.end method

.method static synthetic l(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->v:F

    return p0
.end method

.method static synthetic l(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->y:F

    return p1
.end method

.method static synthetic m(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->w:F

    return p0
.end method

.method static synthetic m(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->z:F

    return p1
.end method

.method static synthetic n(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->x:F

    return p0
.end method

.method static synthetic n(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->n:F

    return p1
.end method

.method static synthetic o(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->y:F

    return p0
.end method

.method static synthetic o(Lcq;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcq;->m:F

    return p1
.end method

.method static synthetic p(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->z:F

    return p0
.end method

.method static synthetic q(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->n:F

    return p0
.end method

.method static synthetic r(Lcq;)F
    .locals 0

    .line 42
    iget p0, p0, Lcq;->m:F

    return p0
.end method


# virtual methods
.method public a()Lco;
    .locals 1

    .line 498
    new-instance v0, Lcq;

    invoke-direct {v0}, Lcq;-><init>()V

    invoke-virtual {v0, p0}, Lcq;->a(Lco;)Lco;

    move-result-object v0

    return-object v0
.end method

.method public a(Lco;)Lco;
    .locals 1

    .line 472
    invoke-super {p0, p1}, Lco;->a(Lco;)Lco;

    .line 473
    check-cast p1, Lcq;

    .line 474
    iget-object v0, p1, Lcq;->g:Ljava/lang/String;

    iput-object v0, p0, Lcq;->g:Ljava/lang/String;

    .line 475
    iget v0, p1, Lcq;->h:I

    iput v0, p0, Lcq;->h:I

    .line 476
    iget v0, p1, Lcq;->i:I

    iput v0, p0, Lcq;->i:I

    .line 477
    iget-object v0, p1, Lcq;->j:Ljava/lang/String;

    iput-object v0, p0, Lcq;->j:Ljava/lang/String;

    .line 478
    iget v0, p1, Lcq;->k:F

    iput v0, p0, Lcq;->k:F

    .line 479
    iget v0, p1, Lcq;->l:F

    iput v0, p0, Lcq;->l:F

    .line 480
    iget v0, p1, Lcq;->m:F

    iput v0, p0, Lcq;->m:F

    .line 481
    iget v0, p1, Lcq;->n:F

    iput v0, p0, Lcq;->n:F

    .line 482
    iget v0, p1, Lcq;->o:I

    iput v0, p0, Lcq;->o:I

    .line 483
    iget v0, p1, Lcq;->p:F

    iput v0, p0, Lcq;->p:F

    .line 484
    iget v0, p1, Lcq;->q:F

    iput v0, p0, Lcq;->q:F

    .line 485
    iget v0, p1, Lcq;->r:F

    iput v0, p0, Lcq;->r:F

    .line 486
    iget v0, p1, Lcq;->s:F

    iput v0, p0, Lcq;->s:F

    .line 487
    iget v0, p1, Lcq;->t:F

    iput v0, p0, Lcq;->t:F

    .line 488
    iget v0, p1, Lcq;->u:F

    iput v0, p0, Lcq;->u:F

    .line 489
    iget v0, p1, Lcq;->v:F

    iput v0, p0, Lcq;->v:F

    .line 490
    iget v0, p1, Lcq;->w:F

    iput v0, p0, Lcq;->w:F

    .line 491
    iget v0, p1, Lcq;->x:F

    iput v0, p0, Lcq;->x:F

    .line 492
    iget v0, p1, Lcq;->y:F

    iput v0, p0, Lcq;->y:F

    .line 493
    iget p1, p1, Lcq;->z:F

    iput p1, p0, Lcq;->z:F

    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 85
    sget-object v0, Landroidx/constraintlayout/widget/h$b;->KeyCycle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 86
    invoke-static {p0, p1}, Lcq$a;->a(Lcq;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lci;",
            ">;)V"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "KeyCycle"

    invoke-static {v2, v0, v1}, Lcl;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 204
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lau;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    .line 208
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "wavePhase"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "waveOffset"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "alpha"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "transitionPathRotate"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x5

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "elevation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_5
    const-string v5, "rotation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v1

    goto :goto_1

    :sswitch_6
    const-string v5, "scaleY"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_7
    const-string v5, "scaleX"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_8
    const-string v5, "progress"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0xd

    goto :goto_1

    :sswitch_9
    const-string v5, "translationZ"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0xa

    goto :goto_1

    :sswitch_a
    const-string v5, "translationY"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0x9

    goto :goto_1

    :sswitch_b
    const-string v5, "translationX"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0x8

    goto :goto_1

    :sswitch_c
    const-string v5, "rotationY"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_d
    const-string v5, "rotationX"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x3

    :cond_2
    :goto_1
    packed-switch v4, :pswitch_data_0

    const-string v3, "CUSTOM"

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  UNKNOWN  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WARNING KeyCycle"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 249
    :pswitch_0
    iget v2, p0, Lcq;->b:I

    iget v4, p0, Lcq;->n:F

    invoke-virtual {v3, v2, v4}, Lau;->a(IF)V

    goto/16 :goto_0

    .line 246
    :pswitch_1
    iget v2, p0, Lcq;->b:I

    iget v4, p0, Lcq;->m:F

    invoke-virtual {v3, v2, v4}, Lau;->a(IF)V

    goto/16 :goto_0

    .line 243
    :pswitch_2
    iget v2, p0, Lcq;->b:I

    iget v4, p0, Lcq;->l:F

    invoke-virtual {v3, v2, v4}, Lau;->a(IF)V

    goto/16 :goto_0

    .line 240
    :pswitch_3
    iget v2, p0, Lcq;->b:I

    iget v4, p0, Lcq;->z:F

    invoke-virtual {v3, v2, v4}, Lau;->a(IF)V

    goto/16 :goto_0

    .line 237
    :pswitch_4
    iget v2, p0, Lcq;->b:I

    iget v4, p0, Lcq;->y:F

    invoke-virtual {v3, v2, v4}, Lau;->a(IF)V

    goto/16 :goto_0

    .line 234
    :pswitch_5
    iget v2, p0, Lcq;->b:I

    iget v4, p0, Lcq;->x:F

    invoke-virtual {v3, v2, v4}, Lau;->a(IF)V

    goto/16 :goto_0

    .line 231
    :pswitch_6
    iget v2, p0, Lcq;->b:I

    iget v4, p0, Lcq;->w:F

    invoke-virtual {v3, v2, v4}, Lau;->a(IF)V

    goto/16 :goto_0

    .line 228
    :pswitch_7
    iget v2, p0, Lcq;->b:I

    iget v4, p0, Lcq;->v:F

    invoke-virtual {v3, v2, v4}, Lau;->a(IF)V

    goto/16 :goto_0

    .line 225
    :pswitch_8
    iget v2, p0, Lcq;->b:I

    iget v4, p0, Lcq;->s:F

    invoke-virtual {v3, v2, v4}, Lau;->a(IF)V

    goto/16 :goto_0

    .line 222
    :pswitch_9
    iget v2, p0, Lcq;->b:I

    iget v4, p0, Lcq;->u:F

    invoke-virtual {v3, v2, v4}, Lau;->a(IF)V

    goto/16 :goto_0

    .line 219
    :pswitch_a
    iget v2, p0, Lcq;->b:I

    iget v4, p0, Lcq;->t:F

    invoke-virtual {v3, v2, v4}, Lau;->a(IF)V

    goto/16 :goto_0

    .line 216
    :pswitch_b
    iget v2, p0, Lcq;->b:I

    iget v4, p0, Lcq;->r:F

    invoke-virtual {v3, v2, v4}, Lau;->a(IF)V

    goto/16 :goto_0

    .line 213
    :pswitch_c
    iget v2, p0, Lcq;->b:I

    iget v4, p0, Lcq;->q:F

    invoke-virtual {v3, v2, v4}, Lau;->a(IF)V

    goto/16 :goto_0

    .line 210
    :pswitch_d
    iget v2, p0, Lcq;->b:I

    iget v4, p0, Lcq;->p:F

    invoke-virtual {v3, v2, v4}, Lau;->a(IF)V

    goto/16 :goto_0

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x266f082 -> :sswitch_5
        -0x42d1a3 -> :sswitch_4
        0x2382115 -> :sswitch_3
        0x589b15e -> :sswitch_2
        0x94e04ec -> :sswitch_1
        0x5b327a02 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    iget v0, p0, Lcq;->p:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alpha"

    .line 92
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    iget v0, p0, Lcq;->q:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "elevation"

    .line 95
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    iget v0, p0, Lcq;->r:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "rotation"

    .line 98
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    iget v0, p0, Lcq;->t:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rotationX"

    .line 101
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_3
    iget v0, p0, Lcq;->u:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "rotationY"

    .line 104
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_4
    iget v0, p0, Lcq;->v:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "scaleX"

    .line 107
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_5
    iget v0, p0, Lcq;->w:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "scaleY"

    .line 110
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_6
    iget v0, p0, Lcq;->s:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "transitionPathRotate"

    .line 113
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_7
    iget v0, p0, Lcq;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "translationX"

    .line 116
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_8
    iget v0, p0, Lcq;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "translationY"

    .line 119
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_9
    iget v0, p0, Lcq;->z:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "translationZ"

    .line 122
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_a
    iget-object v0, p0, Lcq;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 125
    iget-object v0, p0, Lcq;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    return-void
.end method

.method public b(Ljava/lang/String;)F
    .locals 2

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "wavePhase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "waveOffset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_9
    const-string v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_a
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_b
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_c
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_d
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "CUSTOM"

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  UNKNOWN  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WARNING! KeyCycle"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 191
    :pswitch_0
    iget p1, p0, Lcq;->n:F

    return p1

    .line 189
    :pswitch_1
    iget p1, p0, Lcq;->m:F

    return p1

    .line 187
    :pswitch_2
    iget p1, p0, Lcq;->l:F

    return p1

    .line 185
    :pswitch_3
    iget p1, p0, Lcq;->z:F

    return p1

    .line 183
    :pswitch_4
    iget p1, p0, Lcq;->y:F

    return p1

    .line 181
    :pswitch_5
    iget p1, p0, Lcq;->x:F

    return p1

    .line 179
    :pswitch_6
    iget p1, p0, Lcq;->w:F

    return p1

    .line 177
    :pswitch_7
    iget p1, p0, Lcq;->v:F

    return p1

    .line 175
    :pswitch_8
    iget p1, p0, Lcq;->s:F

    return p1

    .line 173
    :pswitch_9
    iget p1, p0, Lcq;->u:F

    return p1

    .line 171
    :pswitch_a
    iget p1, p0, Lcq;->t:F

    return p1

    .line 169
    :pswitch_b
    iget p1, p0, Lcq;->r:F

    return p1

    .line 167
    :pswitch_c
    iget p1, p0, Lcq;->q:F

    return p1

    .line 165
    :pswitch_d
    iget p1, p0, Lcq;->p:F

    return p1

    :cond_1
    :goto_2
    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x266f082 -> :sswitch_5
        -0x42d1a3 -> :sswitch_4
        0x2382115 -> :sswitch_3
        0x589b15e -> :sswitch_2
        0x94e04ec -> :sswitch_1
        0x5b327a02 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/util/HashMap;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lch;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 132
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "CUSTOM"

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x7

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 135
    iget-object v5, v0, Lcq;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroidx/constraintlayout/widget/a;

    if-eqz v14, :cond_0

    .line 136
    invoke-virtual {v14}, Landroidx/constraintlayout/widget/a;->b()Landroidx/constraintlayout/widget/a$a;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/widget/a$a;->FLOAT_TYPE:Landroidx/constraintlayout/widget/a$a;

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lch;

    if-nez v5, :cond_2

    goto :goto_0

    .line 145
    :cond_2
    iget v6, v0, Lcq;->b:I

    iget v7, v0, Lcq;->i:I

    iget-object v8, v0, Lcq;->j:Ljava/lang/String;

    iget v9, v0, Lcq;->o:I

    iget v10, v0, Lcq;->k:F

    iget v11, v0, Lcq;->l:F

    iget v12, v0, Lcq;->m:F

    invoke-virtual {v14}, Landroidx/constraintlayout/widget/a;->e()F

    move-result v13

    invoke-virtual/range {v5 .. v14}, Lch;->a(IILjava/lang/String;IFFFFLjava/lang/Object;)V

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {v0, v3}, Lcq;->b(Ljava/lang/String;)F

    move-result v23

    .line 149
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lch;

    if-nez v15, :cond_5

    goto :goto_0

    .line 158
    :cond_5
    iget v3, v0, Lcq;->b:I

    iget v4, v0, Lcq;->i:I

    iget-object v5, v0, Lcq;->j:Ljava/lang/String;

    iget v6, v0, Lcq;->o:I

    iget v7, v0, Lcq;->k:F

    iget v8, v0, Lcq;->l:F

    iget v9, v0, Lcq;->m:F

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    invoke-virtual/range {v15 .. v23}, Lch;->a(IILjava/lang/String;IFFFF)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcq;->a()Lco;

    move-result-object v0

    return-object v0
.end method
