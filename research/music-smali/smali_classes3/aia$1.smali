.class final Laia$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laia;->a(Landroid/view/View;ILaia$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/Animator$AnimatorListener;

.field final synthetic b:Laia$a;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/animation/Animator$AnimatorListener;Laia$a;Landroid/view/View;)V
    .locals 0

    .line 83
    iput-object p1, p0, Laia$1;->a:Landroid/animation/Animator$AnimatorListener;

    iput-object p2, p0, Laia$1;->b:Laia$a;

    iput-object p3, p0, Laia$1;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 86
    iget-object v0, p0, Laia$1;->a:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 87
    iget-object p1, p0, Laia$1;->b:Laia$a;

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Laia$1;->c:Landroid/view/View;

    invoke-interface {p1, v0}, Laia$a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
