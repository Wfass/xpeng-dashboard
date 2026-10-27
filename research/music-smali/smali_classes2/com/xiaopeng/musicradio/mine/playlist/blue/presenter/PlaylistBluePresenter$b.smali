.class Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$b;
.super Lcom/xiaopeng/musicradio/datalist/d$a;
.source "PlaylistBluePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/d$a<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$b;->b:Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;

    .line 140
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/datalist/d$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 137
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$b;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    return p1
.end method
