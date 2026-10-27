.class final Laia$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laia;->b(Landroid/view/View;ILaia$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Laia$a;


# direct methods
.method constructor <init>(Landroid/view/View;Laia$a;)V
    .locals 0

    .line 146
    iput-object p1, p0, Laia$3;->a:Landroid/view/View;

    iput-object p2, p0, Laia$3;->b:Laia$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 153
    iget-object p1, p0, Laia$3;->b:Laia$a;

    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Laia$3;->a:Landroid/view/View;

    invoke-interface {p1, v0}, Laia$a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 149
    iget-object p1, p0, Laia$3;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
