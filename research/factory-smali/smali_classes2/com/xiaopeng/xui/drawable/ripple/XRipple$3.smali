.class Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;
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

    .line 213
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 216
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 217
    .local v0, "interpolatedTime":F
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$1400(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v0

    mul-float/2addr v2, v4

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$1302(Lcom/xiaopeng/xui/drawable/ripple/XRipple;F)F

    .line 218
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$200(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$200(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;->onUpTransformation(FLandroid/view/animation/Transformation;)V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$700(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$600(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$300(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$400(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    const v1, 0x3f666666    # 0.9f

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 224
    .local v1, "scale":F
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$300(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 225
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$300(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 227
    .end local v1    # "scale":F
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$500(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)V

    .line 228
    return-void
.end method
