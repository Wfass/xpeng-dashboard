.class public Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;,
        Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;
    }
.end annotation


# static fields
.field private static final ANIM_ALPHA:Ljava/lang/String; = "alpha"


# instance fields
.field protected mDelay:I

.field protected mDuration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x64

    iput v0, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDelay:I

    .line 17
    const/16 v0, 0xc8

    iput v0, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    return-void
.end method

.method private runAlphaAnimation(Landroid/view/View;J)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # J

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 89
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 90
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 91
    iget v1, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 92
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    new-instance v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;-><init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 94
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 95
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private runFlipHorizonAnimation(Landroid/view/View;J)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # J

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 143
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 144
    .local v0, "set":Landroid/animation/AnimatorSet;
    const-string v1, "rotationY"

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 145
    .local v1, "objectAnimator1":Landroid/animation/ObjectAnimator;
    const-string v3, "alpha"

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 146
    .local v3, "objectAnimator2":Landroid/animation/ObjectAnimator;
    iget v4, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 147
    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 148
    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 149
    new-instance v2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;-><init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 150
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 151
    return-void

    :array_0
    .array-data 4
        -0x3ccc0000    # -180.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private runFlipVerticalAnimation(Landroid/view/View;J)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # J

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 131
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 132
    .local v0, "set":Landroid/animation/AnimatorSet;
    const-string v1, "rotationX"

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 133
    .local v1, "objectAnimator1":Landroid/animation/ObjectAnimator;
    const-string v3, "alpha"

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 134
    .local v3, "objectAnimator2":Landroid/animation/ObjectAnimator;
    iget v4, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 135
    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 136
    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 137
    new-instance v2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;-><init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 138
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 139
    return-void

    :array_0
    .array-data 4
        -0x3ccc0000    # -180.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private runHorizonLeftAnimation(Landroid/view/View;J)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # J

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 61
    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 62
    invoke-static {}, Lcom/xiaopeng/lib/utils/view/UIUtils;->getScreenWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 63
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 64
    const-string v1, "alpha"

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 65
    .local v1, "objectAnimatorAlpha":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 66
    .local v3, "set":Landroid/animation/AnimatorSet;
    iget v6, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 67
    invoke-virtual {v3, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 68
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v1, v2, v4

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 69
    new-instance v2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;-><init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 70
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 71
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private runHorizonRightAnimation(Landroid/view/View;J)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # J

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 75
    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 76
    invoke-static {}, Lcom/xiaopeng/lib/utils/view/UIUtils;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v0, v3, v4

    .line 75
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 77
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    const-string v1, "alpha"

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 79
    .local v1, "objectAnimatorAlpha":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 80
    .local v3, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 81
    iget v6, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 82
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v1, v2, v4

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 83
    new-instance v2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;-><init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 84
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 85
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private runRotateAnimation(Landroid/view/View;J)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # J

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 99
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 100
    .local v0, "set":Landroid/animation/AnimatorSet;
    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 101
    .local v1, "objectAnimator":Landroid/animation/ObjectAnimator;
    const-string v3, "scaleX"

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 102
    .local v3, "objectAnimator2":Landroid/animation/ObjectAnimator;
    const-string v4, "scaleY"

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 103
    .local v4, "objectAnimator3":Landroid/animation/ObjectAnimator;
    const-string v5, "alpha"

    new-array v6, v2, [F

    fill-array-data v6, :array_3

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 105
    .local v5, "objectAnimator4":Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    iget v6, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 109
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    aput-object v4, v6, v2

    const/4 v2, 0x3

    aput-object v5, v6, v2

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 110
    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 111
    new-instance v2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;-><init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 112
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 113
    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private runScaleAnimation(Landroid/view/View;J)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # J

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 117
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 119
    .local v0, "set":Landroid/animation/AnimatorSet;
    const-string v1, "scaleX"

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 120
    .local v1, "objectAnimator2":Landroid/animation/ObjectAnimator;
    const-string v3, "scaleY"

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 121
    .local v3, "objectAnimator3":Landroid/animation/ObjectAnimator;
    const-string v4, "alpha"

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 122
    .local v4, "objectAnimator4":Landroid/animation/ObjectAnimator;
    iget v5, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 123
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    aput-object v4, v5, v2

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 124
    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 125
    new-instance v2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;-><init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 127
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public runAnimation(Landroid/view/View;JLcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # J
    .param p4, "type"    # Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    .line 27
    sget-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$1;->$SwitchMap$com$xiaopeng$lib$utils$view$anim$BaseAnimation$AnimationType:[I

    invoke-virtual {p4}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 51
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->runFlipVerticalAnimation(Landroid/view/View;J)V

    .line 52
    goto :goto_0

    .line 48
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->runFlipHorizonAnimation(Landroid/view/View;J)V

    .line 49
    goto :goto_0

    .line 45
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->runScaleAnimation(Landroid/view/View;J)V

    .line 46
    goto :goto_0

    .line 43
    :pswitch_3
    goto :goto_0

    .line 38
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->runHorizonRightAnimation(Landroid/view/View;J)V

    .line 39
    goto :goto_0

    .line 35
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->runHorizonLeftAnimation(Landroid/view/View;J)V

    .line 36
    goto :goto_0

    .line 32
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->runAlphaAnimation(Landroid/view/View;J)V

    .line 33
    goto :goto_0

    .line 29
    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->runRotateAnimation(Landroid/view/View;J)V

    .line 30
    nop

    .line 57
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
