.class final Lbet$13;
.super Lbnl;
.source "RxMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbet;->a(Ljava/lang/String;III)Lio/reactivex/Observable;
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

    .line 158
    iput-object p1, p0, Lbet$13;->a:Ljava/lang/String;

    iput p2, p0, Lbet$13;->b:I

    iput p3, p0, Lbet$13;->c:I

    iput p4, p0, Lbet$13;->d:I

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

    .line 162
    new-instance v0, Lbet$13$1;

    invoke-direct {v0, p0}, Lbet$13$1;-><init>(Lbet$13;)V

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

    const-string v1, "getNewSonglist doRequest: ======== "

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v2

    iget-object v3, p0, Lbet$13;->a:Ljava/lang/String;

    iget v4, p0, Lbet$13;->b:I

    iget v5, p0, Lbet$13;->c:I

    iget v6, p0, Lbet$13;->d:I

    const/4 v7, 0x0

    const-string v8, "RxMusicModel"

    move-object v9, p1

    invoke-virtual/range {v2 .. v9}, Lbev;->b(Ljava/lang/String;IIIZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method
