.class Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$3;
.super Ljava/lang/Object;
.source "MsRmLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 7

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->access$200(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)Lbgb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbgb;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$3;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v0 .. v6}, Lbjp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 152
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 154
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

    .line 155
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object p1

    invoke-virtual {p1}, Lbak;->b()Lbaj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    :goto_0
    return-void
.end method
