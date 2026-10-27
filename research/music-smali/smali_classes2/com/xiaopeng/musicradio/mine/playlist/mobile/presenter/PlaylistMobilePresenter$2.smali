.class Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$2;
.super Lcom/xiaopeng/musicradio/datalist/d$a;
.source "PlaylistMobilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/d$a<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/xiaopeng/musicradio/bean/ListSignBean;

.field final synthetic c:Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Lcom/xiaopeng/musicradio/bean/ListSignBean;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$2;->c:Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$2;->b:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/datalist/d$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$2;->b:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->collectId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 117
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$2;->a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)Z

    move-result p1

    return p1
.end method
