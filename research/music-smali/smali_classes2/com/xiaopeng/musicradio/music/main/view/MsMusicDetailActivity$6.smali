.class Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$6;
.super Ljava/lang/Object;
.source "MsMusicDetailActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$6;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    if-gez p2, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$6;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0}, Lbii;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 223
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$6;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v1}, Lbii;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p2, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 236
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$6;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->access$500(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 230
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$6;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 232
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$6;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->access$400(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 233
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$6;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->recordItem()V

    :cond_4
    :goto_0
    return-void
.end method
