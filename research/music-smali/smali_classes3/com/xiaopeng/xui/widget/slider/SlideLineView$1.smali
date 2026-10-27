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

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->access$002(Lcom/xiaopeng/xui/widget/slider/SlideLineView;F)F

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->access$100(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->access$000(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->invalidate()V

    return-void
.end method
