.class Lcom/xiaopeng/musicradio/playercomponent/big/view/g$1;
.super Ljava/lang/Object;
.source "PlayerInfoLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/g;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 128
    invoke-static {}, Lblk;->p()V

    .line 129
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbtg;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbtg;

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lbtg;->startVipBuy(Landroid/content/Context;I)V

    return-void
.end method
