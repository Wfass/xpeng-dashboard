.class final Lbet$1;
.super Lbnl;
.source "RxMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbet;->a(Ljava/lang/String;IIII)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnl<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 37
    iput-object p1, p0, Lbet$1;->a:Ljava/lang/String;

    iput p2, p0, Lbet$1;->b:I

    iput p3, p0, Lbet$1;->c:I

    iput p4, p0, Lbet$1;->d:I

    iput p5, p0, Lbet$1;->e:I

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
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lbet$1$1;

    invoke-direct {v0, p0}, Lbet$1$1;-><init>(Lbet$1;)V

    return-object v0
.end method

.method protected a(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    iget-object v1, p0, Lbet$1;->a:Ljava/lang/String;

    iget v2, p0, Lbet$1;->b:I

    iget v3, p0, Lbet$1;->c:I

    iget v4, p0, Lbet$1;->d:I

    iget v5, p0, Lbet$1;->e:I

    const-string v6, "RxMusicModel"

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lbev;->a(Ljava/lang/String;IIIILjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method
