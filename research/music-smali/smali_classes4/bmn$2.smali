.class Lbmn$2;
.super Ljava/lang/Object;
.source "ProgramCollectManager.java"

# interfaces
.implements Lbdo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmn;->b(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

.field final synthetic b:Z

.field final synthetic c:Lbmn;


# direct methods
.method constructor <init>(Lbmn;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;Z)V
    .locals 0

    .line 135
    iput-object p1, p0, Lbmn$2;->c:Lbmn;

    iput-object p2, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    iput-boolean p3, p0, Lbmn$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "ProgramCollectManager"

    const-string v1, "onLoginFail: "

    .line 189
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    .line 191
    new-instance v1, Lasj$x;

    iget-object v2, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lasj$x;-><init>(JZLcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const-string p1, "ProgramCollectManager"

    const-string v0, "onLogin: "

    .line 138
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v0

    invoke-virtual {v0}, Lbmp;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 140
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v0, Lbue$a;->program_collect_top:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object p1

    .line 142
    new-instance v0, Lasj$x;

    iget-object v1, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lasj$x;-><init>(JZLcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void

    .line 145
    :cond_0
    iget-boolean v0, p0, Lbmn$2;->b:Z

    if-eqz v0, :cond_2

    .line 146
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object v0

    iget-object v1, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbmq;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "saveAsync containsAlbumIdName"

    .line 147
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object p1

    iget-object v0, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {p1, v0}, Lbmq;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    .line 149
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object p1

    iget-object v0, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {p1, v0}, Lbmp;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object p1

    iget-object v0, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v0

    new-instance v2, Lbmn$2$1;

    invoke-direct {v2, p0}, Lbmn$2$1;-><init>(Lbmn$2;)V

    new-instance v3, Lbmn$2$2;

    invoke-direct {v3, p0}, Lbmn$2$2;-><init>(Lbmn$2;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lbmq;->a(JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-string v0, "saveAsync not News"

    .line 167
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object p1

    iget-object v0, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {p1, v0}, Lbmp;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    .line 170
    :goto_0
    iget-object p1, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object p1

    .line 171
    new-instance v0, Lasj$x;

    iget-object v1, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p1}, Lasj$x;-><init>(JZLcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 173
    iget-object p1, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->isBipartite()Z

    move-result p1

    if-nez p1, :cond_3

    .line 174
    invoke-static {}, Lare;->d()Lare;

    move-result-object p1

    iget-object v0, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-static {v0}, Lazg;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lare;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    .line 175
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object p1

    invoke-virtual {p1}, Lbdy;->a()V

    .line 178
    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "result"

    const-string v1, "add"

    .line 179
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "reading"

    .line 180
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "voiceid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "voice"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    const-string v1, "person"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p1}, Lbrw;->c(Ljava/util/Map;)V

    return-void
.end method
