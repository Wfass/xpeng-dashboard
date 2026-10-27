.class Lcom/xiaopeng/xui/widget/XSwitch$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSwitch;->runAnimator(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XSwitch;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSwitch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XSwitch;

    .line 419
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch$1;->this$0:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 422
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch$1;->this$0:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSwitch;->access$000(Lcom/xiaopeng/xui/widget/XSwitch;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch$1;->this$0:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSwitch;->access$000(Lcom/xiaopeng/xui/widget/XSwitch;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch$1;->this$0:Lcom/xiaopeng/xui/widget/XSwitch;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->access$002(Lcom/xiaopeng/xui/widget/XSwitch;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 426
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 430
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch$1;->this$0:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSwitch;->access$000(Lcom/xiaopeng/xui/widget/XSwitch;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch$1;->this$0:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSwitch;->access$000(Lcom/xiaopeng/xui/widget/XSwitch;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch$1;->this$0:Lcom/xiaopeng/xui/widget/XSwitch;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->access$002(Lcom/xiaopeng/xui/widget/XSwitch;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 434
    return-void
.end method
