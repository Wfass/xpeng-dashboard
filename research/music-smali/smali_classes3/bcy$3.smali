.class Lbcy$3;
.super Ljava/lang/Object;
.source "NetRadioHistoryOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcy;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbcy;


# direct methods
.method constructor <init>(Lbcy;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lbcy$3;->a:Lbcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 109
    iget-object v0, p0, Lbcy$3;->a:Lbcy;

    invoke-static {v0}, Lbcy;->d(Lbcy;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 111
    iget-object v1, p0, Lbcy$3;->a:Lbcy;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    invoke-static {v1, v0}, Lbcy;->a(Lbcy;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 112
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$z;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$z;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lbcy$3;->a:Lbcy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbcy;->a(Lbcy;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    :goto_0
    return-void
.end method
