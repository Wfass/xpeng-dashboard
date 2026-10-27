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

    .line 164
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 167
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$100(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$002(Lcom/xiaopeng/xui/drawable/ripple/XRipple;F)F

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$200(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$200(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple$AnimTransformListener;->onDownTransformation(FLandroid/view/animation/Transformation;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$300(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$400(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$300(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$300(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$1;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$500(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)V

    return-void
.end method
