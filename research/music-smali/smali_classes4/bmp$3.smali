.class Lbmp$3;
.super Ljava/lang/Object;
.source "ReadLoveOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmp;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmp;


# direct methods
.method constructor <init>(Lbmp;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lbmp$3;->a:Lbmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 99
    iget-object v0, p0, Lbmp$3;->a:Lbmp;

    invoke-static {v0}, Lbmp;->a(Lbmp;)Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 101
    iget-object v1, p0, Lbmp$3;->a:Lbmp;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-static {v1, v0}, Lbmp;->a(Lbmp;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    .line 102
    new-instance v0, Lasj$y;

    invoke-direct {v0}, Lasj$y;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lbmp$3;->a:Lbmp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbmp;->a(Lbmp;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    :goto_0
    return-void
.end method
