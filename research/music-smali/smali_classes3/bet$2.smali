.class final Lbet$2;
.super Lbnl;
.source "RxMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbet;->b(Ljava/lang/String;III)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnl<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 203
    iput-object p1, p0, Lbet$2;->a:Ljava/lang/String;

    iput p2, p0, Lbet$2;->b:I

    iput p3, p0, Lbet$2;->c:I

    iput p4, p0, Lbet$2;->d:I

    invoke-direct {p0}, Lbnl;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lbnl$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbnl$a<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Lbet$2$1;

    invoke-direct {v0, p0}, Lbet$2$1;-><init>(Lbet$2;)V

    return-object v0
.end method

.method protected a(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    const-string v0, "RxMusicModel"

    const-string v1, "getArtistSongList doRequest: ====="

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v2

    iget-object v3, p0, Lbet$2;->a:Ljava/lang/String;

    iget v4, p0, Lbet$2;->b:I

    iget v5, p0, Lbet$2;->c:I

    iget v9, p0, Lbet$2;->d:I

    const/4 v6, 0x0

    const-string v7, "RxMusicModel"

    move-object v8, p1

    invoke-virtual/range {v2 .. v9}, Lbev;->a(Ljava/lang/String;IIZLjava/lang/String;Lbkv;I)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method
