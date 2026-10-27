.class Ldb$a;
.super Lda;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field final synthetic d:Ldb;


# virtual methods
.method public a()F
    .locals 1

    .line 2075
    iget-object v0, p0, Ldb$a;->d:Ldb;

    iget v0, v0, Ldb;->e:F

    return v0
.end method

.method public a(FFF)V
    .locals 0

    .line 2048
    iput p1, p0, Ldb$a;->a:F

    .line 2049
    iput p2, p0, Ldb$a;->b:F

    .line 2050
    iput p3, p0, Ldb$a;->c:F

    return-void
.end method

.method public getInterpolation(F)F
    .locals 5

    .line 2055
    iget v0, p0, Ldb$a;->a:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lez v1, :cond_1

    .line 2056
    iget v1, p0, Ldb$a;->c:F

    div-float v3, v0, v1

    cmpg-float v3, v3, p1

    if-gez v3, :cond_0

    div-float p1, v0, v1

    .line 2059
    :cond_0
    iget-object v0, p0, Ldb$a;->d:Ldb;

    iget v1, p0, Ldb$a;->a:F

    iget v3, p0, Ldb$a;->c:F

    mul-float v4, v3, p1

    sub-float v4, v1, v4

    iput v4, v0, Ldb;->e:F

    mul-float/2addr v1, p1

    mul-float/2addr v3, p1

    mul-float/2addr v3, p1

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 2061
    iget p1, p0, Ldb$a;->b:F

    :goto_0
    add-float/2addr v1, p1

    return v1

    :cond_1
    neg-float v1, v0

    .line 2064
    iget v3, p0, Ldb$a;->c:F

    div-float/2addr v1, v3

    cmpg-float v1, v1, p1

    if-gez v1, :cond_2

    neg-float p1, v0

    div-float/2addr p1, v3

    .line 2067
    :cond_2
    iget-object v0, p0, Ldb$a;->d:Ldb;

    iget v1, p0, Ldb$a;->a:F

    iget v3, p0, Ldb$a;->c:F

    mul-float v4, v3, p1

    add-float/2addr v4, v1

    iput v4, v0, Ldb;->e:F

    mul-float/2addr v1, p1

    mul-float/2addr v3, p1

    mul-float/2addr v3, p1

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 2069
    iget p1, p0, Ldb$a;->b:F

    goto :goto_0
.end method
