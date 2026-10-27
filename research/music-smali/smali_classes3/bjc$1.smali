.class Lbjc$1;
.super Lbkv;
.source "NeteaseReplayUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjc;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic c:Lbjc;


# direct methods
.method constructor <init>(Lbjc;Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lbjc$1;->c:Lbjc;

    iput-object p2, p0, Lbjc$1;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;

    iput-object p3, p0, Lbjc$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " s = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NeteaseReplayUp"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NeteaseReplayUp"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p1, p0, Lbjc$1;->c:Lbjc;

    iget-object v0, p0, Lbjc$1;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbjc;->a(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lbjc$1;->c:Lbjc;

    iget-object v0, p0, Lbjc$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbjc;->c(Ljava/lang/String;)V

    return-void
.end method
