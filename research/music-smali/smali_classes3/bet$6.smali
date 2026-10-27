.class final Lbet$6;
.super Lbnl;
.source "RxMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbet;->a(II)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnl<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 315
    iput p1, p0, Lbet$6;->a:I

    iput p2, p0, Lbet$6;->b:I

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
            "Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Lbet$6$1;

    invoke-direct {v0, p0}, Lbet$6$1;-><init>(Lbet$6;)V

    return-object v0
.end method

.method protected a(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;",
            ">;"
        }
    .end annotation

    .line 325
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    iget v1, p0, Lbet$6;->a:I

    iget v2, p0, Lbet$6;->b:I

    invoke-virtual {v0, v1, v2, p1}, Lbev;->b(IILbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method
