.class Lbfa$3;
.super Lbkv;
.source "MusicAisuggest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbfa;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectDetailResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbfa;


# direct methods
.method constructor <init>(Lbfa;Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lbfa$3;->b:Lbfa;

    iput-object p2, p0, Lbfa$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 201
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "real open openMusicAlbum failed id = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lbfa$3;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicAisuggest"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectDetailResult;)V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "real open openMusicAlbum id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbfa$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAisuggest"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectDetailResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectDetailResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectDetailResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lbjp;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 192
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectDetailResult;

    invoke-virtual {p0, p1}, Lbfa$3;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectDetailResult;)V

    return-void
.end method
