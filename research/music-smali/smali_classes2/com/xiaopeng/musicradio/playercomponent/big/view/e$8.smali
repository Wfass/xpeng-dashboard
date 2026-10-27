.class Lcom/xiaopeng/musicradio/playercomponent/big/view/e$8;
.super Ljava/lang/Object;
.source "MusicChangeBounds.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xiaopeng/musicradio/playercomponent/big/view/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/e;Landroid/view/View;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$8;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/e;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$8;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$8;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$8;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$8;->a:Landroid/view/View;

    const-string v1, "android:changeBounds:scaleX"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$8;->a:Landroid/view/View;

    const-string v1, "android:changeBounds:scaleY"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
