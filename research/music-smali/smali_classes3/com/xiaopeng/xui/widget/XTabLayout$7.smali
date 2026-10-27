.class Lcom/xiaopeng/xui/widget/XTabLayout$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTabLayout;->moveIndicatorTo(ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

.field final synthetic val$listener:Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTabLayout;Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$7;->val$listener:Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 685
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 686
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$000(Lcom/xiaopeng/xui/widget/XTabLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 687
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$7;->val$listener:Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;

    if-eqz p1, :cond_0

    .line 688
    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;->onEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 677
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 678
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$7;->val$listener:Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;

    if-eqz p1, :cond_0

    .line 679
    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;->onStart()V

    :cond_0
    return-void
.end method
