.class Lamg$7;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamg;->a(IZZ)Lamm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lamg;


# direct methods
.method constructor <init>(Lamg;IZZ)V
    .locals 0

    .line 3094
    iput-object p1, p0, Lamg$7;->e:Lamg;

    iput p2, p0, Lamg$7;->b:I

    iput-boolean p3, p0, Lamg$7;->c:Z

    iput-boolean p4, p0, Lamg$7;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3095
    iput p1, p0, Lamg$7;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 3098
    iget v1, v0, Lamg$7;->a:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_5

    .line 3099
    iget-object v1, v0, Lamg$7;->e:Lamg;

    iget-object v1, v1, Lamg;->ax:Lamo;

    sget-object v6, Lamo;->None:Lamo;

    if-ne v1, v6, :cond_0

    iget-object v1, v0, Lamg$7;->e:Lamg;

    iget-object v1, v1, Lamg;->ay:Lamo;

    sget-object v6, Lamo;->Loading:Lamo;

    if-ne v1, v6, :cond_0

    .line 3101
    iget-object v1, v0, Lamg$7;->e:Lamg;

    sget-object v2, Lamo;->None:Lamo;

    iput-object v2, v1, Lamg;->ay:Lamo;

    goto/16 :goto_0

    .line 3102
    :cond_0
    iget-object v1, v0, Lamg$7;->e:Lamg;

    iget-object v1, v1, Lamg;->aN:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lamg$7;->e:Lamg;

    iget-object v1, v1, Lamg;->ax:Lamo;

    iget-boolean v1, v1, Lamo;->isDragging:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lamg$7;->e:Lamg;

    iget-object v1, v1, Lamg;->ax:Lamo;

    sget-object v6, Lamo;->LoadReleased:Lamo;

    if-ne v1, v6, :cond_3

    :cond_1
    iget-object v1, v0, Lamg$7;->e:Lamg;

    iget-object v1, v1, Lamg;->ax:Lamo;

    iget-boolean v1, v1, Lamo;->isFooter:Z

    if-eqz v1, :cond_3

    .line 3109
    iget-object v1, v0, Lamg$7;->e:Lamg;

    iget-object v1, v1, Lamg;->aN:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3110
    iget-object v1, v0, Lamg$7;->e:Lamg;

    iget-object v1, v1, Lamg;->aN:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3111
    iget-object v1, v0, Lamg$7;->e:Lamg;

    const/4 v2, 0x0

    iput-object v2, v1, Lamg;->aN:Landroid/animation/ValueAnimator;

    .line 3120
    iget-object v1, v1, Lamg;->aw:Laml;

    invoke-interface {v1, v5}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3121
    iget-object v1, v0, Lamg$7;->e:Lamg;

    sget-object v2, Lamo;->None:Lamo;

    invoke-virtual {v1, v2}, Lamg;->a(Lamo;)V

    goto :goto_0

    .line 3123
    :cond_2
    iget-object v1, v0, Lamg$7;->e:Lamg;

    sget-object v2, Lamo;->PullUpCanceled:Lamo;

    invoke-virtual {v1, v2}, Lamg;->a(Lamo;)V

    goto :goto_0

    .line 3126
    :cond_3
    iget-object v1, v0, Lamg$7;->e:Lamg;

    iget-object v1, v1, Lamg;->ax:Lamo;

    sget-object v2, Lamo;->Loading:Lamo;

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lamg$7;->e:Lamg;

    iget-object v1, v1, Lamg;->as:Lamh;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lamg$7;->e:Lamg;

    iget-object v1, v1, Lamg;->at:Lami;

    if-eqz v1, :cond_4

    .line 3127
    iget v1, v0, Lamg$7;->a:I

    add-int/2addr v1, v4

    iput v1, v0, Lamg$7;->a:I

    .line 3128
    iget-object v1, v0, Lamg$7;->e:Lamg;

    iget-object v1, v1, Lamg;->av:Landroid/os/Handler;

    iget v2, v0, Lamg$7;->b:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3130
    iget-object v1, v0, Lamg$7;->e:Lamg;

    sget-object v2, Lamo;->LoadFinish:Lamo;

    invoke-virtual {v1, v2}, Lamg;->a(Lamo;)V

    return-void

    .line 3133
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lamg$7;->c:Z

    if-eqz v1, :cond_e

    .line 3134
    iget-object v1, v0, Lamg$7;->e:Lamg;

    invoke-virtual {v1, v4}, Lamg;->b(Z)Lamm;

    goto/16 :goto_5

    .line 3137
    :cond_5
    iget-object v1, v0, Lamg$7;->e:Lamg;

    iget-object v1, v1, Lamg;->as:Lamh;

    iget-object v6, v0, Lamg$7;->e:Lamg;

    iget-boolean v7, v0, Lamg$7;->d:Z

    invoke-interface {v1, v6, v7}, Lamh;->a(Lamm;Z)I

    move-result v1

    .line 3138
    iget-object v6, v0, Lamg$7;->e:Lamg;

    iget-object v6, v6, Lamg;->ab:Lamw;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lamg$7;->e:Lamg;

    iget-object v6, v6, Lamg;->as:Lamh;

    instance-of v6, v6, Lamj;

    if-eqz v6, :cond_6

    .line 3139
    iget-object v6, v0, Lamg$7;->e:Lamg;

    iget-object v6, v6, Lamg;->ab:Lamw;

    iget-object v7, v0, Lamg$7;->e:Lamg;

    iget-object v7, v7, Lamg;->as:Lamh;

    check-cast v7, Lamj;

    iget-boolean v8, v0, Lamg$7;->d:Z

    invoke-interface {v6, v7, v8}, Lamw;->a(Lamj;Z)V

    :cond_6
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_e

    .line 3143
    iget-boolean v6, v0, Lamg$7;->c:Z

    if-eqz v6, :cond_7

    iget-object v6, v0, Lamg$7;->e:Lamg;

    iget-boolean v6, v6, Lamg;->H:Z

    if-eqz v6, :cond_7

    iget-object v6, v0, Lamg$7;->e:Lamg;

    iget v6, v6, Lamg;->b:I

    if-gez v6, :cond_7

    iget-object v6, v0, Lamg$7;->e:Lamg;

    iget-object v6, v6, Lamg;->at:Lami;

    invoke-interface {v6}, Lami;->d()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    move v4, v5

    .line 3144
    :goto_1
    iget-object v6, v0, Lamg$7;->e:Lamg;

    iget v6, v6, Lamg;->b:I

    if-eqz v4, :cond_8

    iget-object v4, v0, Lamg$7;->e:Lamg;

    iget v4, v4, Lamg;->b:I

    iget-object v7, v0, Lamg$7;->e:Lamg;

    iget v7, v7, Lamg;->ak:I

    neg-int v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_8
    move v4, v5

    :goto_2
    sub-int v4, v6, v4

    .line 3146
    iget-object v6, v0, Lamg$7;->e:Lamg;

    iget-boolean v6, v6, Lamg;->n:Z

    if-nez v6, :cond_9

    iget-object v6, v0, Lamg$7;->e:Lamg;

    iget-boolean v6, v6, Lamg;->ae:Z

    if-eqz v6, :cond_c

    .line 3147
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 3148
    iget-object v6, v0, Lamg$7;->e:Lamg;

    iget-boolean v6, v6, Lamg;->n:Z

    if-eqz v6, :cond_b

    .line 3149
    iget-object v6, v0, Lamg$7;->e:Lamg;

    iget v7, v6, Lamg;->k:F

    iput v7, v6, Lamg;->i:F

    .line 3150
    iget-object v6, v0, Lamg$7;->e:Lamg;

    iget v7, v6, Lamg;->b:I

    sub-int/2addr v7, v4

    iput v7, v6, Lamg;->d:I

    .line 3151
    iget-object v6, v0, Lamg$7;->e:Lamg;

    iput-boolean v5, v6, Lamg;->n:Z

    .line 3152
    iget-boolean v6, v6, Lamg;->G:Z

    if-eqz v6, :cond_a

    move v6, v4

    goto :goto_3

    :cond_a
    move v6, v5

    .line 3153
    :goto_3
    iget-object v14, v0, Lamg$7;->e:Lamg;

    const/4 v11, 0x0

    iget v12, v14, Lamg;->j:F

    iget-object v7, v0, Lamg$7;->e:Lamg;

    iget v7, v7, Lamg;->k:F

    int-to-float v6, v6

    add-float/2addr v7, v6

    iget-object v8, v0, Lamg$7;->e:Lamg;

    iget v8, v8, Lamg;->a:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float v13, v7, v8

    const/16 v17, 0x0

    move-wide v7, v15

    move-wide v9, v15

    move-object v2, v14

    move/from16 v14, v17

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lamg;->d(Lamg;Landroid/view/MotionEvent;)Z

    .line 3154
    iget-object v2, v0, Lamg$7;->e:Lamg;

    const/4 v11, 0x2

    iget v12, v2, Lamg;->j:F

    iget-object v3, v0, Lamg$7;->e:Lamg;

    iget v3, v3, Lamg;->k:F

    add-float v13, v3, v6

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lamg;->e(Lamg;Landroid/view/MotionEvent;)Z

    .line 3156
    :cond_b
    iget-object v2, v0, Lamg$7;->e:Lamg;

    iget-boolean v2, v2, Lamg;->ae:Z

    if-eqz v2, :cond_c

    .line 3157
    iget-object v2, v0, Lamg$7;->e:Lamg;

    iput v5, v2, Lamg;->ad:I

    const/4 v11, 0x1

    .line 3158
    iget v12, v2, Lamg;->j:F

    iget-object v3, v0, Lamg$7;->e:Lamg;

    iget v13, v3, Lamg;->k:F

    const/4 v14, 0x0

    move-wide v7, v15

    move-wide v9, v15

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lamg;->f(Lamg;Landroid/view/MotionEvent;)Z

    .line 3159
    iget-object v2, v0, Lamg$7;->e:Lamg;

    iput-boolean v5, v2, Lamg;->ae:Z

    .line 3160
    iput v5, v2, Lamg;->d:I

    .line 3164
    :cond_c
    iget-object v2, v0, Lamg$7;->e:Lamg;

    iget-object v2, v2, Lamg;->av:Landroid/os/Handler;

    new-instance v3, Lamg$7$1;

    invoke-direct {v3, v0, v4}, Lamg$7$1;-><init>(Lamg$7;I)V

    iget-object v4, v0, Lamg$7;->e:Lamg;

    iget v4, v4, Lamg;->b:I

    if-gez v4, :cond_d

    int-to-long v4, v1

    goto :goto_4

    :cond_d
    const-wide/16 v4, 0x0

    :goto_4
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    :goto_5
    return-void
.end method
