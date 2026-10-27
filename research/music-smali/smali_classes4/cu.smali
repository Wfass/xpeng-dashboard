.class public Lcu;
.super Lco;
.source "KeyTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcu$a;
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:I

.field private v:Ljava/lang/String;

.field private w:F

.field private x:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lco;-><init>()V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcu;->h:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 58
    iput v0, p0, Lcu;->i:F

    .line 59
    iput v0, p0, Lcu;->j:F

    .line 60
    iput v0, p0, Lcu;->k:F

    .line 61
    iput v0, p0, Lcu;->l:F

    .line 62
    iput v0, p0, Lcu;->m:F

    .line 63
    iput v0, p0, Lcu;->n:F

    .line 64
    iput v0, p0, Lcu;->o:F

    .line 65
    iput v0, p0, Lcu;->p:F

    .line 66
    iput v0, p0, Lcu;->q:F

    .line 67
    iput v0, p0, Lcu;->r:F

    .line 68
    iput v0, p0, Lcu;->s:F

    .line 69
    iput v0, p0, Lcu;->t:F

    const/4 v1, 0x0

    .line 70
    iput v1, p0, Lcu;->u:I

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcu;->v:Ljava/lang/String;

    .line 72
    iput v0, p0, Lcu;->w:F

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcu;->x:F

    const/4 v0, 0x3

    .line 77
    iput v0, p0, Lcu;->e:I

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcu;->f:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcu;)F
    .locals 0

    .line 42
    iget p0, p0, Lcu;->i:F

    return p0
.end method

