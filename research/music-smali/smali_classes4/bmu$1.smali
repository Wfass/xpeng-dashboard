.class final Lbmu$1;
.super Lbnl;
.source "RxReadingModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmu;->a(JZII)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnl<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method constructor <init>(JZII)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lbmu$1;->a:J

    iput-boolean p3, p0, Lbmu$1;->b:Z

    iput p4, p0, Lbmu$1;->c:I

    iput p5, p0, Lbmu$1;->d:I

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
            "Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Lbmu$1$1;

    invoke-direct {v0, p0}, Lbmu$1$1;-><init>(Lbmu$1;)V

    return-object v0
.end method

.method protected a(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    iget-wide v1, p0, Lbmu$1;->a:J

    iget-boolean v3, p0, Lbmu$1;->b:Z

    iget v4, p0, Lbmu$1;->c:I

    iget v5, p0, Lbmu$1;->d:I

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lbmv;->a(JZIILbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method
