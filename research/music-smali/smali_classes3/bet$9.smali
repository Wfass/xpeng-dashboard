.class final Lbet$9;
.super Lbnl;
.source "RxMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbet;->b(I)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnl<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 69
    iput p1, p0, Lbet$9;->a:I

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
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lbet$9$1;

    invoke-direct {v0, p0}, Lbet$9$1;-><init>(Lbet$9;)V

    return-object v0
.end method

.method protected a(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    iget v1, p0, Lbet$9;->a:I

    const-string v2, "RxMusicModel"

    invoke-virtual {v0, v1, v2, p1}, Lbev;->d(ILjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method
