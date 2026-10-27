.class Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$1;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/view/SwipeBackLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->findView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->access$002(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;Z)Z

    .line 118
    new-instance v0, Lbli$b;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Lbli$b;-><init>(F)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method
