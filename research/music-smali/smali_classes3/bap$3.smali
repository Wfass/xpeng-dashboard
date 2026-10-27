.class Lbap$3;
.super Lbkv;
.source "KugouHistoryMigration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbap;->c(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lbap;


# direct methods
.method constructor <init>(Lbap;ILjava/util/List;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lbap$3;->c:Lbap;

    iput p2, p0, Lbap$3;->a:I

    iput-object p3, p0, Lbap$3;->b:Ljava/util/List;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " s = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tryCount = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lbap$3;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KugouHistoryMigration"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lbap$3;->c:Lbap;

    iget-object p2, p0, Lbap$3;->b:Ljava/util/List;

    iget v0, p0, Lbap$3;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Lbap;->c(Lbap;Ljava/util/List;I)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 184
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 189
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getOriginId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bt;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "revertMusicListToV2 response: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KugouHistoryMigration"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Lbaq;->a()Lbaq;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lbaq;->a(Ljava/util/List;Ljava/util/List;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 180
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;

    invoke-virtual {p0, p1}, Lbap$3;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;)V

    return-void
.end method
