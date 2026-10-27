.class Lamg$6;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamg;->a(IZLjava/lang/Boolean;)Lamm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Boolean;

.field final synthetic d:Z

.field final synthetic e:Lamg;


# direct methods
.method constructor <init>(Lamg;ILjava/lang/Boolean;Z)V
    .locals 0

    .line 2951
    iput-object p1, p0, Lamg$6;->e:Lamg;

    iput p2, p0, Lamg$6;->b:I

    iput-object p3, p0, Lamg$6;->c:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lamg$6;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2952
    iput p1, p0, Lamg$6;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 2955
    iget v0, p0, Lamg$6;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 2956
    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->ax:Lamo;

    sget-object v3, Lamo;->None:Lamo;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->ay:Lamo;

    sget-object v3, Lamo;->Refreshing:Lamo;

    if-ne v0, v3, :cond_0

    .line 2958
    iget-object v0, p0, Lamg$6;->e:Lamg;

    sget-object v1, Lamo;->None:Lamo;

    iput-object v1, v0, Lamg;->ay:Lamo;

    goto/16 :goto_0

    .line 2959
    :cond_0
    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->aN:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->ax:Lamo;

    iget-boolean v0, v0, Lamo;->isHeader:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->ax:Lamo;

    iget-boolean v0, v0, Lamo;->isDragging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->ax:Lamo;

    sget-object v3, Lamo;->RefreshReleased:Lamo;

    if-ne v0, v3, :cond_3

    .line 2967
    :cond_1
    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->aN:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2968
    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->aN:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2969
    iget-object v0, p0, Lamg$6;->e:Lamg;

    iput-object v1, v0, Lamg;->aN:Landroid/animation/ValueAnimator;

    .line 2978
    iget-object v0, v0, Lamg;->aw:Laml;

    invoke-interface {v0, v2}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2979
    iget-object v0, p0, Lamg$6;->e:Lamg;

    sget-object v1, Lamo;->None:Lamo;

    invoke-virtual {v0, v1}, Lamg;->a(Lamo;)V

    goto :goto_0

    .line 2981
    :cond_2
    iget-object v0, p0, Lamg$6;->e:Lamg;

    sget-object v1, Lamo;->PullDownCanceled:Lamo;

    invoke-virtual {v0, v1}, Lamg;->a(Lamo;)V

    goto :goto_0

    .line 2984
    :cond_3
    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->Refreshing:Lamo;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->ar:Lamh;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->at:Lami;

    if-eqz v0, :cond_4

    .line 2985
    iget v0, p0, Lamg$6;->a:I

    add-int/2addr v0, v4

    iput v0, p0, Lamg$6;->a:I

    .line 2986
    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->av:Landroid/os/Handler;

    iget v1, p0, Lamg$6;->b:I

    int-to-long v5, v1

    invoke-virtual {v0, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2988
    iget-object v0, p0, Lamg$6;->e:Lamg;

    sget-object v1, Lamo;->RefreshFinish:Lamo;

    invoke-virtual {v0, v1}, Lamg;->a(Lamo;)V

    .line 2989
    iget-object v0, p0, Lamg$6;->c:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    .line 2990
    iget-object v0, p0, Lamg$6;->e:Lamg;

    invoke-virtual {v0, v2}, Lamg;->b(Z)Lamm;

    .line 2993
    :cond_4
    :goto_0
    iget-object v0, p0, Lamg$6;->c:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_d

    .line 2994
    iget-object v0, p0, Lamg$6;->e:Lamg;

    invoke-virtual {v0, v4}, Lamg;->b(Z)Lamm;

    goto/16 :goto_1

    .line 2997
    :cond_5
    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->ar:Lamh;

    iget-object v3, p0, Lamg$6;->e:Lamg;

    iget-boolean v4, p0, Lamg$6;->d:Z

    invoke-interface {v0, v3, v4}, Lamh;->a(Lamm;Z)I

    move-result v0

    .line 2998
    iget-object v3, p0, Lamg$6;->e:Lamg;

    iget-object v3, v3, Lamg;->ab:Lamw;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lamg$6;->e:Lamg;

    iget-object v3, v3, Lamg;->ar:Lamh;

    instance-of v3, v3, Lamk;

    if-eqz v3, :cond_6

    .line 2999
    iget-object v3, p0, Lamg$6;->e:Lamg;

    iget-object v3, v3, Lamg;->ab:Lamw;

    iget-object v4, p0, Lamg$6;->e:Lamg;

    iget-object v4, v4, Lamg;->ar:Lamh;

    check-cast v4, Lamk;

    iget-boolean v5, p0, Lamg$6;->d:Z

    invoke-interface {v3, v4, v5}, Lamw;->a(Lamk;Z)V

    :cond_6
    const v3, 0x7fffffff

    if-ge v0, v3, :cond_d

    .line 3004
    iget-object v3, p0, Lamg$6;->e:Lamg;

    iget-boolean v3, v3, Lamg;->n:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lamg$6;->e:Lamg;

    iget-boolean v3, v3, Lamg;->ae:Z

    if-eqz v3, :cond_9

    .line 3005
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3006
    iget-object v3, p0, Lamg$6;->e:Lamg;

    iget-boolean v3, v3, Lamg;->n:Z

    if-eqz v3, :cond_8

    .line 3007
    iget-object v3, p0, Lamg$6;->e:Lamg;

    iget v4, v3, Lamg;->k:F

    iput v4, v3, Lamg;->i:F

    .line 3008
    iget-object v3, p0, Lamg$6;->e:Lamg;

    iput v2, v3, Lamg;->d:I

    .line 3009
    iput-boolean v2, v3, Lamg;->n:Z

    const/4 v8, 0x0

    .line 3010
    iget v9, v3, Lamg;->j:F

    iget-object v4, p0, Lamg$6;->e:Lamg;

    iget v4, v4, Lamg;->k:F

    iget-object v5, p0, Lamg$6;->e:Lamg;

    iget v5, v5, Lamg;->b:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lamg$6;->e:Lamg;

    iget v5, v5, Lamg;->a:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v10, v4, v5

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lamg;->a(Lamg;Landroid/view/MotionEvent;)Z

    .line 3011
    iget-object v3, p0, Lamg$6;->e:Lamg;

    const/4 v8, 0x2

    iget v9, v3, Lamg;->j:F

    iget-object v4, p0, Lamg$6;->e:Lamg;

    iget v4, v4, Lamg;->k:F

    iget-object v5, p0, Lamg$6;->e:Lamg;

    iget v5, v5, Lamg;->b:I

    int-to-float v5, v5

    add-float v10, v4, v5

    move-wide v4, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lamg;->b(Lamg;Landroid/view/MotionEvent;)Z

    .line 3013
    :cond_8
    iget-object v3, p0, Lamg$6;->e:Lamg;

    iget-boolean v3, v3, Lamg;->ae:Z

    if-eqz v3, :cond_9

    .line 3014
    iget-object v3, p0, Lamg$6;->e:Lamg;

    iput v2, v3, Lamg;->ad:I

    const/4 v8, 0x1

    .line 3015
    iget v9, v3, Lamg;->j:F

    iget-object v4, p0, Lamg$6;->e:Lamg;

    iget v10, v4, Lamg;->k:F

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lamg;->c(Lamg;Landroid/view/MotionEvent;)Z

    .line 3016
    iget-object v3, p0, Lamg$6;->e:Lamg;

    iput-boolean v2, v3, Lamg;->ae:Z

    .line 3017
    iput v2, v3, Lamg;->d:I

    .line 3020
    :cond_9
    iget-object v3, p0, Lamg$6;->e:Lamg;

    iget v3, v3, Lamg;->b:I

    if-lez v3, :cond_b

    .line 3022
    iget-object v3, p0, Lamg$6;->e:Lamg;

    iget-object v4, v3, Lamg;->z:Landroid/view/animation/Interpolator;

    iget-object v5, p0, Lamg$6;->e:Lamg;

    iget v5, v5, Lamg;->f:I

    invoke-virtual {v3, v2, v0, v4, v5}, Lamg;->a(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3023
    iget-object v2, p0, Lamg$6;->e:Lamg;

    iget-boolean v2, v2, Lamg;->O:Z

    if-eqz v2, :cond_a

    .line 3024
    iget-object v1, p0, Lamg$6;->e:Lamg;

    iget-object v1, v1, Lamg;->at:Lami;

    iget-object v2, p0, Lamg$6;->e:Lamg;

    iget v2, v2, Lamg;->b:I

    invoke-interface {v1, v2}, Lami;->a(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    :cond_a
    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 3027
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 3029
    :cond_b
    iget-object v1, p0, Lamg$6;->e:Lamg;

    iget v1, v1, Lamg;->b:I

    if-gez v1, :cond_c

    .line 3030
    iget-object v1, p0, Lamg$6;->e:Lamg;

    iget-object v3, v1, Lamg;->z:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lamg$6;->e:Lamg;

    iget v4, v4, Lamg;->f:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lamg;->a(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 3032
    :cond_c
    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->aw:Laml;

    invoke-interface {v0, v2, v2}, Laml;->moveSpinner(IZ)Laml;

    .line 3034
    iget-object v0, p0, Lamg$6;->e:Lamg;

    iget-object v0, v0, Lamg;->aw:Laml;

    sget-object v1, Lamo;->None:Lamo;

    invoke-interface {v0, v1}, Laml;->setState(Lamo;)Laml;

    :cond_d
    :goto_1
    return-void
.end method
