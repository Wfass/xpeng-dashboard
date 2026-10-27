.class Lbmq$2;
.super Ljava/lang/Object;
.source "ReadingRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmq;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbmq;


# direct methods
.method constructor <init>(Lbmq;I)V
    .locals 0

    .line 74
    iput-object p1, p0, Lbmq$2;->b:Lbmq;

    iput p2, p0, Lbmq$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 77
    iget-object v0, p0, Lbmq$2;->b:Lbmq;

    invoke-static {v0}, Lbmq;->a(Lbmq;)Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao$Properties;->UpdateTime:Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    iget v1, p0, Lbmq$2;->a:I

    add-int/lit16 v1, v1, -0x400

    .line 78
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lbmq$2;->b:Lbmq;

    invoke-static {v1}, Lbmq;->a(Lbmq;)Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;->deleteInTx(Ljava/lang/Iterable;)V

    .line 81
    new-instance v1, Lbmq$2$1;

    invoke-direct {v1, p0, v0}, Lbmq$2$1;-><init>(Lbmq$2;Ljava/util/List;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
