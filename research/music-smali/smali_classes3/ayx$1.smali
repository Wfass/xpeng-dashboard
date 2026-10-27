.class final Layx$1;
.super Lbnl;
.source "BizHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layx;->a(III)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnl<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 35
    iput p1, p0, Layx$1;->a:I

    iput p2, p0, Layx$1;->b:I

    iput p3, p0, Layx$1;->c:I

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
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Layx$1$1;

    invoke-direct {v0, p0}, Layx$1$1;-><init>(Layx$1;)V

    return-object v0
.end method

.method protected a(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
            ">;"
        }
    .end annotation

    .line 45
    iget v0, p0, Layx$1;->a:I

    iget v1, p0, Layx$1;->b:I

    iget v2, p0, Layx$1;->c:I

    invoke-static {v0, v1, v2, p1}, Layx;->a(IIILbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method
