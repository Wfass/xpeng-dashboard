.class Lbdc$1;
.super Lbnl;
.source "MusicContinuePlayModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdc;->a(ILjava/lang/String;II)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnl<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lbdc;


# direct methods
.method constructor <init>(Lbdc;ILjava/lang/String;II)V
    .locals 0

    .line 50
    iput-object p1, p0, Lbdc$1;->e:Lbdc;

    iput p2, p0, Lbdc$1;->a:I

    iput-object p3, p0, Lbdc$1;->b:Ljava/lang/String;

    iput p4, p0, Lbdc$1;->c:I

    iput p5, p0, Lbdc$1;->d:I

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
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Lbdc$1$1;

    invoke-direct {v0, p0}, Lbdc$1$1;-><init>(Lbdc$1;)V

    return-object v0
.end method

.method protected a(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lbdc$1;->e:Lbdc;

    iget v1, p0, Lbdc$1;->a:I

    iget-object v2, p0, Lbdc$1;->b:Ljava/lang/String;

    iget v3, p0, Lbdc$1;->c:I

    iget v4, p0, Lbdc$1;->d:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lbdc;->a(ILjava/lang/String;IILbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method
