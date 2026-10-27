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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->currentValue:F

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->view:Landroid/view/View;

    return-void
.end method

.method private animate(FF)V
    .locals 4

    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 42
    iput p2, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->currentValue:F

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 49
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 50
    new-instance p2, Lcom/xiaopeng/xui/utils/-$$Lambda$XPressedScaleHelper$NG4QRyR9YVNty7IM-Q9qHwZ3FeA;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/utils/-$$Lambda$XPressedScaleHelper$NG4QRyR9YVNty7IM-Q9qHwZ3FeA;-><init>(Lcom/xiaopeng/xui/utils/XPressedScaleHelper;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    iget-boolean p1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->isPressed:Z

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v2, v0, v3, p2}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;

    const v2, 0x3e570a3d    # 0.21f

    const v3, 0x3f170a3d    # 0.59f

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 63
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$animate$0$XPressedScaleHelper(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 54
    iput p1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->currentValue:F

    return-void
.end method

.method public update()V
    .locals 5

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->isPressed:Z

    .line 24
    iget-object v1, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    const v4, 0x10100a7

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    .line 26
    iput-boolean v3, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->isPressed:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->isPressed:Z

    if-eqz v0, :cond_2

    .line 30
    iget v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->currentValue:F

    const v1, 0x3f7ae148    # 0.98f

    .line 31
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->animate(FF)V

    goto :goto_1

    .line 33
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->currentValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/utils/XPressedScaleHelper;->animate(FF)V

    :goto_1
    return-void
.end method
