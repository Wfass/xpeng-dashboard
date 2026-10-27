.class Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$2;
.super Ljava/lang/Object;
.source "MsRankLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$2;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 7

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$2;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->access$100(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)Lbiu;

    move-result-object v0

    invoke-virtual {v0}, Lbiu;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 126
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbjl;->i(ILjava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$2;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankType()I

    move-result v4

    const/4 v5, 0x2

    .line 145
    invoke-static/range {v0 .. v5}, Lbjp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankType()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    .line 139
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object p1

    invoke-virtual {p1}, Lbak;->b()Lbaj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 140
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lbjl;->h(ILjava/lang/String;)V

    .line 141
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Lbjl;->u(I)V

    :goto_0
    return-void
.end method
