.class Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1$1;
.super Ljava/lang/Object;
.source "ThreeOnePlayerInfoLayout.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;->b()V

    :cond_0
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;->b()V

    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;->a()V

    :cond_0
    return-void
.end method
