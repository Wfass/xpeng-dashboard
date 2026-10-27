.class Lbbu$1;
.super Ljava/lang/Object;
.source "MusicHistoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic b:I

.field final synthetic c:Lbbu;


# direct methods
.method constructor <init>(Lbbu;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 0

    .line 52
    iput-object p1, p0, Lbbu$1;->c:Lbbu;

    iput-object p2, p0, Lbbu$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iput p3, p0, Lbbu$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveHistory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbbu$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicHistoryManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lbbu$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ag;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {}, Lbal;->a()Lbal;

    move-result-object v1

    iget-object v2, p0, Lbbu$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbal;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->setUrl(Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-static {}, Lbal;->a()Lbal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbal;->a(Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;)V

    .line 64
    iget-object v0, p0, Lbbu$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget v1, p0, Lbbu$1;->b:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    move-result-object v0

    .line 65
    invoke-static {}, Lazt;->a()Lazt;

    move-result-object v1

    iget v2, p0, Lbbu$1;->b:I

    invoke-virtual {v1, v2}, Lazt;->b(I)Lazs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lazs;->e(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V

    return-void
.end method
