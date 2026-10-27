.class public Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;
.super Ljava/lang/Object;
.source "OperationKeyValueRepository.java"


# static fields
.field private static final SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "xpKeyValue"


# instance fields
.field private final operationKeyValueDao:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;)V
    .locals 0
    .param p1, "operationKeyValueDao"    # Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->operationKeyValueDao:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository$1;

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;-><init>(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;
    .locals 1

    .line 28
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;

    return-object v0
.end method


# virtual methods
.method public insert(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;-><init>()V

    .line 40
    .local v0, "keyValue":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    iput-object p1, v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->key:Ljava/lang/String;

    .line 41
    iput-object p2, v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->value:Ljava/lang/String;

    .line 42
    const/4 v3, 0x0

    iput v3, v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->status:I

    .line 43
    sget-object v3, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->time:Ljava/lang/String;

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->operationKeyValueDao:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;

    invoke-interface {v3, v0}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;->insert(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;)J

    move-result-wide v3

    .line 47
    .local v3, "id":J
    const-string/jumbo v5, "xpKeyValue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert success, key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-wide v3

    .line 49
    .end local v3    # "id":J
    :catch_0
    move-exception v3

    .line 50
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "xpKeyValue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "operationKeyValueDao save: key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .end local v3    # "e":Ljava/lang/Exception;
    return-wide v1

    .line 37
    .end local v0    # "keyValue":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public queryById(J)Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    .locals 4
    .param p1, "id"    # J

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->operationKeyValueDao:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;->queryById(J)Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "xpKeyValue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryById: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryByKey(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->operationKeyValueDao:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;->queryByKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "xpKeyValue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operationKeyValueDao query: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public querySingleByKey(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 87
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->queryByKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->firstOf(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;

    return-object v0
.end method

.method public update(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;)V
    .locals 5
    .param p1, "keyValue"    # Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;

    .line 64
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->time:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->operationKeyValueDao:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;->update(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;)V

    .line 66
    const-string/jumbo v0, "xpKeyValue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update success, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "xpKeyValue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operationKeyValueDao update: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", exist id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public update(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyValue"    # Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    .param p2, "value"    # Ljava/lang/String;

    .line 57
    iput-object p2, p1, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->value:Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    iput v0, p1, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->status:I

    .line 59
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;->update(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;)V

    .line 60
    return-void
.end method
