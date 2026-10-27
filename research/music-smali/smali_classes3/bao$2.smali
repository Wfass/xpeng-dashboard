.class Lbao$2;
.super Ljava/lang/Object;
.source "TempMusicInfoOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbao;->a(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lbao;


# direct methods
.method constructor <init>(Lbao;Ljava/util/List;I)V
    .locals 0

    .line 124
    iput-object p1, p0, Lbao$2;->c:Lbao;

    iput-object p2, p0, Lbao$2;->a:Ljava/util/List;

    iput p3, p0, Lbao$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v1, p0, Lbao$2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 129
    new-instance v3, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;

    invoke-direct {v3}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;-><init>()V

    .line 130
    iget v4, p0, Lbao$2;->b:I

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->setMusicFrom(I)V

    .line 131
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->setFromTitle(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->setHash(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 134
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->setMusicJson(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 136
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_0
    iget-object v1, p0, Lbao$2;->c:Lbao;

    invoke-static {v1}, Lbao;->a(Lbao;)Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    return-void
.end method
