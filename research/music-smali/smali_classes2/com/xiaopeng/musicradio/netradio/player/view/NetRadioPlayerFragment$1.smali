.class Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment$1;
.super Ljava/lang/Object;
.source "NetRadioPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-static {}, Lblk;->c()V

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->access$000(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;->e()V

    return-void
.end method
