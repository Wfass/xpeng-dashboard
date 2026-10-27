.class Laqo$3;
.super Lbkv;
.source "ProgramAisuggest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqo;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Laqo;


# direct methods
.method constructor <init>(Laqo;Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Laqo$3;->b:Laqo;

    iput-object p2, p0, Laqo$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replayRdAlbum err: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAisuggest"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 192
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;

    invoke-virtual {p0, p1}, Laqo$3;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;)V
    .locals 4

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reading_album_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laqo$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lbmq;->a(J)Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->getSort()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 202
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MusicAisuggest"

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    new-instance v2, Lbms$a;

    invoke-direct {v2}, Lbms$a;-><init>()V

    .line 204
    invoke-virtual {v2, v0}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v2

    .line 205
    invoke-virtual {v2, v1}, Lbms$a;->b(Ljava/lang/String;)Lbms$a;

    move-result-object v1

    .line 206
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lbms$a;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lbms$a;

    move-result-object p1

    const/4 v1, 0x1

    .line 207
    invoke-virtual {p1, v1}, Lbms$a;->a(Z)Lbms$a;

    move-result-object p1

    .line 209
    new-instance v1, Laqo$3$1;

    invoke-direct {v1, p0, p1}, Laqo$3$1;-><init>(Laqo$3;Lbms$a;)V

    .line 222
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1, v1}, Lbmt;->a(Lass;)V

    .line 224
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->y()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->n()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 226
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ag;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ag;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
