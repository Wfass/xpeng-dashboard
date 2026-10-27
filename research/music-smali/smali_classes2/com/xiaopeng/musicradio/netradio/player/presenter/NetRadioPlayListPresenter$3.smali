.class Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter$3;
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

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter$3;->a:Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter$3;->a:Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a(Z)V

    return-void
.end method
