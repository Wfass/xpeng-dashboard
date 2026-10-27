.class Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$3;
.super Ljava/lang/Object;
.source "QQConPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->b(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/music/ConResult;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;Lcom/xiaopeng/musicradio/bean/music/ConResult;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$3;->b:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$3;->a:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$3;->b:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$3;->b:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$3;->a:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;->showData(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V

    :cond_0
    return-void
.end method
