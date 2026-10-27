.class public Lcom/airbnb/lottie/d;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# instance fields
.field private final a:Lcom/airbnb/lottie/n;

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmt;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Llc;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llh;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/collection/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/f<",
            "Lld;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/collection/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/c<",
            "Lmt;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmt;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/graphics/Rect;

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/airbnb/lottie/n;

    invoke-direct {v0}, Lcom/airbnb/lottie/n;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/d;->a:Lcom/airbnb/lottie/n;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/d;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/airbnb/lottie/d;->o:I

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 2

    .line 156
    iget v0, p0, Lcom/airbnb/lottie/d;->k:F

    iget v1, p0, Lcom/airbnb/lottie/d;->l:F

    invoke-static {v0, v1, p1}, Lpa;->a(FFF)F

    move-result p1

    return p1
.end method

.method public a(J)Lmt;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/airbnb/lottie/d;->h:Landroidx/collection/c;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/c;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmt;

    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 103
    iget v0, p0, Lcom/airbnb/lottie/d;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/airbnb/lottie/d;->o:I

    return-void
.end method

.method public a(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/c;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/f;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lmt;",
            ">;",
            "Landroidx/collection/c<",
            "Lmt;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmt;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/g;",
            ">;",
            "Landroidx/collection/f<",
            "Lld;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Llc;",
            ">;",
            "Ljava/util/List<",
            "Llh;",
            ">;)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    .line 78
    iput p2, p0, Lcom/airbnb/lottie/d;->k:F

    .line 79
    iput p3, p0, Lcom/airbnb/lottie/d;->l:F

    .line 80
    iput p4, p0, Lcom/airbnb/lottie/d;->m:F

    .line 81
    iput-object p5, p0, Lcom/airbnb/lottie/d;->i:Ljava/util/List;

    .line 82
    iput-object p6, p0, Lcom/airbnb/lottie/d;->h:Landroidx/collection/c;

    .line 83
    iput-object p7, p0, Lcom/airbnb/lottie/d;->c:Ljava/util/Map;

    .line 84
    iput-object p8, p0, Lcom/airbnb/lottie/d;->d:Ljava/util/Map;

    .line 85
    iput-object p9, p0, Lcom/airbnb/lottie/d;->g:Landroidx/collection/f;

    .line 86
    iput-object p10, p0, Lcom/airbnb/lottie/d;->e:Ljava/util/Map;

    .line 87
    iput-object p11, p0, Lcom/airbnb/lottie/d;->f:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 92
    invoke-static {p1}, Lox;->b(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/airbnb/lottie/d;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/airbnb/lottie/d;->n:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/airbnb/lottie/d;->n:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/airbnb/lottie/d;->o:I

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmt;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/airbnb/lottie/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public b(Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/airbnb/lottie/d;->a:Lcom/airbnb/lottie/n;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/n;->a(Z)V

    return-void
.end method

.method public c()Lcom/airbnb/lottie/n;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/airbnb/lottie/d;->a:Lcom/airbnb/lottie/n;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Llh;
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/airbnb/lottie/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 195
    iget-object v2, p0, Lcom/airbnb/lottie/d;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llh;

    .line 196
    invoke-virtual {v2, p1}, Llh;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Landroid/graphics/Rect;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    return-object v0
.end method

.method public e()F
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->m()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/d;->m:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    return v0
.end method

.method public f()F
    .locals 1

    .line 148
    iget v0, p0, Lcom/airbnb/lottie/d;->k:F

    return v0
.end method

.method public g()F
    .locals 1

    .line 152
    iget v0, p0, Lcom/airbnb/lottie/d;->l:F

    return v0
.end method

.method public h()F
    .locals 1

    .line 166
    iget v0, p0, Lcom/airbnb/lottie/d;->m:F

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmt;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/airbnb/lottie/d;->i:Ljava/util/List;

    return-object v0
.end method

.method public j()Landroidx/collection/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/f<",
            "Lld;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/airbnb/lottie/d;->g:Landroidx/collection/f;

    return-object v0
.end method

.method public k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Llc;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/airbnb/lottie/d;->e:Ljava/util/Map;

    return-object v0
.end method

.method public l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/g;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/airbnb/lottie/d;->d:Ljava/util/Map;

    return-object v0
.end method

.method public m()F
    .locals 2

    .line 217
    iget v0, p0, Lcom/airbnb/lottie/d;->l:F

    iget v1, p0, Lcom/airbnb/lottie/d;->k:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/airbnb/lottie/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmt;

    const-string v3, "\t"

    .line 226
    invoke-virtual {v2, v3}, Lmt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
