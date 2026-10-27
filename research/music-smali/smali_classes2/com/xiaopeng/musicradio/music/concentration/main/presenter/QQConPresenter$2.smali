.class Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;
.super Ljava/lang/Object;
.source "QQConPresenter.java"

# interfaces
.implements Lbjq$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 108
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;)V

    invoke-static {v0}, Lbql;->j(Ljava/lang/Runnable;)V

    .line 116
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Laxy;->a(Laxy$a;Z)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;Lcom/xiaopeng/musicradio/bean/music/ConResult;)V

    .line 98
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->c()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lbfr;->a(ILcom/xiaopeng/musicradio/bean/music/ConResult;)V

    .line 99
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getResultJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "QQConPresenter"

    const-string v1, "saveConData: "

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getResultJson()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->c()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lbfr;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
