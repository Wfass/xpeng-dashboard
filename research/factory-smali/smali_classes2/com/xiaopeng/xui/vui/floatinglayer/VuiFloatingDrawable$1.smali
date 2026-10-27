.class Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$1;
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

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$1;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 92
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 94
    .local v0, "v":I
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$1;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-static {v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 95
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$1;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->invalidateSelf()V

    .line 96
    return-void
.end method
