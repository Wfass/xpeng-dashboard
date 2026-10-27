.class Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;
.super Ljava/lang/Object;
.source "SearchResultMixPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;->a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;->a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v1

    invoke-virtual {v1}, Lbnz;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1$1;

    invoke-direct {v5, p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1$1;-><init>(Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a(Ljava/lang/String;IIILbkv;)V

    return-void
.end method
