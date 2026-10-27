.class public Layd;
.super Ljava/lang/Object;
.source "MusicServiceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layd$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Layd$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Layd;-><init>()V

    return-void
.end method

.method public static a()Layd;
    .locals 1

    .line 29
    invoke-static {}, Layd$a;->a()Layd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Lcom/xiaopeng/musicradio/music/api/bean/a;
    .locals 5

    .line 34
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/xiaopeng/musicradio/music/api/bean/a;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/music/api/bean/a;-><init>()V

    .line 36
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/a;->e(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 39
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/a;->b(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/a;->b(Z)V

    .line 44
    :goto_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/a;->a(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/a;->b(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getLrcContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/a;->d(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c()Lcom/xiaopeng/musicradio/model/bluetooth/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 51
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v0

    invoke-virtual {v0}, Lbaf;->b()Lbae;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbae;->h(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v0

    .line 52
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/music/api/bean/a;->c(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/api/bean/a;->a(Z)V

    .line 56
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/api/bean/a;->a(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/api/bean/a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getLogo()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/api/bean/a;->c(Ljava/lang/String;)V

    .line 62
    :goto_1
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/api/bean/a;->c()Ljava/lang/String;

    .line 63
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/api/bean/a;->a()Ljava/lang/String;

    return-object v1
.end method
