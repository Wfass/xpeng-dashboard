.class Lcom/xiaopeng/xui/widget/XLeftSlideView$1;
.super Ljava/lang/Object;
.source "XLeftSlideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XLeftSlideView;->upAnim()V
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
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XLeftSlideView;

    .line 412
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView$1;->this$0:Lcom/xiaopeng/xui/widget/XLeftSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 415
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 416
    .local v0, "value":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView$1;->this$0:Lcom/xiaopeng/xui/widget/XLeftSlideView;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView$1;->this$0:Lcom/xiaopeng/xui/widget/XLeftSlideView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    neg-int v2, v0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->scrollTo(II)V

    .line 417
    return-void
.end method
