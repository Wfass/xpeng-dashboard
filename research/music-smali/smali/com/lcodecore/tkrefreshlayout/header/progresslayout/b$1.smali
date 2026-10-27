.class Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

.field final synthetic b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    .line 350
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;

    iget-boolean p2, p2, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;->a:Z

    if-eqz p2, :cond_0

    .line 351
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-static {p2, p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;->a(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;FLcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-static {p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;->a(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;)F

    move-result p2

    .line 356
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->g()F

    move-result v0

    .line 357
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->f()F

    move-result v1

    .line 358
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->k()F

    move-result v2

    .line 360
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;

    iget-object v4, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-static {v3, p1, v4}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;->b(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;FLcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;)V

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, p1, v3

    const v5, 0x3f4ccccd    # 0.8f

    if-gtz v4, :cond_1

    div-float v4, p1, v3

    sub-float v6, v5, p2

    .line 371
    invoke-static {}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;->a()Landroid/view/animation/Interpolator;

    move-result-object v7

    .line 372
    invoke-interface {v7, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v6, v4

    add-float/2addr v1, v6

    .line 373
    iget-object v4, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-virtual {v4, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->b(F)V

    :cond_1
    cmpl-float v1, p1, v3

    if-lez v1, :cond_2

    sub-float/2addr v5, p2

    sub-float p2, p1, v3

    div-float/2addr p2, v3

    .line 386
    invoke-static {}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;->a()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float/2addr v5, p2

    add-float/2addr v0, v5

    .line 387
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-virtual {p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->c(F)V

    :cond_2
    const/high16 p2, 0x3e800000    # 0.25f

    mul-float/2addr p2, p1

    add-float/2addr v2, p2

    .line 391
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-virtual {p2, v2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->d(F)V

    const/high16 p2, 0x43580000    # 216.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x44870000    # 1080.0f

    .line 393
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;

    .line 394
    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;->a(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr p1, v0

    .line 395
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$1;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;

    invoke-virtual {p2, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;->c(F)V

    :goto_0
    return-void
.end method
