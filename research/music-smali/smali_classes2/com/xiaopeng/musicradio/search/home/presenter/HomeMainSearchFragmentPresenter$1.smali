.class Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1;
.super Ljava/lang/Object;
.source "HomeMainSearchFragmentPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1;->a:Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "HomeMainSearchFragmentPresenter"

    const-string v1, "startLoadHistory in thread"

    .line 110
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaopeng/musicradio/search/logic/a;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    .line 114
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "startLoadHistory done in thread"

    .line 116
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1;->a:Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1$1;

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1$1;-><init>(Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter$1;Ljava/util/List;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
