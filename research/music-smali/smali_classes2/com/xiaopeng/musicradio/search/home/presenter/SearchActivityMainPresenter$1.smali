.class Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter$1;
.super Ljava/lang/Object;
.source "SearchActivityMainPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter$1;->a:Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 4

    .line 186
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$e;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/b$e;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter$1;->a:Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const-string p1, "SearchActivityMainPresenter"

    const-string v0, "closeVoiceSearch"

    .line 188
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter$1;->a:Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/home/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/home/view/b;->exit()V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 183
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchActivityMainPresenter$1;->a(Ljava/lang/Long;)V

    return-void
.end method
