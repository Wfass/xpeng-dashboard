.class Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment$2;
.super Ljava/lang/Object;
.source "SingerDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->access$100(Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;)Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object p1

    .line 92
    sget v0, Lbez$g;->bt_play_all:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->getMusicInfos()Ljava/util/List;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bl;->a(Ljava/util/Collection;)I

    move-result v1

    .line 98
    invoke-static {}, Lbnc;->e()Lbng;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v1, v3}, Lbng;->b(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->access$200(Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbrn;->b(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->access$300(Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbrn;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    sget v0, Lbez$g;->bt_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->pause()V

    goto :goto_0

    .line 104
    :cond_1
    sget v0, Lbez$g;->bt_continue_all:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 105
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    :cond_2
    :goto_0
    return-void
.end method
