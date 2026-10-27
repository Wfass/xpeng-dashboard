.class Lbms$4$1$1;
.super Lbkv;
.source "ReadingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbms$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lbms$4$1;


# direct methods
.method constructor <init>(Lbms$4$1;JJ)V
    .locals 0

    .line 379
    iput-object p1, p0, Lbms$4$1$1;->c:Lbms$4$1;

    iput-wide p2, p0, Lbms$4$1$1;->a:J

    iput-wide p4, p0, Lbms$4$1$1;->b:J

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 438
    iget-object v0, p0, Lbms$4$1$1;->c:Lbms$4$1;

    iget-object v0, v0, Lbms$4$1;->b:Lbms$4;

    iget-object v0, v0, Lbms$4;->e:Lbms;

    iget-object v1, p0, Lbms$4$1$1;->c:Lbms$4$1;

    iget-object v1, v1, Lbms$4$1;->b:Lbms$4;

    iget-boolean v1, v1, Lbms$4;->c:Z

    invoke-virtual {v0, v1, p1, p2}, Lbms;->a(ZILjava/lang/String;)V

    .line 439
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 379
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;

    invoke-virtual {p0, p1}, Lbms$4$1$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V
    .locals 10

    const-string v0, "ReadingMediaSource"

    const-string v1, "response: "

    .line 382
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 385
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 386
    sget-object v6, Lcom/xiaopeng/musicradio/common/f;->b:Ljava/lang/String;

    invoke-static {v5, v6, v3}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 388
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v6

    iget-wide v8, p0, Lbms$4$1$1;->a:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v6

    iget-wide v8, p0, Lbms$4$1$1;->b:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    move-object v4, v5

    goto :goto_0

    .line 395
    :cond_1
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v2

    invoke-virtual {v2}, Lbmr;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v5, "continue"

    if-nez v2, :cond_4

    .line 397
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object p1

    invoke-virtual {p1}, Lbmr;->b()Ljava/util/List;

    move-result-object v1

    .line 398
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    if-eqz v2, :cond_2

    .line 400
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v6

    iget-wide v8, p0, Lbms$4$1$1;->a:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v6

    iget-wide v8, p0, Lbms$4$1$1;->b:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    goto :goto_1

    :cond_3
    move-object v2, v4

    .line 407
    :goto_1
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object p1

    invoke-virtual {p1}, Lbmr;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    move-object v9, v1

    move-object v3, v2

    goto :goto_2

    .line 413
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v3, v4

    .line 417
    :cond_5
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbmr;->a(Ljava/util/List;)V

    .line 418
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lbmr;->a(Ljava/lang/String;)V

    const-string p1, "save list data!!"

    .line 419
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    move-object v9, v1

    .line 422
    :goto_2
    iget-object p1, p0, Lbms$4$1$1;->c:Lbms$4$1;

    iget-object p1, p1, Lbms$4$1;->b:Lbms$4;

    iget-object p1, p1, Lbms$4;->e:Lbms;

    invoke-virtual {p1, v9}, Lbms;->a(Ljava/util/List;)V

    if-nez v3, :cond_7

    .line 424
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HEADSPEECH history track="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lbms$4$1$1;->a:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "not found set to 0 index!listsize="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iget-object p1, p0, Lbms$4$1$1;->c:Lbms$4$1;

    iget-object p1, p1, Lbms$4$1;->b:Lbms$4;

    iget-object p1, p1, Lbms$4;->e:Lbms;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbms;->a(I)V

    goto :goto_3

    .line 428
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HEADSPEECH begin from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    iget-object p1, p0, Lbms$4$1$1;->c:Lbms$4$1;

    iget-object p1, p1, Lbms$4$1;->b:Lbms$4;

    iget-object p1, p1, Lbms$4;->e:Lbms;

    invoke-interface {v9, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lbms;->a(I)V

    .line 433
    :goto_3
    iget-object p1, p0, Lbms$4$1$1;->c:Lbms$4$1;

    iget-object p1, p1, Lbms$4$1;->b:Lbms$4;

    iget-object v4, p1, Lbms$4;->e:Lbms;

    iget-object p1, p0, Lbms$4$1$1;->c:Lbms$4$1;

    iget-object p1, p1, Lbms$4$1;->b:Lbms$4;

    iget-boolean v5, p1, Lbms$4;->c:Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual/range {v4 .. v9}, Lbms;->a(ZIIILjava/util/List;)V

    return-void
.end method
