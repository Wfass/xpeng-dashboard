.class public Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;
.super Ljava/lang/Object;
.source "SharedPreferencesUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil$SharedPreferencesUtilHolder;,
        Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil$KeySet;
    }
.end annotation


# static fields
.field private static final PREFERENCES_NAME:Ljava/lang/String; = "preferences_xui"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bootInited:Z

.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private moduleInited:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->bootInited:Z

    .line 28
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->moduleInited:Z

    .line 30
    const-string v0, "SharedPreferencesUtil"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->TAG:Ljava/lang/String;

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil$1;

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;
    .locals 1

    .line 37
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil$SharedPreferencesUtilHolder;->access$100()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    return-object v0
.end method

.method private handleDumpShare(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "opti":I
    if-eqz p2, :cond_8

    .line 58
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_9

    .line 59
    aget-object v1, p2, v0

    .line 60
    .local v1, "cmd":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 61
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x1840b

    if-eq v3, v4, :cond_2

    const v4, 0x355996

    if-eq v3, v4, :cond_1

    const v4, 0x6c257df

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "write"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "read"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "del"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x2

    :cond_3
    :goto_1
    packed-switch v2, :pswitch_data_0

    .end local v1    # "cmd":Ljava/lang/String;
    goto/16 :goto_3

    .line 89
    .restart local v1    # "cmd":Ljava/lang/String;
    :pswitch_0
    array-length v2, p2

    if-ge v0, v2, :cond_4

    .line 90
    aget-object v2, p2, v0

    .line 91
    .local v2, "key":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->remove(Ljava/lang/String;)V

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "del "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    .end local v2    # "key":Ljava/lang/String;
    goto/16 :goto_3

    .line 94
    :cond_4
    const-string v2, "del:less params"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    goto :goto_3

    .line 73
    :pswitch_1
    array-length v2, p2

    if-ge v0, v2, :cond_6

    .line 74
    aget-object v2, p2, v0

    .line 75
    .restart local v2    # "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 76
    array-length v3, p2

    if-ge v0, v3, :cond_5

    .line 77
    aget-object v3, p2, v0

    .line 78
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "write,key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_2

    .line 81
    :cond_5
    const-string/jumbo v3, "write:less params"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .end local v2    # "key":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 84
    :cond_6
    const-string/jumbo v2, "write:less params"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    goto :goto_3

    .line 63
    :pswitch_2
    array-length v2, p2

    if-ge v0, v2, :cond_7

    .line 64
    aget-object v2, p2, v0

    .line 65
    .restart local v2    # "key":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .restart local v3    # "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_3

    .line 68
    :cond_7
    const-string v2, "read:less params"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    nop

    .line 101
    .end local v1    # "cmd":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 103
    :cond_8
    const-string v1, "dump share,lack of args"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized initContextPreference()V
    .locals 4

    monitor-enter p0

    .line 195
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->bootInited:Z

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "SharedPreferencesUtil"

    const-string v1, "already init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 199
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->bootInited:Z

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 201
    .local v0, "deviceContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mContext:Landroid/content/Context;

    const-string v2, "preferences_xui"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    const-string v1, "SharedPreferencesUtil"

    const-string v2, "initContextPreference,Failed to migrate shared preferences."

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mContext:Landroid/content/Context;

    .line 205
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mContext:Landroid/content/Context;

    const-string v2, "preferences_xui"

    const/4 v3, 0x0

    .line 206
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 207
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 208
    const-string v1, "SharedPreferencesUtil"

    const-string v2, "initContextPreference fail,sp=preferences_xui"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_2
    const-string v1, "SharedPreferencesUtil"

    const-string v2, "initContextPreference done"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 194
    .end local v0    # "deviceContext":Landroid/content/Context;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;
    throw v0
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->handleDumpShare(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 119
    const-string v0, "SharedPreferencesUtil"

    const-string v1, "db not inited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-object p2

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 138
    const-string v0, "SharedPreferencesUtil"

    const-string v1, "db not inited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return p2

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 156
    const-string v0, "SharedPreferencesUtil"

    const-string v1, "db not inited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return p2

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 174
    const-string v0, "SharedPreferencesUtil"

    const-string v1, "db not inited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-wide p2

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->moduleInited:Z

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->moduleInited:Z

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->initContextPreference()V

    .line 49
    const-string v0, "share"

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SharedPreferencesUtil$SoHYlA8xolMWnAEsyTTD8EUnFFE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SharedPreferencesUtil$SoHYlA8xolMWnAEsyTTD8EUnFFE;-><init>(Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 53
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 109
    const-string v0, "SharedPreferencesUtil"

    const-string v1, "db not inited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 128
    const-string v0, "SharedPreferencesUtil"

    const-string v1, "db not inited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 146
    const-string v0, "SharedPreferencesUtil"

    const-string v1, "db not inited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 164
    const-string v0, "SharedPreferencesUtil"

    const-string v1, "db not inited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 182
    const-string v0, "SharedPreferencesUtil"

    const-string v1, "db not inited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    return-void
.end method
