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

    const/16 v0, 0x64

    .line 16
    iput v0, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDelay:I

    const/16 v0, 0xc8

    .line 17
    iput v0, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    return-void
.end method

.method private runAlphaAnimation(Landroid/view/View;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "delay"
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 89
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 91
    iget p2, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    int-to-long p2, p2

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 92
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    new-instance p2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;-><init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 94
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "delay"
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 143
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 144
    fill-array-data v2, :array_0

    const-string v3, "rotationY"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [F

    .line 145
    fill-array-data v3, :array_1

    const-string v4, "alpha"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 146
    iget v4, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 147
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 148
    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 149
    new-instance p2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;-><init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 150
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "delay"
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 131
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 132
    fill-array-data v2, :array_0

    const-string v3, "rotationX"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [F

    .line 133
    fill-array-data v3, :array_1

    const-string v4, "alpha"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 134
    iget v4, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 135
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 136
    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 137
    new-instance p2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;-><init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 138
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "delay"
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 62
    invoke-static {}, Lcom/xiaopeng/lib/utils/view/UIUtils;->getScreenWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    const-string v0, "translationX"

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 63
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v1, [F

    .line 64
    fill-array-data v2, :array_0

    const-string v5, "alpha"

    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 65
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 66
    iget v6, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 67
    invoke-virtual {v5, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-array p2, v1, [Landroid/animation/Animator;

    aput-object v0, p2, v4

    aput-object v2, p2, v3

    .line 68
    invoke-virtual {v5, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 69
    new-instance p2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;-><init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V

    invoke-virtual {v5, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 70
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private runHorizonRightAnimation(Landroid/view/View;J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "delay"
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 76
    invoke-static {}, Lcom/xiaopeng/lib/utils/view/UIUtils;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    const-string v0, "translationX"

    .line 75
    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 77
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v1, [F

    .line 78
    fill-array-data v2, :array_0

    const-string v5, "alpha"

    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 79
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 80
    invoke-virtual {v5, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 81
    iget p2, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    int-to-long p2, p2

    invoke-virtual {v5, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array p2, v1, [Landroid/animation/Animator;

    aput-object v0, p2, v4

    aput-object v2, p2, v3

    .line 82
    invoke-virtual {v5, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 83
    new-instance p2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;-><init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V

    invoke-virtual {v5, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 84
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private runRotateAnimation(Landroid/view/View;J)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "delay"
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 99
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 100
    fill-array-data v2, :array_0

    const-string v3, "rotation"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [F

    .line 101
    fill-array-data v3, :array_1

    const-string v4, "scaleX"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v1, [F

    .line 102
    fill-array-data v4, :array_2

    const-string v5, "scaleY"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v1, [F

    .line 103
    fill-array-data v5, :array_3

    const-string v6, "alpha"

    invoke-static {p1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 105
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

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    const/4 v1, 0x3

    aput-object v5, v6, v1

    .line 109
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 110
    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 111
    new-instance p2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;-><init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 112
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "delay"
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 117
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 119
    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [F

    .line 120
    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v1, [F

    .line 121
    fill-array-data v4, :array_2

    const-string v5, "alpha"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 122
    iget v5, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->mDuration:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    .line 123
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 124
    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 125
    new-instance p2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;-><init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "delay",
            "type"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$1;->$SwitchMap$com$xiaopeng$lib$utils$view$anim$BaseAnimation$AnimationType:[I

    invoke-virtual {p4}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ordinal()I

    move-result p4

    aget p4, v0, p4

    packed-switch p4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 51
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->runFlipVerticalAnimation(Landroid/view/View;J)V

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->runFlipHorizonAnimation(Landroid/view/View;J)V

    goto :goto_0

    .line 45
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->runScaleAnimation(Landroid/view/View;J)V

    goto :goto_0

    .line 38
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->runHorizonRightAnimation(Landroid/view/View;J)V

    goto :goto_0

    .line 35
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->runHorizonLeftAnimation(Landroid/view/View;J)V

    goto :goto_0

    .line 32
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->runAlphaAnimation(Landroid/view/View;J)V

    goto :goto_0

    .line 29
    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;->runRotateAnimation(Landroid/view/View;J)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
