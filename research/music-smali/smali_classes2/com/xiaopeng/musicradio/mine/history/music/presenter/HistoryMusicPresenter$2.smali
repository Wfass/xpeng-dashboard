.class Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$2;
.super Ljava/lang/Object;
.source "HistoryMusicPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->onEvent(Lasj$q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 1

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->d(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->e(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;)V

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/music/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/history/music/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 145
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$2;->a(Ljava/lang/Long;)V

    return-void
.end method
