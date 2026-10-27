.class Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$3;
.super Ljava/lang/Object;
.source "GuessLikeLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 153
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->item_rank_album:I

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->b(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 157
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 158
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "/program/fragment/sub/detail"

    const-string v1, "GUESS"

    const-string v2, ""

    invoke-static {p2, v0, p1, v1, v2}, Lbmz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->b(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 161
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->c(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->b(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    .line 162
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbmx;->d(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbmx;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
