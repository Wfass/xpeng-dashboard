.class public Lbao;
.super Ljava/lang/Object;
.source "TempMusicInfoOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbao$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lbao;->a:Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;

    return-void
.end method

.method public static a()Lbao;
    .locals 1

    .line 28
    sget-object v0, Lbao$a;->a:Lbao;

    return-object v0
.end method

.method static synthetic a(Lbao;)Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;
    .locals 0

    .line 19
    iget-object p0, p0, Lbao;->a:Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;

    return-object p0
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lbao;->a:Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao$Properties;->MusicFrom:Lorg/greenrobot/greendao/Property;

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 36
    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;

    .line 41
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->getMusicJson()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 2

    .line 144
    invoke-static {}, Lblf;->a()Lblf;

    move-result-object v0

    new-instance v1, Lbao$3;

    invoke-direct {v1, p0, p2, p1}, Lbao$3;-><init>(Lbao;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-virtual {v0, v1}, Lblf;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;I)V"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    invoke-static {}, Lblf;->a()Lblf;

    move-result-object p1

    new-instance v1, Lbao$2;

    invoke-direct {v1, p0, v0, p2}, Lbao$2;-><init>(Lbao;Ljava/util/List;I)V

    invoke-virtual {p1, v1}, Lblf;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 66
    invoke-static {}, Lblf;->a()Lblf;

    move-result-object v0

    new-instance v1, Lbao$1;

    invoke-direct {v1, p0, p1}, Lbao$1;-><init>(Lbao;I)V

    invoke-virtual {v0, v1}, Lblf;->a(Ljava/lang/Runnable;)V

    return-void
.end method
