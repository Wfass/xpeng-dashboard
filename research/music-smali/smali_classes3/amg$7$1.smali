.class Lamg$7$1;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamg$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lamg$7;


# direct methods
.method constructor <init>(Lamg$7;I)V
    .locals 0

    .line 3164
    iput-object p1, p0, Lamg$7$1;->b:Lamg$7;

    iput p2, p0, Lamg$7$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 3168
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    iget-boolean v0, v0, Lamg;->N:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lamg$7$1;->a:I

    if-gez v0, :cond_0

    .line 3169
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    iget-object v0, v0, Lamg;->at:Lami;

    iget-object v2, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v2, v2, Lamg$7;->e:Lamg;

    iget v2, v2, Lamg;->b:I

    invoke-interface {v0, v2}, Lami;->a(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    .line 3171
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3175
    :cond_1
    :goto_0
    new-instance v2, Lamg$7$1$1;

    invoke-direct {v2, p0}, Lamg$7$1$1;-><init>(Lamg$7$1;)V

    .line 3190
    iget-object v3, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v3, v3, Lamg$7;->e:Lamg;

    iget v3, v3, Lamg;->b:I

    const/4 v4, 0x0

    if-lez v3, :cond_2

    .line 3191
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    iget-object v0, v0, Lamg;->aw:Laml;

    invoke-interface {v0, v4}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto/16 :goto_3

    :cond_2
    if-nez v0, :cond_6

    .line 3192
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    iget v0, v0, Lamg;->b:I

    if-nez v0, :cond_3

    goto :goto_1

    .line 3202
    :cond_3
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-boolean v0, v0, Lamg$7;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    iget-boolean v0, v0, Lamg;->H:Z

    if-eqz v0, :cond_5

    .line 3203
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    iget v0, v0, Lamg;->b:I

    iget-object v3, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v3, v3, Lamg$7;->e:Lamg;

    iget v3, v3, Lamg;->ak:I

    neg-int v3, v3

    if-lt v0, v3, :cond_4

    .line 3204
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    sget-object v3, Lamo;->None:Lamo;

    invoke-virtual {v0, v3}, Lamg;->a(Lamo;)V

    goto :goto_2

    .line 3206
    :cond_4
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    iget-object v0, v0, Lamg;->aw:Laml;

    iget-object v3, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v3, v3, Lamg$7;->e:Lamg;

    iget v3, v3, Lamg;->ak:I

    neg-int v3, v3

    invoke-interface {v0, v3}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_3

    .line 3209
    :cond_5
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    iget-object v0, v0, Lamg;->aw:Laml;

    invoke-interface {v0, v4}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_3

    .line 3193
    :cond_6
    :goto_1
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    iget-object v0, v0, Lamg;->aN:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 3194
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    iget-object v0, v0, Lamg;->aN:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3195
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    iget-object v0, v0, Lamg;->aN:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3196
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    iput-object v1, v0, Lamg;->aN:Landroid/animation/ValueAnimator;

    .line 3199
    :cond_7
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    iget-object v0, v0, Lamg;->aw:Laml;

    invoke-interface {v0, v4, v4}, Laml;->moveSpinner(IZ)Laml;

    .line 3200
    iget-object v0, p0, Lamg$7$1;->b:Lamg$7;

    iget-object v0, v0, Lamg$7;->e:Lamg;

    iget-object v0, v0, Lamg;->aw:Laml;

    sget-object v3, Lamo;->None:Lamo;

    invoke-interface {v0, v3}, Laml;->setState(Lamo;)Laml;

    :goto_2
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_8

    .line 3213
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .line 3215
    :cond_8
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
