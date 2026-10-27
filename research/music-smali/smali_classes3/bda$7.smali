.class Lbda$7;
.super Ljava/lang/Object;
.source "NetRadioOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbda;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbda;


# direct methods
.method constructor <init>(Lbda;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lbda$7;->a:Lbda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 309
    iget-object v0, p0, Lbda$7;->a:Lbda;

    invoke-static {v0}, Lbda;->a(Lbda;)Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 311
    iget-object v1, p0, Lbda$7;->a:Lbda;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    invoke-static {v1, v0}, Lbda;->a(Lbda;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 312
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aa;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aa;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lbda$7;->a:Lbda;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbda;->a(Lbda;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    :goto_0
    return-void
.end method
