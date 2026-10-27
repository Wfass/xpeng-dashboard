.class Lcom/xiaopeng/musicradio/service/NetRadioMineService$2;
.super Ljava/lang/Object;
.source "NetRadioMineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/NetRadioMineService;->getHistoryNetRadioList(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/datalist/f;

.field final synthetic b:Landroidx/lifecycle/r;

.field final synthetic c:Lcom/xiaopeng/musicradio/service/NetRadioMineService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/NetRadioMineService;Lcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/r;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$2;->c:Lcom/xiaopeng/musicradio/service/NetRadioMineService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$2;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$2;->b:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 61
    invoke-static {}, Lbcy;->a()Lbcy;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$2;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v1, v1, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$2;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget-wide v2, v2, Lcom/xiaopeng/musicradio/datalist/f;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lbcy;->a(IJ)Ljava/util/List;

    move-result-object v8

    .line 63
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$2;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v1, v1, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-eqz v5, :cond_1

    .line 64
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getCacheTime()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    move-wide v6, v0

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$2;->b:Landroidx/lifecycle/r;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$2;->a:Lcom/xiaopeng/musicradio/datalist/f;

    const-string v9, "getHistoryNetRadioList"

    invoke-static/range {v4 .. v9}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;ZJLjava/util/List;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-void
.end method
