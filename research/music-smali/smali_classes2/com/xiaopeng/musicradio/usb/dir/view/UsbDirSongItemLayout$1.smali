.class Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout$1;
.super Ljava/lang/Object;
.source "UsbDirSongItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout$1;->a:Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout$1;->a:Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->access$000(Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;)Ljava/util/List;

    move-result-object p1

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usb_dir_prefix_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout$1;->a:Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->access$100(Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3000"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {}, Lbnc;->e()Lbng;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout$1;->a:Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->access$200(Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout$1;->a:Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->access$200(Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    invoke-virtual {v1, p1, v0, v2, v3}, Lbng;->d(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {}, Lbnc;->e()Lbng;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout$1;->a:Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->access$200(Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lbng;->d(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 111
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout$1;->a:Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->access$300(Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout$1;->a:Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->access$100(Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbrn;->h(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
