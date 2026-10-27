.class public Lcom/xiaopeng/xui/utils/XPressedScaleHelper;
.super Ljava/lang/Object;
.source "XPressedScaleHelper.java"


# instance fields
.field private currentValue:F

.field private isPressed:Z

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->currentValue:F

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->view:Landroid/view/View;

    .line 20
    return-void
.end method

.method private animate(FF)V
    .locals 6
    .param p1, "from"    # F
    .param p2, "to"    # F

    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 42
    iput p2, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->currentValue:F

    .line 43
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 49
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/utils/-$$Lambda$XPressedScaleHelper$p6D-omXUaUnnlt1-GAqpI346Ygo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/utils/-$$Lambda$XPressedScaleHelper$p6D-omXUaUnnlt1-GAqpI346Ygo;-><init>(Lcom/xiaopeng/xui/utils/XPressedScaleHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    iget-boolean v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->isPressed:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v4, v2, v5, v1}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;

    const v4, 0x3e570a3d    # 0.21f

    const v5, 0x3f170a3d    # 0.59f

    invoke-direct {v3, v4, v5, v2, v1}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 64
    return-void
.end method

.method public static synthetic lambda$animate$0(Lcom/xiaopeng/xui/utils/XPressedScaleHelper;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 51
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 52
    .local v0, "value":F
    iget-object v1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 53
    iget-object v1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 54
    iput v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->currentValue:F

    .line 55
    return-void
.end method


# virtual methods
.method public update()V
    .locals 5

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->isPressed:Z

    .line 24
    iget-object v1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    .line 25
    .local v3, "s":I
    const v4, 0x10100a7

    if-ne v3, v4, :cond_0

    .line 26
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->isPressed:Z

    .line 24
    .end local v3    # "s":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->isPressed:Z

    if-eqz v0, :cond_2

    .line 30
    iget v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->currentValue:F

    .line 31
    .local v0, "from":F
    const v1, 0x3f7ae148    # 0.98f

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->animate(FF)V

    .line 32
    .end local v0    # "from":F
    goto :goto_1

    .line 33
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->currentValue:F

    .line 34
    .restart local v0    # "from":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->animate(FF)V

    .line 36
    .end local v0    # "from":F
    :goto_1
    return-void
.end method
