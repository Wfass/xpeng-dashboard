.class Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1$1;
.super Ljava/lang/Object;
.source "HomeMainSearchFragmentPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1;Ljava/util/List;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1$1;->b:Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "HomeMainSearchFragmentPresenter"

    const-string v1, "startLoadHistory call back main thread"

    .line 121
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1$1;->b:Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1;->a:Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run \u5f53\u524dJava\u641c\u7d22\u5386\u53f2\u4e3a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1$1;->b:Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1;->a:Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/home/view/a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/search/home/view/a;->updateSearchHistory(Ljava/util/List;)V

    :cond_0
    return-void
.end method
