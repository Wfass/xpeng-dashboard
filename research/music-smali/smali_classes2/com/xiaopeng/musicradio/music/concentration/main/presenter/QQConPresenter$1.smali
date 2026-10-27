.class Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$1;
.super Ljava/lang/Object;
.source "QQConPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 84
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lbfr;->b(I)Lcom/xiaopeng/musicradio/bean/music/ConResult;

    move-result-object v0

    const-string v1, "QQConPresenter"

    const-string v2, "loadData: from file"

    .line 85
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->c()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lbfr;->a(ILcom/xiaopeng/musicradio/bean/music/ConResult;)V

    .line 88
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;Lcom/xiaopeng/musicradio/bean/music/ConResult;)V

    :cond_0
    return-void
.end method
