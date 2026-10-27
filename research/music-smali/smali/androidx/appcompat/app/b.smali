.class public Landroidx/appcompat/app/b;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/b$a;
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Landroidx/appcompat/app/b$a;

.field private c:Lj;

.field private d:Z

.field private final e:I

.field private final f:I


# direct methods
.method private a(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Landroidx/appcompat/app/b;->c:Lj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lj;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Landroidx/appcompat/app/b;->c:Lj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj;->a(Z)V

    .line 512
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/b;->c:Lj;

    invoke-virtual {v0, p1}, Lj;->setProgress(F)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 429
    invoke-direct {p0, p1}, Landroidx/appcompat/app/b;->a(F)V

    .line 430
    iget-boolean p1, p0, Landroidx/appcompat/app/b;->a:Z

    if-eqz p1, :cond_0

    .line 431
    iget p1, p0, Landroidx/appcompat/app/b;->f:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/b;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 1

    .line 413
    iget-boolean p1, p0, Landroidx/appcompat/app/b;->d:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 414
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/b;->a(F)V

    goto :goto_0

    .line 416
    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/app/b;->a(F)V

    :goto_0
    return-void
.end method

.method b(I)V
    .locals 1

    .line 499
    iget-object v0, p0, Landroidx/appcompat/app/b;->b:Landroidx/appcompat/app/b$a;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/b$a;->a(I)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 444
    invoke-direct {p0, p1}, Landroidx/appcompat/app/b;->a(F)V

    .line 445
    iget-boolean p1, p0, Landroidx/appcompat/app/b;->a:Z

    if-eqz p1, :cond_0

    .line 446
    iget p1, p0, Landroidx/appcompat/app/b;->e:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/b;->b(I)V

    :cond_0
    return-void
.end method
