.class Lbao$1;
.super Ljava/lang/Object;
.source "TempMusicInfoOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbao;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbao;


# direct methods
.method constructor <init>(Lbao;I)V
    .locals 0

    .line 66
    iput-object p1, p0, Lbao$1;->b:Lbao;

    iput p2, p0, Lbao$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 69
    iget-object v0, p0, Lbao$1;->b:Lbao;

    invoke-static {v0}, Lbao;->a(Lbao;)Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao$Properties;->MusicFrom:Lorg/greenrobot/greendao/Property;

    iget v2, p0, Lbao$1;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lbao$1;->b:Lbao;

    invoke-static {v1}, Lbao;->a(Lbao;)Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;->deleteInTx(Ljava/lang/Iterable;)V

    return-void
.end method
