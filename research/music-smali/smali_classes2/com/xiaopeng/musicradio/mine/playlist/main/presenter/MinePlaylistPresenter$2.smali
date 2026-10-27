.class Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter$2;
.super Lcom/xiaopeng/musicradio/datalist/d$a;
.source "MinePlaylistPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/d$a<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/xiaopeng/musicradio/bean/ListSignBean;

.field final synthetic c:Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lcom/xiaopeng/musicradio/bean/ListSignBean;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter$2;->c:Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter$2;->b:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/datalist/d$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter$2;->b:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 122
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter$2;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Z

    move-result p1

    return p1
.end method
