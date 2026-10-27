.class Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2$1;
.super Ljava/lang/Object;
.source "QQConPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;->a:Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;->showErrorView()V

    :cond_0
    return-void
.end method
