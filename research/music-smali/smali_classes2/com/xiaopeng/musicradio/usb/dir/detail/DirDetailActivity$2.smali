.class Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity$2;
.super Ljava/lang/Object;
.source "DirDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity$2;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity$2;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->access$000(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;)Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object p1

    .line 155
    sget v0, Lbez$g;->bt_play_all:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity$2;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->access$100(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;)Ljava/util/List;

    move-result-object p1

    .line 157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usb_dir_prefix_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity$2;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->access$200(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3000"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bl;->a(Ljava/util/Collection;)I

    move-result v1

    .line 161
    invoke-static {}, Lbnc;->e()Lbng;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v1, v3}, Lbng;->d(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 163
    :cond_0
    sget v0, Lbez$g;->bt_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->pause()V

    goto :goto_0

    .line 165
    :cond_1
    sget v0, Lbez$g;->bt_continue_all:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 166
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    :cond_2
    :goto_0
    return-void
.end method
