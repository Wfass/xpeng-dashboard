.class Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$7;
.super Ljava/lang/Object;
.source "SongMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/common/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$7;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    if-gez p1, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$7;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$1000(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    goto :goto_3

    .line 201
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "3000"

    const-string v2, "usb_song_prefix_"

    .line 202
    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v2

    invoke-virtual {v2}, Lbid;->g()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v3

    invoke-virtual {v3}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    .line 206
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const-string v5, ""

    if-nez v3, :cond_2

    move-object v3, v5

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v4, :cond_3

    goto :goto_1

    .line 208
    :cond_3
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v5

    .line 209
    :goto_1
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    invoke-static {}, Lbnc;->e()Lbng;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, p1, v3}, Lbng;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_2

    .line 212
    :cond_4
    invoke-static {}, Lbnc;->e()Lbng;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1, v4}, Lbng;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 214
    :goto_2
    invoke-static {}, Lbrn;->a()V

    :cond_5
    :goto_3
    return-void
.end method
