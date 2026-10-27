.class Lcom/xiaopeng/musicradio/playercomponent/big/view/e$7;
.super Landroid/transition/TransitionListenerAdapter;
.source "MusicChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/xiaopeng/musicradio/playercomponent/big/view/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/e;Landroid/view/ViewGroup;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$7;->c:Lcom/xiaopeng/musicradio/playercomponent/big/view/e;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$7;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 305
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$7;->a:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 1

    .line 309
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$7;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    const/4 p1, 0x1

    .line 310
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$7;->a:Z

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    .line 315
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$7;->a:Z

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$7;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 318
    :cond_0
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 1

    .line 323
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$7;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 1

    .line 328
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$7;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    return-void
.end method
