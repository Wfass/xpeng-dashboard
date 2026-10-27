.class Lcom/xiaopeng/xui/widget/XSwitch$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSwitch;->eI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ags:Lcom/xiaopeng/xui/widget/XSwitch;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSwitch;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch$1;->ags:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 422
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 423
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch$1;->ags:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XSwitch;->a(Lcom/xiaopeng/xui/widget/XSwitch;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 424
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch$1;->ags:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XSwitch;->a(Lcom/xiaopeng/xui/widget/XSwitch;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 425
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch$1;->ags:Lcom/xiaopeng/xui/widget/XSwitch;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->a(Lcom/xiaopeng/xui/widget/XSwitch;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 426
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 430
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 431
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch$1;->ags:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XSwitch;->a(Lcom/xiaopeng/xui/widget/XSwitch;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 432
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch$1;->ags:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XSwitch;->a(Lcom/xiaopeng/xui/widget/XSwitch;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 433
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch$1;->ags:Lcom/xiaopeng/xui/widget/XSwitch;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->a(Lcom/xiaopeng/xui/widget/XSwitch;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 434
    return-void
.end method
