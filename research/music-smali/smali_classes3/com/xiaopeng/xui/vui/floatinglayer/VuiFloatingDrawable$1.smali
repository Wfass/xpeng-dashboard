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

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$1;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 92
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$1;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$1;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->invalidateSelf()V

    return-void
.end method
