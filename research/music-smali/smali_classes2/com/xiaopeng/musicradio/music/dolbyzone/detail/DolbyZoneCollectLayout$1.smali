.class Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout$1;
.super Ljava/lang/Object;
.source "DolbyZoneCollectLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 8

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;)Lbga;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbga;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    goto/16 :goto_1

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->getStyleType()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->b(Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lbjp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->b(Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lbjp;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 96
    :cond_3
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 99
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbgs;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->getStyleType()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 104
    invoke-static {}, Lbjl;->o()V

    .line 105
    invoke-static {}, Lbjl;->l()V

    .line 106
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/utils/bd;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    goto :goto_0

    .line 107
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->getStyleType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 108
    invoke-static {}, Lbjl;->p()V

    .line 109
    invoke-static {}, Lbjl;->l()V

    .line 110
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/utils/bd;->m(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    :cond_7
    :goto_0
    if-eqz p1, :cond_8

    .line 113
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result v2

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->b(Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->getStyleType()I

    move-result p1

    if-ne p1, v0, :cond_8

    .line 116
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object p1

    invoke-virtual {p1}, Lbak;->b()Lbaj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    :cond_8
    :goto_1
    return-void
.end method
