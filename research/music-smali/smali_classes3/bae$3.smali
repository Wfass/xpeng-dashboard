.class Lbae$3;
.super Ljava/lang/Object;
.source "MusicInfoOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbae;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic c:Z

.field final synthetic d:Lbae;


# direct methods
.method constructor <init>(Lbae;ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
    .locals 0

    .line 170
    iput-object p1, p0, Lbae$3;->d:Lbae;

    iput-boolean p2, p0, Lbae$3;->a:Z

    iput-object p3, p0, Lbae$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iput-boolean p4, p0, Lbae$3;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 173
    iget-boolean v0, p0, Lbae$3;->a:Z

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "MusicInfoOperation"

    if-nez v0, :cond_0

    .line 174
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lbae$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lbae$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lbae$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lbae$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "save:id = %s,name = %s,from = %d,ct = %d"

    invoke-static {v6, v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 176
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lbae$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    iget-object v5, p0, Lbae$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v4, p0, Lbae$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v3, p0, Lbae$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget-boolean v2, p0, Lbae$3;->c:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lbae$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "saveAsync: id = %s, name = %s , album = %s, musicFrom = %d, updateOnly = %s, createTime = %d "

    invoke-static {v6, v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :goto_0
    iget-object v0, p0, Lbae$3;->d:Lbae;

    iget-object v1, p0, Lbae$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-static {v0, v1}, Lbae;->a(Lbae;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method
