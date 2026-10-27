.class Lcom/xiaopeng/musicradio/program/model/dui/a$2$1;
.super Ljava/lang/Object;
.source "DuiProgramMediaModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/model/dui/a$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaopeng/musicradio/program/model/dui/a$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/model/dui/a$2;Ljava/util/List;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$2$1;->b:Lcom/xiaopeng/musicradio/program/model/dui/a$2;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$2$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reading_album_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$2$1;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;-><init>()V

    .line 132
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$2$1;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setId(J)V

    .line 133
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$2$1;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setTitle(Ljava/lang/String;)V

    .line 134
    new-instance v2, Lbms$a;

    invoke-direct {v2}, Lbms$a;-><init>()V

    .line 135
    invoke-virtual {v2, v0}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    const/4 v2, 0x1

    .line 136
    invoke-virtual {v0, v2}, Lbms$a;->a(Z)Lbms$a;

    move-result-object v0

    const/16 v2, 0xa

    .line 137
    invoke-virtual {v0, v2}, Lbms$a;->b(I)Lbms$a;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v1}, Lbms$a;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lbms$a;

    move-result-object v0

    const/16 v1, 0x14

    .line 139
    invoke-virtual {v0, v1}, Lbms$a;->b(I)Lbms$a;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lbms$a;->a()Lbms;

    move-result-object v0

    .line 141
    invoke-static {}, Layg;->a()Layg;

    move-result-object v1

    invoke-virtual {v1}, Layg;->c()V

    .line 142
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmt;->a(Lass;)V

    .line 144
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ag;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ag;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
