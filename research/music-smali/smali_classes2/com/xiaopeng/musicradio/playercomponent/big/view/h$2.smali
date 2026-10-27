.class Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;
.super Ljava/lang/Object;
.source "ThreeOnePlayerInfoLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;)V
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

    .line 175
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;Z)Landroid/transition/Transition;

    move-result-object v0

    .line 181
    new-instance v2, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;)V

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 213
    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v2, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->d(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->e(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)[F

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 222
    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->c(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)[I

    move-result-object v4

    aget v4, v4, v1

    int-to-float v4, v4

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    const/4 v6, 0x0

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 223
    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->c(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)[I

    move-result-object v4

    aget v3, v4, v3

    int-to-float v3, v3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    add-float/2addr v0, v6

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setScaleY(F)V

    return v1
.end method
