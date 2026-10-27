.class Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment$1;
.super Ljava/lang/Object;
.source "AlbumMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment$1;->a:Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment$1;->a:Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->access$000(Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;)Lcom/xiaopeng/musicradio/commonui/adapter/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    .line 55
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->isNotPlayable()Z

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

    .line 73
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbrn;->f(Ljava/lang/String;)V

    .line 74
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 75
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "extra_album_name"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment$1;->a:Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "/usbview/usb_album_detail_fragment"

    invoke-static {p2, v0, p1}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "usb_album_prefix_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbrp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "3000"

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 64
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbne;->b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 66
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bl;->a(Ljava/util/Collection;)I

    move-result v1

    .line 68
    invoke-static {}, Lbnc;->e()Lbng;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->e()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v1, v3}, Lbng;->c(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 69
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbrn;->d(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
