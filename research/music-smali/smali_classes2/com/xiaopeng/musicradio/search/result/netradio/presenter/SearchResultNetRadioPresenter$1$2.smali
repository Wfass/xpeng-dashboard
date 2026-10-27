.class Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;
.super Ljava/lang/Object;
.source "SearchResultNetRadioPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

.field final synthetic c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;->b:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/netradio/view/a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;->a(Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;->b(Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/search/result/netradio/view/a;->showLoading(ZII)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/netradio/view/a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;->c(Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;->d(Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/search/result/netradio/view/a;->updateData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V

    .line 58
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;->b:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter$1$2;->b:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 61
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbnz;->a(Z)V

    :cond_0
    return-void
.end method
