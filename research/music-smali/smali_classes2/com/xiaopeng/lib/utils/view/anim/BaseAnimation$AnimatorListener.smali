.class Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;
.super Ljava/lang/Object;
.source "BaseAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimatorListener"
.end annotation


# instance fields
.field mmView:Landroid/view/View;

.field final synthetic this$0:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;Landroid/view/View;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;->this$0:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;->mmView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;->mmView:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimatorListener;->mmView:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
