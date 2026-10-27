.class Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2$1;
.super Ljava/lang/Object;
.source "ThreeOnePlayerInfoLayout.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;->b()V

    :cond_0
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

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

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;->a()V

    :cond_0
    return-void
.end method
