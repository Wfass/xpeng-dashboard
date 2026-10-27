.class Lamg$4;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamg;->a(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamg;


# direct methods
.method constructor <init>(Lamg;)V
    .locals 0

    .line 1564
    iput-object p1, p0, Lamg$4;->a:Lamg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1567
    iget-object v0, p0, Lamg$4;->a:Lamg;

    iget-object v0, v0, Lamg;->aw:Laml;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Laml;->moveSpinner(IZ)Laml;

    return-void
.end method
