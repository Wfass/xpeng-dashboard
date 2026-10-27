.class Lbao$3;
.super Ljava/lang/Object;
.source "TempMusicInfoOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbao;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic c:Lbao;


# direct methods
.method constructor <init>(Lbao;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lbao$3;->c:Lbao;

    iput p2, p0, Lbao$3;->a:I

    iput-object p3, p0, Lbao$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 147
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;-><init>()V

    .line 148
    iget v1, p0, Lbao$3;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->setMusicFrom(I)V

    .line 149
    iget-object v1, p0, Lbao$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->setFromTitle(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lbao$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->setHash(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lbao$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lbao$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->setMusicJson(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lbao$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lbao$3;->c:Lbao;

    invoke-static {v1}, Lbao;->a(Lbao;)Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method
