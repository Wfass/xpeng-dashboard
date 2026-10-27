.class Lcom/xiaopeng/musicradio/model/dui/e$4;
.super Ljava/lang/Object;
.source "DuiMusicMediaModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e;->a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;Lio/reactivex/disposables/CompositeDisposable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/model/dui/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/e;I)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$4;->b:Lcom/xiaopeng/musicradio/model/dui/e;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/dui/e$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V
    .locals 4

    .line 724
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getParams()Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 725
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u5faa\u73af"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 727
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSearchType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSearchType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->a(I)V

    goto :goto_1

    .line 728
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(I)V

    .line 733
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSongList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 734
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/e$4$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e$4$1;-><init>(Lcom/xiaopeng/musicradio/model/dui/e$4;Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    .line 750
    :cond_3
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/an;->a(I)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 721
    check-cast p1, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e$4;->a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V

    return-void
.end method
