.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RippleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$2;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$2;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->a(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$2;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->a(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$a;->a()V

    :cond_0
    return-void
.end method
