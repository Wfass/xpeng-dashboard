.class Lask$e$5;
.super Ljava/lang/Object;
.source "AudioFocusModel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lask$e;->a(Lask$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lask$d;

.field final synthetic b:Lask$e;


# direct methods
.method constructor <init>(Lask$e;Lask$d;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lask$e$5;->b:Lask$e;

    iput-object p2, p0, Lask$e$5;->a:Lask$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1022
    iget-object v0, p0, Lask$e$5;->b:Lask$e;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lask$e;->b(Lask$e;F)F

    .line 1023
    iget-object p1, p0, Lask$e$5;->a:Lask$d;

    iget-object v0, p0, Lask$e$5;->b:Lask$e;

    invoke-static {v0}, Lask$e;->c(Lask$e;)F

    move-result v0

    invoke-interface {p1, v0}, Lask$d;->updateSoundVolume(F)V

    return-void
.end method
