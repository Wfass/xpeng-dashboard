.class Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1;
.super Ljava/lang/Object;
.source "SingleLrcPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a(Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1;->b:Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/sdcard/xiaopengmusic/lrc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/z;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 117
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1$1;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1$1;-><init>(Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1$2;-><init>(Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
