.class Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;
.super Ljava/lang/Object;
.source "ThreeOnePlayerInfoLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

.field final synthetic b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)[F

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    new-array v4, v2, [F

    invoke-static {v0, v4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;[F)[F

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)[F

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    aput v4, v0, v3

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)[F

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    aput v4, v0, v1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->c(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)[I

    move-result-object v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    new-array v4, v2, [I

    invoke-static {v0, v4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;[I)[I

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->c(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)[I

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    aput v4, v0, v3

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->c(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)[I

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    aput v4, v0, v1

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;Z)Landroid/transition/Transition;

    move-result-object v0

    .line 87
    new-instance v4, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1$1;

    invoke-direct {v4, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;)V

    invoke-virtual {v0, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 120
    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v4, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->d(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->e(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    new-array v0, v2, [I

    .line 126
    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    iget-object v4, v4, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 128
    new-array v4, v2, [I

    .line 129
    iget-object v5, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v5}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 131
    iget-object v5, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    iget-object v5, v5, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 132
    iget-object v6, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v6}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 134
    iget-object v7, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v7}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v7

    aget v8, v0, v3

    aget v9, v4, v3

    sub-int/2addr v8, v9

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v9, v10

    div-int/2addr v9, v2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setX(F)V

    .line 135
    iget-object v7, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v7}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v7

    aget v0, v0, v1

    aget v1, v4, v1

    sub-int/2addr v0, v1

    iget v1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v4

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setY(F)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    const/4 v4, 0x0

    add-float/2addr v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return v3
.end method
