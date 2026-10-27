.class Lcom/xiaopeng/xui/widget/XLeftSlideView$3;
.super Ljava/lang/Object;
.source "XLeftSlideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XLeftSlideView;->resetDelStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XLeftSlideView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XLeftSlideView;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView$3;->this$0:Lcom/xiaopeng/xui/widget/XLeftSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 462
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView$3;->this$0:Lcom/xiaopeng/xui/widget/XLeftSlideView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    neg-int p1, p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->scrollTo(II)V

    return-void
.end method
