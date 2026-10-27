.class Lcom/xiaopeng/musicradio/service/ProgramMineService$2;
.super Ljava/lang/Object;
.source "ProgramMineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/ProgramMineService;->getHistoryProgramList(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/datalist/f;

.field final synthetic b:Landroidx/lifecycle/r;

.field final synthetic c:Lcom/xiaopeng/musicradio/service/ProgramMineService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/ProgramMineService;Lcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/r;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$2;->c:Lcom/xiaopeng/musicradio/service/ProgramMineService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$2;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$2;->b:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 77
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$2;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v1, v1, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$2;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget-wide v2, v2, Lcom/xiaopeng/musicradio/datalist/f;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lbmo;->a(IJ)Ljava/util/List;

    move-result-object v0

    .line 79
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    .line 82
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v2

    const-string v3, "favourite"

    .line 83
    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setFromSource(Ljava/lang/String;)V

    .line 84
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$2;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v3, v3, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    if-lt v2, v3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTs()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x0

    :goto_2
    move-wide v3, v0

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$2;->b:Landroidx/lifecycle/r;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$2;->a:Lcom/xiaopeng/musicradio/datalist/f;

    const-string v6, "getHistoryProgramList"

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;ZJLjava/util/List;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-void
.end method
