.class Lbms$2;
.super Lbkv;
.source "ReadingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbms;->b(ZIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lbms;


# direct methods
.method constructor <init>(Lbms;ZI)V
    .locals 0

    .line 275
    iput-object p1, p0, Lbms$2;->c:Lbms;

    iput-boolean p2, p0, Lbms$2;->a:Z

    iput p3, p0, Lbms$2;->b:I

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lbms$2;->c:Lbms;

    iget-boolean v1, p0, Lbms$2;->a:Z

    invoke-virtual {v0, v1, p1, p2}, Lbms;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 275
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;

    invoke-virtual {p0, p1}, Lbms$2;->a(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;)V
    .locals 9

    .line 278
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 279
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 280
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 283
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;->isFromCache()Z

    move-result v0

    const-string v1, "ReadingMediaSource"

    if-eqz v0, :cond_1

    const-string p1, "is cache data,not udpated, just return"

    .line 284
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before channelId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbms$2;->c:Lbms;

    invoke-static {v2}, Lbms;->a(Lbms;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", relativeId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbms$2;->c:Lbms;

    invoke-static {v3}, Lbms;->b(Lbms;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 289
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    .line 291
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lbms$2;->c:Lbms;

    invoke-static {v6}, Lbms;->a(Lbms;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move-object v0, v3

    .line 296
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTrackInfoBos()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTrackInfoBos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 298
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTrackInfoBos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;

    .line 300
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result v4

    .line 301
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getRelativeId()Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-static {v3, v4, v5}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v3

    .line 299
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_4
    iget-object p1, p0, Lbms$2;->c:Lbms;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/xiaopeng/musicradio/utils/aj;->a(J)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lbms;->a(Ljava/lang/String;)V

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response: =========== "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object p1, p0, Lbms$2;->c:Lbms;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result v3

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lbms;->a(Lbms;J)J

    .line 309
    :try_start_0
    iget-object p1, p0, Lbms$2;->c:Lbms;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getRelativeId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lbms;->b(Lbms;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after channelId:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbms$2;->c:Lbms;

    invoke-static {v3}, Lbms;->a(Lbms;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbms$2;->c:Lbms;

    invoke-static {v2}, Lbms;->b(Lbms;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-object v3, p0, Lbms$2;->c:Lbms;

    iget-boolean v4, p0, Lbms$2;->a:Z

    iget v5, p0, Lbms$2;->b:I

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTotal()I

    move-result p1

    div-int/lit8 v6, p1, 0xa

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTotal()I

    move-result v7

    invoke-virtual/range {v3 .. v8}, Lbms;->a(ZIIILjava/util/List;)V

    :cond_5
    :goto_1
    return-void
.end method
