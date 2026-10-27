.class Lgn$2;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgn;->a(Lgq;)Lgn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgq;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lgn;


# direct methods
.method constructor <init>(Lgn;Lgq;Landroid/view/View;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lgn$2;->c:Lgn;

    iput-object p2, p0, Lgn$2;->a:Lgq;

    iput-object p3, p0, Lgn$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 783
    iget-object p1, p0, Lgn$2;->a:Lgq;

    iget-object v0, p0, Lgn$2;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lgq;->a(Landroid/view/View;)V

    return-void
.end method
