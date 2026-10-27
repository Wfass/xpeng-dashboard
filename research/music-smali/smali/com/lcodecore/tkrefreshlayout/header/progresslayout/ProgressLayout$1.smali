.class Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProgressLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->onFinish(Lcom/lcodecore/tkrefreshlayout/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/c;

.field final synthetic b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;Lcom/lcodecore/tkrefreshlayout/c;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$1;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$1;->a:Lcom/lcodecore/tkrefreshlayout/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$1;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->reset()V

    .line 223
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$1;->a:Lcom/lcodecore/tkrefreshlayout/c;

    invoke-interface {p1}, Lcom/lcodecore/tkrefreshlayout/c;->a()V

    return-void
.end method
