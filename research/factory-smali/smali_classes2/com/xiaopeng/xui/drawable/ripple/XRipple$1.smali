.class Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;
.super Ljava/lang/Object;
.source "XRipple.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/drawable/ripple/XRipple;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    .line 164
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 167
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 168
    .local v0, "interpolatedTime":F
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$100(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$002(Lcom/xiaopeng/xui/drawable/ripple/XRipple;F)F

    .line 169
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$200(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$200(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;->onDownTransformation(FLandroid/view/animation/Transformation;)V

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$300(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$400(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    .line 174
    .local v1, "scale":F
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$300(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 175
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$300(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 177
    .end local v1    # "scale":F
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$500(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)V

    .line 178
    return-void
.end method
