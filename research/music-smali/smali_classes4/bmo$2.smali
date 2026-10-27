.class Lbmo$2;
.super Ljava/lang/Object;
.source "ReadHistoryOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmo;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmo;


# direct methods
.method constructor <init>(Lbmo;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lbmo$2;->a:Lbmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 115
    iget-object v0, p0, Lbmo$2;->a:Lbmo;

    invoke-static {v0}, Lbmo;->a(Lbmo;)Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 117
    iget-object v1, p0, Lbmo$2;->a:Lbmo;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-static {v1, v0}, Lbmo;->a(Lbmo;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    .line 118
    new-instance v0, Lasj$w;

    invoke-direct {v0}, Lasj$w;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lbmo$2;->a:Lbmo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbmo;->a(Lbmo;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    :goto_0
    return-void
.end method
