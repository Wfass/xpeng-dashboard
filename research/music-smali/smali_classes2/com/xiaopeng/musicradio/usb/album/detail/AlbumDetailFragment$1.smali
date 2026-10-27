.class Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment$1;
.super Ljava/lang/Object;
.source "AlbumDetailFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/common/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    if-gez p1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment;->getMusicInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 75
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment;->getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-static {}, Lbnc;->e()Lbng;

    move-result-object v2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v2, v0, v1, p1, v3}, Lbng;->c(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {}, Lbnc;->e()Lbng;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, p1, v3}, Lbng;->c(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 83
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment;->access$000(Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbrn;->d(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