.method static synthetic a(Lcu;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcu;->i:F

    return p1
.end method

.method static synthetic a(Lcu;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcu;->h:I

    return p1
.end method

.method static synthetic a(Lcu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcu;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcu;)F
    .locals 0

    .line 42
    iget p0, p0, Lcu;->j:F

    return p0
.end method

.method static synthetic b(Lcu;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcu;->j:F

    return p1
.end method

.method static synthetic b(Lcu;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcu;->u:I

    return p1
.end method

.method static synthetic b(Lcu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcu;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcu;)F
    .locals 0

    .line 42
    iget p0, p0, Lcu;->k:F

    return p0
.end method

.method static synthetic c(Lcu;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcu;->k:F

    return p1
.end method

.method static synthetic d(Lcu;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcu;->w:F

    return p1
.end method

.method static synthetic d(Lcu;)I
    .locals 0

    .line 42
    iget p0, p0, Lcu;->h:I

    return p0
.end method

.method static synthetic e(Lcu;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcu;->x:F

    return p1
.end method

.method static synthetic e(Lcu;)I
    .locals 0

    .line 42
    iget p0, p0, Lcu;->u:I

    return p0
.end method

.method static synthetic f(Lcu;)F
    .locals 0

    .line 42
    iget p0, p0, Lcu;->w:F

    return p0
.end method

.method static synthetic f(Lcu;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcu;->o:F

    return p1
.end method

.method static synthetic g(Lcu;)F
    .locals 0

    .line 42
    iget p0, p0, Lcu;->x:F

    return p0
.end method

.method static synthetic g(Lcu;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcu;->l:F

    return p1
.end method

.method static synthetic h(Lcu;)F
    .locals 0

    .line 42
    iget p0, p0, Lcu;->o:F

    return p0
.end method

.method static synthetic h(Lcu;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcu;->m:F

    return p1
.end method

.method static synthetic i(Lcu;)F
    .locals 0

    .line 42
    iget p0, p0, Lcu;->l:F

    return p0
.end method

.method static synthetic i(Lcu;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcu;->p:F

    return p1
.end method

.method static synthetic j(Lcu;)F
    .locals 0

    .line 42
    iget p0, p0, Lcu;->m:F

    return p0
.end method

.method static synthetic j(Lcu;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcu;->n:F

    return p1
.end method

.method static synthetic k(Lcu;)F
    .locals 0

    .line 42
    iget p0, p0, Lcu;->p:F

    return p0
.end method

.method static synthetic k(Lcu;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcu;->q:F

    return p1
.end method

.method static synthetic l(Lcu;)F
    .locals 0

    .line 42
    iget p0, p0, Lcu;->n:F

    return p0
.end method

.method static synthetic l(Lcu;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcu;->r:F

    return p1
.end method

.method static synthetic m(Lcu;)F
    .locals 0

    .line 42
    iget p0, p0, Lcu;->q:F

    return p0
.end method

.method static synthetic m(Lcu;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcu;->s:F

    return p1
.end method

.method static synthetic n(Lcu;)F
    .locals 0

    .line 42
    iget p0, p0, Lcu;->r:F

    return p0
.end method

.method static synthetic n(Lcu;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcu;->t:F

    return p1
.end method

.method static synthetic o(Lcu;)F
    .locals 0

    .line 42
    iget p0, p0, Lcu;->s:F

    return p0
.end method

.method static synthetic p(Lcu;)F
    .locals 0

    .line 42
    iget p0, p0, Lcu;->t:F

    return p0
.end method


# virtual methods
.method public a()Lco;
    .locals 1

    .line 494
    new-instance v0, Lcu;

    invoke-direct {v0}, Lcu;-><init>()V

    invoke-virtual {v0, p0}, Lcu;->a(Lco;)Lco;

    move-result-object v0

    return-object v0
.end method

.method public a(Lco;)Lco;
    .locals 1

    .line 471
    invoke-super {p0, p1}, Lco;->a(Lco;)Lco;

    .line 472
    check-cast p1, Lcu;

    .line 473
    iget-object v0, p1, Lcu;->g:Ljava/lang/String;

    iput-object v0, p0, Lcu;->g:Ljava/lang/String;

    .line 474
    iget v0, p1, Lcu;->h:I

    iput v0, p0, Lcu;->h:I

    .line 475
    iget v0, p1, Lcu;->u:I

    iput v0, p0, Lcu;->u:I

    .line 476
    iget v0, p1, Lcu;->w:F

    iput v0, p0, Lcu;->w:F

    .line 477
    iget v0, p1, Lcu;->x:F

    iput v0, p0, Lcu;->x:F

    .line 478
    iget v0, p1, Lcu;->t:F

    iput v0, p0, Lcu;->t:F

    .line 479
    iget v0, p1, Lcu;->i:F

    iput v0, p0, Lcu;->i:F

    .line 480
    iget v0, p1, Lcu;->j:F

    iput v0, p0, Lcu;->j:F

    .line 481
    iget v0, p1, Lcu;->k:F

    iput v0, p0, Lcu;->k:F

    .line 482
    iget v0, p1, Lcu;->n:F

    iput v0, p0, Lcu;->n:F

    .line 483
    iget v0, p1, Lcu;->l:F

    iput v0, p0, Lcu;->l:F

    .line 484
    iget v0, p1, Lcu;->m:F

    iput v0, p0, Lcu;->m:F

    .line 485
    iget v0, p1, Lcu;->o:F

    iput v0, p0, Lcu;->o:F

    .line 486
    iget v0, p1, Lcu;->p:F

    iput v0, p0, Lcu;->p:F

    .line 487
    iget v0, p1, Lcu;->q:F

    iput v0, p0, Lcu;->q:F

    .line 488
    iget v0, p1, Lcu;->r:F

    iput v0, p0, Lcu;->r:F

    .line 489
    iget p1, p1, Lcu;->s:F

    iput p1, p0, Lcu;->s:F

    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 83
    sget-object v0, Landroidx/constraintlayout/widget/h$b;->KeyTimeCycle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 84
    invoke-static {p0, p1}, Lcu$a;->a(Lcu;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lci;",
            ">;)V"
        }
    .end annotation

    .line 186
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, " KeyTimeCycles do not support SplineSet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 93
    iget v0, p0, Lcu;->i:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alpha"

    .line 94
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    iget v0, p0, Lcu;->j:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "elevation"

    .line 97
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    iget v0, p0, Lcu;->k:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "rotation"

    .line 100
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_2
    iget v0, p0, Lcu;->l:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rotationX"

    .line 103
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3
    iget v0, p0, Lcu;->m:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "rotationY"

    .line 106
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_4
    iget v0, p0, Lcu;->q:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "translationX"

    .line 109
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_5
    iget v0, p0, Lcu;->r:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "translationY"

    .line 112
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_6
    iget v0, p0, Lcu;->s:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "translationZ"

    .line 115
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_7
    iget v0, p0, Lcu;->n:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "transitionPathRotate"

    .line 118
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_8
    iget v0, p0, Lcu;->o:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "scaleX"

    .line 121
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_9
    iget v0, p0, Lcu;->p:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "scaleY"

    .line 124
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_a
    iget v0, p0, Lcu;->t:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "progress"

    .line 127
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_b
    iget-object v0, p0, Lcu;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 130
    iget-object v0, p0, Lcu;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_c
    return-void
.end method

.method public b(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 137
    iget v0, p0, Lcu;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 140
    :cond_0
    iget v0, p0, Lcu;->i:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget v0, p0, Lcu;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1
    iget v0, p0, Lcu;->j:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    iget v0, p0, Lcu;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "elevation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_2
    iget v0, p0, Lcu;->k:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    iget v0, p0, Lcu;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_3
    iget v0, p0, Lcu;->l:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 150
    iget v0, p0, Lcu;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_4
    iget v0, p0, Lcu;->m:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    .line 153
    iget v0, p0, Lcu;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_5
    iget v0, p0, Lcu;->q:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    .line 156
    iget v0, p0, Lcu;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_6
    iget v0, p0, Lcu;->r:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    .line 159
    iget v0, p0, Lcu;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_7
    iget v0, p0, Lcu;->s:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    .line 162
    iget v0, p0, Lcu;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationZ"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_8
    iget v0, p0, Lcu;->n:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    .line 165
    iget v0, p0, Lcu;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transitionPathRotate"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_9
    iget v0, p0, Lcu;->o:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    .line 168
    iget v0, p0, Lcu;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_a
    iget v0, p0, Lcu;->o:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    .line 171
    iget v0, p0, Lcu;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_b
    iget v0, p0, Lcu;->t:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    .line 174
    iget v0, p0, Lcu;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_c
    iget-object v0, p0, Lcu;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 177
    iget-object v0, p0, Lcu;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcu;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_d
    return-void
.end method

.method public c(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lck;",
            ">;)V"
        }
    .end annotation

    .line 190
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lck;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "CUSTOM"

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x7

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcu;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/a;

    if-eqz v6, :cond_0

    .line 199
    move-object v4, v3

    check-cast v4, Lck$b;

    iget v5, p0, Lcu;->b:I

    iget v7, p0, Lcu;->w:F

    iget v8, p0, Lcu;->u:I

    iget v9, p0, Lcu;->x:F

    invoke-virtual/range {v4 .. v9}, Lck$b;->a(ILandroidx/constraintlayout/widget/a;FIF)V

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .line 203
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_3
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_4
    const-string v5, "scaleY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :sswitch_5
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x6

    goto :goto_2

    :sswitch_6
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xb

    goto :goto_2

    :sswitch_7
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xa

    goto :goto_2

    :sswitch_8
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x9

    goto :goto_2

    :sswitch_9
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_a
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_b
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v2

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN addValues \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyTimeCycles"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 260
    :pswitch_0
    iget v1, p0, Lcu;->t:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    iget v4, p0, Lcu;->b:I

    iget v5, p0, Lcu;->t:F

    iget v6, p0, Lcu;->w:F

    iget v7, p0, Lcu;->u:I

    iget v8, p0, Lcu;->x:F

    invoke-virtual/range {v3 .. v8}, Lck;->a(IFFIF)V

    goto/16 :goto_0

    .line 255
    :pswitch_1
    iget v1, p0, Lcu;->s:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    iget v4, p0, Lcu;->b:I

    iget v5, p0, Lcu;->s:F

    iget v6, p0, Lcu;->w:F

    iget v7, p0, Lcu;->u:I

    iget v8, p0, Lcu;->x:F

    invoke-virtual/range {v3 .. v8}, Lck;->a(IFFIF)V

    goto/16 :goto_0

    .line 250
    :pswitch_2
    iget v1, p0, Lcu;->r:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    iget v4, p0, Lcu;->b:I

    iget v5, p0, Lcu;->r:F

    iget v6, p0, Lcu;->w:F

    iget v7, p0, Lcu;->u:I

    iget v8, p0, Lcu;->x:F

    invoke-virtual/range {v3 .. v8}, Lck;->a(IFFIF)V

    goto/16 :goto_0

    .line 245
    :pswitch_3
    iget v1, p0, Lcu;->q:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    iget v4, p0, Lcu;->b:I

    iget v5, p0, Lcu;->q:F

    iget v6, p0, Lcu;->w:F

    iget v7, p0, Lcu;->u:I

    iget v8, p0, Lcu;->x:F

    invoke-virtual/range {v3 .. v8}, Lck;->a(IFFIF)V

    goto/16 :goto_0

    .line 240
    :pswitch_4
    iget v1, p0, Lcu;->p:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    iget v4, p0, Lcu;->b:I

    iget v5, p0, Lcu;->p:F

    iget v6, p0, Lcu;->w:F

    iget v7, p0, Lcu;->u:I

    iget v8, p0, Lcu;->x:F

    invoke-virtual/range {v3 .. v8}, Lck;->a(IFFIF)V

    goto/16 :goto_0

    .line 235
    :pswitch_5
    iget v1, p0, Lcu;->o:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    iget v4, p0, Lcu;->b:I

    iget v5, p0, Lcu;->o:F

    iget v6, p0, Lcu;->w:F

    iget v7, p0, Lcu;->u:I

    iget v8, p0, Lcu;->x:F

    invoke-virtual/range {v3 .. v8}, Lck;->a(IFFIF)V

    goto/16 :goto_0

    .line 230
    :pswitch_6
    iget v1, p0, Lcu;->n:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    iget v4, p0, Lcu;->b:I

    iget v5, p0, Lcu;->n:F

    iget v6, p0, Lcu;->w:F

    iget v7, p0, Lcu;->u:I

    iget v8, p0, Lcu;->x:F

    invoke-virtual/range {v3 .. v8}, Lck;->a(IFFIF)V

    goto/16 :goto_0

    .line 225
    :pswitch_7
    iget v1, p0, Lcu;->m:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget v4, p0, Lcu;->b:I

    iget v5, p0, Lcu;->m:F

    iget v6, p0, Lcu;->w:F

    iget v7, p0, Lcu;->u:I

    iget v8, p0, Lcu;->x:F

    invoke-virtual/range {v3 .. v8}, Lck;->a(IFFIF)V

    goto/16 :goto_0

    .line 220
    :pswitch_8
    iget v1, p0, Lcu;->l:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget v4, p0, Lcu;->b:I

    iget v5, p0, Lcu;->l:F

    iget v6, p0, Lcu;->w:F

    iget v7, p0, Lcu;->u:I

    iget v8, p0, Lcu;->x:F

    invoke-virtual/range {v3 .. v8}, Lck;->a(IFFIF)V

    goto/16 :goto_0

    .line 215
    :pswitch_9
    iget v1, p0, Lcu;->k:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget v4, p0, Lcu;->b:I

    iget v5, p0, Lcu;->k:F

    iget v6, p0, Lcu;->w:F

    iget v7, p0, Lcu;->u:I

    iget v8, p0, Lcu;->x:F

    invoke-virtual/range {v3 .. v8}, Lck;->a(IFFIF)V

    goto/16 :goto_0

    .line 210
    :pswitch_a
    iget v1, p0, Lcu;->j:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    iget v4, p0, Lcu;->b:I

    iget v5, p0, Lcu;->j:F

    iget v6, p0, Lcu;->w:F

    iget v7, p0, Lcu;->u:I

    iget v8, p0, Lcu;->x:F

    invoke-virtual/range {v3 .. v8}, Lck;->a(IFFIF)V

    goto/16 :goto_0

    .line 205
    :pswitch_b
    iget v1, p0, Lcu;->i:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    iget v4, p0, Lcu;->b:I

    iget v5, p0, Lcu;->i:F

    iget v6, p0, Lcu;->w:F

    iget v7, p0, Lcu;->u:I

    iget v8, p0, Lcu;->x:F

    invoke-virtual/range {v3 .. v8}, Lck;->a(IFFIF)V

    goto/16 :goto_0

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_b
        -0x4a771f65 -> :sswitch_a
        -0x490b9c39 -> :sswitch_9
        -0x490b9c38 -> :sswitch_8
        -0x490b9c37 -> :sswitch_7
        -0x3bab3dd3 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcu;->a()Lco;

    move-result-object v0

    return-object v0
.end method
