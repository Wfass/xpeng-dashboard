.class Lask$e$3;
.super Ljava/lang/Object;
.source "AudioFocusModel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lask$e;->b(Lask$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lask$c;

.field final synthetic b:Lask$e;


# direct methods
.method constructor <init>(Lask$e;Lask$c;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lask$e$3;->b:Lask$e;

    iput-object p2, p0, Lask$e$3;->a:Lask$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 911
    iget-object v0, p0, Lask$e$3;->b:Lask$e;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lask$e;->a(Lask$e;F)F

    .line 913
    iget-object p1, p0, Lask$e$3;->b:Lask$e;

    invoke-static {p1}, Lask$e;->b(Lask$e;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lask$e$3;->b:Lask$e;

    invoke-static {p1}, Lask$e;->b(Lask$e;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 916
    :cond_0
    iget-object p1, p0, Lask$e$3;->a:Lask$c;

    iget-object v0, p0, Lask$e$3;->b:Lask$e;

    invoke-static {v0}, Lask$e;->a(Lask$e;)F

    move-result v0

    invoke-interface {p1, v0}, Lask$c;->updateSoundVolume(F)V

    :goto_0
    return-void
.end method
