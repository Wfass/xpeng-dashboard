.class Lbmn$3;
.super Ljava/lang/Object;
.source "ProgramCollectManager.java"

# interfaces
.implements Lbdo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmn;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

.field final synthetic b:Lbmn;


# direct methods
.method constructor <init>(Lbmn;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lbmn$3;->b:Lbmn;

    iput-object p2, p0, Lbmn$3;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "ProgramCollectManager"

    const-string v1, "onLoginFail: "

    .line 230
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lbmn$3;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    .line 232
    new-instance v1, Lasj$x;

    iget-object v2, p0, Lbmn$3;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v0}, Lasj$x;-><init>(JZLcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const-string p1, "ProgramCollectManager"

    const-string v0, "onLogin: "

    .line 209
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object p1

    iget-object v0, p0, Lbmn$3;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lbmp;->b(J)V

    .line 211
    iget-object p1, p0, Lbmn$3;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object p1

    .line 212
    new-instance v0, Lasj$x;

    iget-object v1, p0, Lbmn$3;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lasj$x;-><init>(JZLcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 214
    iget-object p1, p0, Lbmn$3;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->isBipartite()Z

    move-result p1

    if-nez p1, :cond_0

    .line 215
    invoke-static {}, Lare;->d()Lare;

    move-result-object p1

    iget-object v0, p0, Lbmn$3;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-static {v0}, Lazg;->b(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lare;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    .line 216
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object p1

    invoke-virtual {p1}, Lbdy;->a()V

    .line 219
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "result"

    const-string v1, "cancel"

    .line 220
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "reading"

    .line 221
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lbmn$3;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "voiceid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lbmn$3;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "voice"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lbmn$3;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    const-string v1, "person"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {p1}, Lbrw;->c(Ljava/util/Map;)V

    return-void
.end method
