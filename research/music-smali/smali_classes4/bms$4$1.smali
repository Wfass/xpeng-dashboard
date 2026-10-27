.class Lbms$4$1;
.super Ljava/lang/Object;
.source "ReadingMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbms$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;

.field final synthetic b:Lbms$4;


# direct methods
.method constructor <init>(Lbms$4;Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lbms$4$1;->b:Lbms$4;

    iput-object p2, p0, Lbms$4$1;->a:Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v6, p0

    .line 374
    iget-object v0, v6, Lbms$4$1;->a:Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;

    if-eqz v0, :cond_4

    .line 376
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->getTrackId()J

    move-result-wide v10

    .line 377
    iget-object v0, v6, Lbms$4$1;->a:Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->getAlbumId()J

    move-result-wide v8

    .line 378
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v0

    invoke-virtual {v0}, Lbmr;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v7

    iget-object v0, v6, Lbms$4$1;->b:Lbms$4;

    iget v12, v0, Lbms$4;->a:I

    iget-object v0, v6, Lbms$4$1;->b:Lbms$4;

    iget v13, v0, Lbms$4;->b:I

    new-instance v14, Lbms$4$1$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-wide v2, v10

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lbms$4$1$1;-><init>(Lbms$4$1;JJ)V

    invoke-virtual/range {v7 .. v14}, Lbmv;->a(JJIILbkv;)Lcom/lzy/okgo/adapter/Call;

    goto/16 :goto_1

    :cond_0
    const-string v0, "ReadingMediaSource"

    const-string v1, "HeadSpeechMgr.getInstance().getListData() not empty, use it!"

    .line 443
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v2

    invoke-virtual {v2}, Lbmr;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 447
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v3

    invoke-virtual {v3}, Lbmr;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "continue"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 448
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 449
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v12

    cmp-long v5, v12, v10

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v12

    cmp-long v5, v12, v8

    if-nez v5, :cond_1

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use localList, and begin from aid:tid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v4

    .line 456
    :cond_2
    iget-object v3, v6, Lbms$4$1;->b:Lbms$4;

    iget-object v3, v3, Lbms$4;->e:Lbms;

    invoke-virtual {v3, v1}, Lbms;->a(Ljava/util/List;)V

    if-nez v2, :cond_3

    .line 458
    iget-object v2, v6, Lbms$4$1;->b:Lbms$4;

    iget-object v2, v2, Lbms$4;->e:Lbms;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbms;->a(I)V

    .line 459
    iget-object v2, v6, Lbms$4$1;->b:Lbms$4;

    iget-object v2, v2, Lbms$4;->e:Lbms;

    invoke-virtual {v2, v3}, Lbms;->c(Z)V

    const-string v2, "use localList, no target tid, begin from 0"

    .line 460
    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 463
    iget-object v3, v6, Lbms$4$1;->b:Lbms$4;

    iget-object v3, v3, Lbms$4;->e:Lbms;

    invoke-virtual {v3, v2}, Lbms;->a(I)V

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use localList, target tid find, begin from index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    :goto_0
    iget-object v0, v6, Lbms$4$1;->b:Lbms$4;

    iget-object v12, v0, Lbms$4;->e:Lbms;

    iget-object v0, v6, Lbms$4$1;->b:Lbms$4;

    iget-boolean v13, v0, Lbms$4;->c:Z

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v16

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Lbms;->a(ZIIILjava/util/List;)V

    goto :goto_1

    .line 470
    :cond_4
    iget-object v0, v6, Lbms$4$1;->b:Lbms$4;

    iget-object v0, v0, Lbms$4;->e:Lbms;

    iget-object v1, v6, Lbms$4$1;->b:Lbms$4;

    iget-boolean v1, v1, Lbms$4;->c:Z

    iget-object v2, v6, Lbms$4$1;->b:Lbms$4;

    iget v2, v2, Lbms$4;->a:I

    iget-object v3, v6, Lbms$4$1;->b:Lbms$4;

    iget v3, v3, Lbms$4;->b:I

    iget-object v4, v6, Lbms$4$1;->b:Lbms$4;

    iget-object v4, v4, Lbms$4;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lbms;->a(Lbms;ZIILjava/lang/String;)V

    :goto_1
    return-void
.end method
