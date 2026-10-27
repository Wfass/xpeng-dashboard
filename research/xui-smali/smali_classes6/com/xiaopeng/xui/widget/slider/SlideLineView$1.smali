.class Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;
.super Ljava/lang/Object;
.source "SlideLineView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/slider/SlideLineView;->applyStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->access$002(Lcom/xiaopeng/xui/widget/slider/SlideLineView;F)F

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->access$100(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->access$000(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->invalidate()V

    .line 117
    return-void
.end method
