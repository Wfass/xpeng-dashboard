.class public Lkj;
.super Ljava/lang/Object;
.source "DropShadowKeyframeAnimation.java"

# interfaces
.implements Lkh$a;


# instance fields
.field private final a:Lkh$a;

.field private final b:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Lkh$a;Lmq;Lnp;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lkj;->g:Z

    .line 26
    iput-object p1, p0, Lkj;->a:Lkh$a;

    .line 27
    invoke-virtual {p3}, Lnp;->a()Llj;

    move-result-object p1

    invoke-virtual {p1}, Llj;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Lkj;->b:Lkh;

    .line 28
    iget-object p1, p0, Lkj;->b:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 29
    iget-object p1, p0, Lkj;->b:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 30
    invoke-virtual {p3}, Lnp;->b()Llk;

    move-result-object p1

    invoke-virtual {p1}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Lkj;->c:Lkh;

    .line 31
    iget-object p1, p0, Lkj;->c:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 32
    iget-object p1, p0, Lkj;->c:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 33
    invoke-virtual {p3}, Lnp;->c()Llk;

    move-result-object p1

    invoke-virtual {p1}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Lkj;->d:Lkh;

    .line 34
    iget-object p1, p0, Lkj;->d:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 35
    iget-object p1, p0, Lkj;->d:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 36
    invoke-virtual {p3}, Lnp;->d()Llk;

    move-result-object p1

    invoke-virtual {p1}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Lkj;->e:Lkh;

    .line 37
    iget-object p1, p0, Lkj;->e:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 38
    iget-object p1, p0, Lkj;->e:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 39
    invoke-virtual {p3}, Lnp;->e()Llk;

    move-result-object p1

    invoke-virtual {p1}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Lkj;->f:Lkh;

    .line 40
    iget-object p1, p0, Lkj;->f:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 41
    iget-object p1, p0, Lkj;->f:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;)V
    .locals 6

    .line 50
    iget-boolean v0, p0, Lkj;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lkj;->g:Z

    .line 55
    iget-object v0, p0, Lkj;->d:Lkh;

    invoke-virtual {v0}, Lkh;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    .line 56
    iget-object v2, p0, Lkj;->e:Lkh;

    invoke-virtual {v2}, Lkh;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v4

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v2

    .line 59
    iget-object v1, p0, Lkj;->b:Lkh;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 60
    iget-object v2, p0, Lkj;->c:Lkh;

    invoke-virtual {v2}, Lkh;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 61
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 62
    iget-object v2, p0, Lkj;->f:Lkh;

    invoke-virtual {v2}, Lkh;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 63
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public a(Lpe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpe<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lkj;->b:Lkh;

    invoke-virtual {v0, p1}, Lkh;->a(Lpe;)V

    return-void
.end method

.method public b(Lpe;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpe<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 72
    iget-object p1, p0, Lkj;->c:Lkh;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkh;->a(Lpe;)V

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lkj;->c:Lkh;

    new-instance v1, Lkj$1;

    invoke-direct {v1, p0, p1}, Lkj$1;-><init>(Lkj;Lpe;)V

    invoke-virtual {v0, v1}, Lkh;->a(Lpe;)V

    return-void
.end method

.method public c(Lpe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpe<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lkj;->d:Lkh;

    invoke-virtual {v0, p1}, Lkh;->a(Lpe;)V

    return-void
.end method

.method public d(Lpe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpe<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lkj;->e:Lkh;

    invoke-virtual {v0, p1}, Lkh;->a(Lpe;)V

    return-void
.end method

.method public e(Lpe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpe<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lkj;->f:Lkh;

    invoke-virtual {v0, p1}, Lkh;->a(Lpe;)V

    return-void
.end method

.method public onValueChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lkj;->g:Z

    .line 46
    iget-object v0, p0, Lkj;->a:Lkh$a;

    invoke-interface {v0}, Lkh$a;->onValueChanged()V

    return-void
.end method
