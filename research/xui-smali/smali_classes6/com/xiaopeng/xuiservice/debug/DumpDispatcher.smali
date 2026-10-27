.class public Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;
.super Ljava/lang/Object;
.source "DumpDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;
    }
.end annotation


# static fields
.field private static dumperMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumperMap:Ljava/util/HashMap;

    .line 21
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->selfRegisterModules()V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 74
    const-string v0, "iot service help command"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static dumpModule(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "start"    # I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump module:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",arg len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    sub-int/2addr v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "subArgs":[Ljava/lang/String;
    array-length v1, p2

    if-ge p3, v1, :cond_0

    .line 47
    array-length v1, p2

    sub-int/2addr v1, p3

    new-array v0, v1, [Ljava/lang/String;

    .line 48
    move v1, p3

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 49
    sub-int v2, v1, p3

    aget-object v3, p2, v1

    aput-object v3, v0, v2

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 54
    .local v1, "dumper":Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;
    sget-object v2, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumperMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 55
    :try_start_0
    sget-object v3, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumperMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;

    move-object v1, v3

    .line 56
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v1, :cond_1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find dumper for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    invoke-interface {v1, p0, v0}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 60
    return-void

    .line 63
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x15ee54

    if-eq v3, v4, :cond_3

    const v4, 0x32b09e

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "list"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "-all"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 66
    :pswitch_0
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->printModules(Ljava/io/PrintWriter;)V

    .line 67
    nop

    .line 71
    :goto_2
    return-void

    .line 56
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDumpModules()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumperMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static handleDumpLog(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "opti":I
    new-instance v1, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$1;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$1;-><init>()V

    .line 107
    .local v1, "levelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    .line 108
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .line 109
    .local v0, "persistSave":Z
    .local v3, "opti":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_7

    .line 110
    aget-object v4, p1, v3

    .line 111
    .local v4, "param":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 112
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x6157468c

    if-eq v6, v7, :cond_2

    const/16 v7, 0x5e3

    if-eq v6, v7, :cond_1

    const v7, 0x1089836e

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "-output"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const-string v6, "-p"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x2

    goto :goto_1

    :cond_2
    const-string v6, "-default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v5, v2

    :cond_3
    :goto_1
    packed-switch v5, :pswitch_data_0

    .end local v4    # "param":Ljava/lang/String;
    goto/16 :goto_2

    .line 136
    .restart local v4    # "param":Ljava/lang/String;
    :pswitch_0
    const/4 v0, 0x1

    .line 137
    goto :goto_2

    .line 123
    :pswitch_1
    array-length v5, p1

    if-ge v3, v5, :cond_5

    .line 124
    aget-object v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 125
    .local v5, "level":I
    invoke-static {v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->setOutputLevel(I)V

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set output level:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    if-eqz v0, :cond_4

    .line 128
    const-string/jumbo v6, "with persist config"

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    const-string v6, "persist.sys.xiaopeng.xuisvc.loglevel"

    aget-object v7, p1, v3

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v5    # "level":I
    :cond_4
    goto :goto_2

    .line 132
    :cond_5
    const-string v5, "please input output log level:0-4/-1"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    goto :goto_2

    .line 114
    :pswitch_2
    array-length v5, p1

    if-ge v3, v5, :cond_6

    .line 115
    aget-object v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 116
    .restart local v5    # "level":I
    invoke-static {v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->setDefaultLevel(I)V

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set default level:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .end local v5    # "level":I
    goto :goto_2

    .line 119
    :cond_6
    const-string v5, "please input default log level:0-4/10"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    nop

    .line 141
    .end local v4    # "param":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 142
    .end local v0    # "persistSave":Z
    :cond_7
    nop

    .line 148
    move v0, v3

    goto :goto_3

    .line 143
    .end local v3    # "opti":I
    .local v0, "opti":I
    :cond_8
    invoke-static {}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->getDefaultLevel()I

    move-result v2

    .line 144
    .local v2, "defaultLevel":I
    invoke-static {}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->getOutputLevel()I

    move-result v3

    .line 145
    .local v3, "targetLevel":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default log level:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "output log level:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    .end local v2    # "defaultLevel":I
    .end local v3    # "targetLevel":I
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hasModule(Ljava/lang/String;)Z
    .locals 1
    .param p0, "module"    # Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumperMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$selfRegisterModules$0(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;

    .line 83
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->handleDumpLog(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private static printModules(Ljava/io/PrintWriter;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 88
    const-string v0, "available modules:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumperMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumperMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, "m":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .end local v2    # "m":Ljava/lang/String;
    goto :goto_0

    .line 93
    :cond_0
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "dumper"    # Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;

    .line 29
    sget-object v0, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumperMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumperMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static selfRegisterModules()V
    .locals 2

    .line 82
    const-string v0, "log"

    sget-object v1, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$DumpDispatcher$aH751Sy5__0X_w57Ixir9iSp2Dk;->INSTANCE:Lcom/xiaopeng/xuiservice/debug/-$$Lambda$DumpDispatcher$aH751Sy5__0X_w57Ixir9iSp2Dk;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 85
    return-void
.end method
