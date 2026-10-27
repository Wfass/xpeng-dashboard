.class Lbio$2$1;
.super Ljava/lang/Object;
.source "QqMusicPlayHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbio$2;->a(Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbio$2;


# direct methods
.method constructor <init>(Lbio$2;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lbio$2$1;->a:Lbio$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 231
    iget-object v0, p0, Lbio$2$1;->a:Lbio$2;

    iget-object v0, v0, Lbio$2;->b:Lbio;

    invoke-virtual {v0}, Lbio;->h()Lbae;

    move-result-object v0

    iget-object v1, p0, Lbio$2$1;->a:Lbio$2;

    iget-object v1, v1, Lbio$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbae;->c(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lbio$2$1;->a:Lbio$2;

    iget-object v1, v1, Lbio$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lbio$2$1;->a:Lbio$2;

    iget-object v1, v1, Lbio$2;->b:Lbio;

    invoke-virtual {v1}, Lbio;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "run: hash = %s, from = %d"

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget-object v1, p0, Lbio$2$1;->a:Lbio$2;

    iget-object v1, v1, Lbio$2;->b:Lbio;

    invoke-virtual {v1}, Lbio;->h()Lbae;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lbae;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    :cond_0
    return-void
.end method
