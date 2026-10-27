.class Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$2;
.super Ljava/lang/Object;
.source "SearchResultMixPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;I)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$2;->b:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;

    iput p2, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$2;->b:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$2;->a:I

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v2

    invoke-virtual {v2}, Lbnz;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$2;->b:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a(Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;)I

    move-result v5

    new-instance v6, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$2$1;

    invoke-direct {v6, p0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$2$1;-><init>(Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$2;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a(ILjava/lang/String;IIILbkv;)V

    return-void
.end method
