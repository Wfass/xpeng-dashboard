.class public Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$a;
.super Lcom/xiaopeng/musicradio/datalist/d$a;
.source "CollectedMusicPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/d$a<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$a;->b:Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    .line 220
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/datalist/d$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$a;->a:Ljava/lang/Object;

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

    .line 217
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$a;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    return p1
.end method
