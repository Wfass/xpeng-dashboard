.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExtendedFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/floatingactionbutton/d;

.field final synthetic b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;

.field final synthetic c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->a:Lcom/google/android/material/floatingactionbutton/d;

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 659
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->d:Z

    .line 660
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->a:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d;->f()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 665
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->a:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d;->e()V

    .line 666
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->d:Z

    if-nez p1, :cond_0

    .line 667
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->a:Lcom/google/android/material/floatingactionbutton/d;

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;

    invoke-interface {p1, v0}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->a:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->a(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    .line 654
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->d:Z

    return-void
.end method
