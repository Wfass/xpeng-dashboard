.class Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$a;
.super Lcom/xiaopeng/musicradio/datalist/d$a;
.source "PlaylistBluePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field public b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$a;->c:Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;

    const/4 p1, 0x0

    .line 154
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/datalist/d$a;-><init>(Ljava/lang/Object;)V

    .line 155
    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$a;->b:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

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

    .line 149
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$a;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    return p1
.end method
