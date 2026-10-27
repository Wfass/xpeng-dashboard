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

    .line 213
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 216
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$1400(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$1302(Lcom/xiaopeng/xui/drawable/ripple/XRipple;F)F

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$200(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$200(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;->onUpTransformation(FLandroid/view/animation/Transformation;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$700(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$600(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$300(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$400(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3f666666    # 0.9f

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$300(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$300(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 227
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$3;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$500(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)V

    return-void
.end method
