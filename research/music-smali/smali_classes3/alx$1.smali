.class Lalx$1;
.super Ljava/lang/Object;
.source "BallPulseView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lalx;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lalx;


# direct methods
.method constructor <init>(Lalx;I)V
    .locals 0

    .line 146
    iput-object p1, p0, Lalx$1;->b:Lalx;

    iput p2, p0, Lalx$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lalx$1;->b:Lalx;

    invoke-static {v0}, Lalx;->a(Lalx;)[F

    move-result-object v0

    iget v1, p0, Lalx$1;->a:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    .line 150
    iget-object p1, p0, Lalx$1;->b:Lalx;

    invoke-virtual {p1}, Lalx;->postInvalidate()V

    return-void
.end method
