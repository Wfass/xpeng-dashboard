.class Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable$1;
.super Ljava/lang/Object;
.source "XPressableRoundRectDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->animateHeight(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 95
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->setHeight(I)V

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/drawable/XPressableRoundRectDrawable;->invalidateSelf()V

    return-void
.end method
