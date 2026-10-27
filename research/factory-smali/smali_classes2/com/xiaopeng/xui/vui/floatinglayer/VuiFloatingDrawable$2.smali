.class Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$2;
.super Ljava/lang/Object;
.source "VuiFloatingDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$2;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 101
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 103
    .local v0, "v":F
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$2;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-static {v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->access$200(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$2;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-static {v2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->access$100(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$2;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-static {v3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->access$100(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 104
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$2;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->invalidateSelf()V

    .line 105
    return-void
.end method
