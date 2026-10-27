.class Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter$2;
.super Ljava/lang/Object;
.source "NetRadioPlayListPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/player/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/netradio/player/view/a;->updateLoading()V

    :cond_0
    return-void
.end method
