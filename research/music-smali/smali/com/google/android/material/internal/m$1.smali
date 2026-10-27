.class Lcom/google/android/material/internal/m$1;
.super Ljava/lang/Object;
.source "TextScale.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/m;->a(Landroid/view/ViewGroup;Landroidx/transition/u;Landroidx/transition/u;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/google/android/material/internal/m;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/m;Landroid/widget/TextView;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/google/android/material/internal/m$1;->b:Lcom/google/android/material/internal/m;

    iput-object p2, p0, Lcom/google/android/material/internal/m$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 83
    iget-object v0, p0, Lcom/google/android/material/internal/m$1;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 84
    iget-object v0, p0, Lcom/google/android/material/internal/m$1;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method
