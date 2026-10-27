.class final Lbet$10;
.super Lbnl;
.source "RxMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbet;->c(I)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnl<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 85
    iput p1, p0, Lbet$10;->a:I

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
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Lbet$10$1;

    invoke-direct {v0, p0}, Lbet$10$1;-><init>(Lbet$10;)V

    return-object v0
.end method

.method protected a(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    iget v1, p0, Lbet$10;->a:I

    const-string v2, "RxMusicModel"

    invoke-virtual {v0, v1, v2, p1}, Lbev;->b(ILjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method
