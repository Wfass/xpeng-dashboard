.class Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment$1;
.super Ljava/lang/Object;
.source "GuessLikeListFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 43
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->item_rank_album:I

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->access$000(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;)Lblw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lblw;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-nez p1, :cond_0

    .line 47
    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "/program/fragment/sub/detail"

    const-string v1, "GUESS"

    const-string v2, ""

    invoke-static {p2, v0, p1, v1, v2}, Lbmz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->access$100(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->b(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    goto :goto_0

    :cond_1
    const-string p1, "GuessLikeListFragment"

    const-string p2, "playControl call null object"

    .line 54
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
