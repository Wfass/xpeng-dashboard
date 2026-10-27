.class Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailActivity$1;
.super Ljava/lang/Object;
.source "SingerDetailActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailActivity$1;->a:Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    if-gez p2, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailActivity$1;->a:Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailActivity;->getMusicInfos()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailActivity$1;->a:Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailActivity;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailActivity;->getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-static {}, Lbnc;->e()Lbng;

    move-result-object v1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1, p1, v0, p2, v2}, Lbng;->b(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {}, Lbnc;->e()Lbng;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lbng;->b(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_3
    :goto_0
    return-void
.end method
