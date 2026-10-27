.class Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;
.super Ljava/lang/Object;
.source "SlideLineView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/slider/SlideLineView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 122
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->access$100(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->access$200(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 117
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 127
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 111
    return-void
.end method
