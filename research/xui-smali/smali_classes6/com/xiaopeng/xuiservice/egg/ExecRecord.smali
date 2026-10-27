.class public Lcom/xiaopeng/xuiservice/egg/ExecRecord;
.super Ljava/lang/Object;
.source "ExecRecord.java"


# static fields
.field private static final execCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/xiaopeng/xuiservice/egg/Egg;",
            "Ljava/util/HashMap<",
            "Lcom/xiaopeng/xuiservice/egg/Rule;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final lastExecMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/xiaopeng/xuiservice/egg/Egg;",
            "Ljava/util/HashMap<",
            "Lcom/xiaopeng/xuiservice/egg/Rule;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->lastExecMap:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->execCountMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanMemoryExecRecord()V
    .locals 1

    .line 21
    const-string v0, "clear memory execute record"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->lastExecMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 23
    sget-object v0, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->execCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 24
    return-void
.end method

.method public static getExecCountInMemory(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)I
    .locals 5
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 96
    sget-object v0, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->execCountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 97
    .local v0, "ruleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/xiaopeng/xuiservice/egg/Rule;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    return v1

    .line 100
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 101
    .local v2, "count":Ljava/lang/Integer;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    .local v1, "execCount":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get ExecCountInMemory: egg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 103
    return v1
.end method

.method public static getExecCountInStorage(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)I
    .locals 3
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 71
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getExecCountKey(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getExecCountInStorage(Ljava/lang/String;)I

    move-result v0

    .line 72
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get ExecCountInStorage: egg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 73
    return v0
.end method

.method private static getExecCountInStorage(Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getExecCountKey(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Ljava/lang/String;
    .locals 2
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "egg_exec_count_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastExecInMemory(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)J
    .locals 7
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 49
    sget-object v0, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->lastExecMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 50
    .local v0, "ruleTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/xiaopeng/xuiservice/egg/Rule;Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 51
    .local v1, "lastExec":Ljava/lang/Long;
    :goto_0
    if-nez v1, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 52
    .local v2, "time":J
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastExecInMemory: egg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", rule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 53
    invoke-static {v5, v6}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-static {v4}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 54
    return-wide v2
.end method

.method public static getLastExecInStorage(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)J
    .locals 5
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 35
    invoke-static {}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getLastExecKey(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 36
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastExecInStorage: egg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 37
    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 38
    return-wide v0
.end method

.method private static getLastExecKey(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Ljava/lang/String;
    .locals 2
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "egg_last_exec_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 107
    sget-object v0, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "egg_exec_record"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 110
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static increaseExecCountInMemory(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V
    .locals 5
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 87
    sget-object v0, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->execCountMap:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaopeng/xuiservice/egg/-$$Lambda$ExecRecord$qn_CZI8KnKU2JweLS8OdlZ_7x9I;->INSTANCE:Lcom/xiaopeng/xuiservice/egg/-$$Lambda$ExecRecord$qn_CZI8KnKU2JweLS8OdlZ_7x9I;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 88
    .local v0, "ruleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/xiaopeng/xuiservice/egg/Rule;Ljava/lang/Integer;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 89
    .local v1, "current":Ljava/lang/Integer;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 90
    .local v2, "count":I
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set ExecCountInMemory: egg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public static increaseExecCountInStorage(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V
    .locals 4
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 58
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getExecCountKey(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getExecCountInStorage(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 60
    .local v1, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set ExecCountInStorage: egg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 61
    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->setExecCountInStorage(Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method static synthetic lambda$increaseExecCountInMemory$1(Lcom/xiaopeng/xuiservice/egg/Egg;)Ljava/util/HashMap;
    .locals 1
    .param p0, "k"    # Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$recordLastExecInMemory$0(Lcom/xiaopeng/xuiservice/egg/Egg;)Ljava/util/HashMap;
    .locals 1
    .param p0, "k"    # Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static recordLastExecInMemory(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;J)V
    .locals 3
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;
    .param p2, "time"    # J

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordLastExecInMemory: egg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 43
    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->lastExecMap:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaopeng/xuiservice/egg/-$$Lambda$ExecRecord$2KoETMxStKkC_GerK0Um8hN9hD8;->INSTANCE:Lcom/xiaopeng/xuiservice/egg/-$$Lambda$ExecRecord$2KoETMxStKkC_GerK0Um8hN9hD8;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 45
    .local v0, "ruleTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/xiaopeng/xuiservice/egg/Rule;Ljava/lang/Long;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public static recordLastExecInStorage(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;J)V
    .locals 3
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;
    .param p2, "time"    # J

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordLastExecInStorage: egg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 28
    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 30
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getLastExecKey(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    return-void
.end method

.method public static setExecCountInStorage(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;I)V
    .locals 3
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;
    .param p2, "count"    # I

    .line 65
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getExecCountKey(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set ExecCountInStorage: egg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 67
    invoke-static {v0, p2}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->setExecCountInStorage(Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method private static setExecCountInStorage(Ljava/lang/String;I)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "count"    # I

    .line 81
    invoke-static {}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    return-void
.end method
