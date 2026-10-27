.class Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$2;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

    .line 402
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$2;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$2;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$2;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->l()V

    .line 417
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$2;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->b()V

    .line 418
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$2;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->i()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->b(F)V

    .line 419
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$2;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;->a:Z

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$2;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;->a:Z

    const-wide/16 v2, 0x534

    .line 423
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 424
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$2;->a:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;

    invoke-virtual {p1, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$a;->a(Z)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$2;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;->a(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;->a(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;F)F

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 406
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b$2;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;->a(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/b;F)F

    return-void
.end method
