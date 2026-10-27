.class Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout$1;
.super Ljava/lang/Object;
.source "DirItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout$1;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout$1;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->access$000(Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: mUsbMusicTreeBean.getPath() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout$1;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->access$000(Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SongItemLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout$1;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->access$000(Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_dir_path"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout$1;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/usbview/usb_dir_detail_fragment"

    invoke-static {v0, v1, p1}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout$1;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->access$000(Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbrn;->g(Ljava/lang/String;)V

    return-void
.end method
