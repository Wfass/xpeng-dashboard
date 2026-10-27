.class public final Lbyu;
.super Ljava/lang/Object;
.source "IndicatorOptions.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:I

.field private l:F

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41000000    # 8.0f

    .line 93
    invoke-static {v0}, Lbyv;->a(F)I

    move-result v0

    int-to-float v0, v0

    .line 94
    iput v0, p0, Lbyu;->i:F

    .line 95
    iget v0, p0, Lbyu;->i:F

    iput v0, p0, Lbyu;->j:F

    .line 96
    iput v0, p0, Lbyu;->g:F

    const-string v0, "#8C18171C"

    .line 97
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbyu;->e:I

    const-string v0, "#8C6C6D72"

    .line 98
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbyu;->f:I

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lbyu;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 38
    iget v0, p0, Lbyu;->a:I

    return v0
.end method

.method public final a(F)V
    .locals 0

    .line 71
    iput p1, p0, Lbyu;->g:F

    return-void
.end method

.method public final a(FF)V
    .locals 0

    .line 110
    iput p1, p0, Lbyu;->i:F

    .line 111
    iput p2, p0, Lbyu;->j:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 38
    iput p1, p0, Lbyu;->a:I

    return-void
.end method

.method public final a(II)V
    .locals 0

    .line 122
    iput p1, p0, Lbyu;->e:I

    .line 123
    iput p2, p0, Lbyu;->f:I

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lbyu;->m:Z

    return-void
.end method

.method public final b()I
    .locals 1

    .line 41
    iget v0, p0, Lbyu;->b:I

    return v0
.end method

.method public final b(F)V
    .locals 0

    .line 73
    iput p1, p0, Lbyu;->h:F

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 41
    iput p1, p0, Lbyu;->b:I

    return-void
.end method

.method public final c()I
    .locals 1

    .line 51
    iget v0, p0, Lbyu;->c:I

    return v0
.end method

.method public final c(F)V
    .locals 0

    .line 76
    iput p1, p0, Lbyu;->i:F

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 51
    iput p1, p0, Lbyu;->c:I

    return-void
.end method

.method public final d()I
    .locals 1

    .line 56
    iget v0, p0, Lbyu;->d:I

    return v0
.end method

.method public final d(F)V
    .locals 0

    .line 78
    iput p1, p0, Lbyu;->j:F

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 56
    iput p1, p0, Lbyu;->d:I

    return-void
.end method

.method public final e()I
    .locals 1

    .line 61
    iget v0, p0, Lbyu;->e:I

    return v0
.end method

.method public final e(F)V
    .locals 0

    .line 88
    iput p1, p0, Lbyu;->l:F

    return-void
.end method

.method public final e(I)V
    .locals 0

    .line 61
    iput p1, p0, Lbyu;->e:I

    return-void
.end method

.method public final f()I
    .locals 1

    .line 66
    iget v0, p0, Lbyu;->f:I

    return v0
.end method

.method public final f(F)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1, p1}, Lbyu;->a(FF)V

    return-void
.end method

.method public final f(I)V
    .locals 0

    .line 66
    iput p1, p0, Lbyu;->f:I

    return-void
.end method

.method public final g()F
    .locals 1

    .line 71
    iget v0, p0, Lbyu;->g:F

    return v0
.end method

.method public final g(I)V
    .locals 0

    .line 83
    iput p1, p0, Lbyu;->k:I

    return-void
.end method

.method public final h()F
    .locals 2

    .line 74
    iget v0, p0, Lbyu;->h:F

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lbyu;->i:F

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public final h(I)V
    .locals 0

    .line 103
    iput p1, p0, Lbyu;->f:I

    return-void
.end method

.method public final i()F
    .locals 1

    .line 76
    iget v0, p0, Lbyu;->i:F

    return v0
.end method

.method public final j()F
    .locals 1

    .line 78
    iget v0, p0, Lbyu;->j:F

    return v0
.end method

.method public final k()I
    .locals 1

    .line 83
    iget v0, p0, Lbyu;->k:I

    return v0
.end method

.method public final l()F
    .locals 1

    .line 88
    iget v0, p0, Lbyu;->l:F

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lbyu;->m:Z

    return v0
.end method
