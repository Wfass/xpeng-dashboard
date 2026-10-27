.class Lcom/xiaopeng/musicradio/program/model/dui/a$1$1;
.super Ljava/lang/Object;
.source "DuiProgramMediaModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/model/dui/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaopeng/musicradio/program/model/dui/a$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/model/dui/a$1;Ljava/util/List;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$1$1;->b:Lcom/xiaopeng/musicradio/program/model/dui/a$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$1$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$1$1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 91
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v0, v3

    .line 95
    :cond_1
    invoke-static {}, Layg;->a()Layg;

    move-result-object v1

    invoke-virtual {v1}, Layg;->c()V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reading_album_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$1$1;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v4, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-direct {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;-><init>()V

    .line 98
    iget-object v5, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$1$1;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setId(J)V

    .line 99
    iget-object v5, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$1$1;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setTitle(Ljava/lang/String;)V

    .line 100
    new-instance v0, Lbms$a;

    invoke-direct {v0}, Lbms$a;-><init>()V

    .line 101
    invoke-virtual {v0, v1}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v3}, Lbms$a;->a(Z)Lbms$a;

    move-result-object v0

    const/16 v1, 0xa

    .line 103
    invoke-virtual {v0, v1}, Lbms$a;->b(I)Lbms$a;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v4}, Lbms$a;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lbms$a;

    move-result-object v0

    const/16 v1, 0x14

    .line 105
    invoke-virtual {v0, v1}, Lbms$a;->b(I)Lbms$a;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lbms$a;->a()Lbms;

    move-result-object v0

    .line 107
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmt;->a(Lass;)V

    .line 109
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ag;

    invoke-direct {v0, v2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ag;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
