.class public Lcom/xiaopeng/speech/common/util/SPConfig;
.super Ljava/lang/Object;
.source "SPConfig.java"


# static fields
.field private static NAME:Ljava/lang/String;

.field private static mConfigMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/common/util/SPConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/common/util/SPConfig;->mConfigMaps:Ljava/util/Map;

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/speech/common/util/SPConfig;->NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "sharePreferenceName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    .line 49
    return-void
.end method

.method private doApply(Landroid/content/SharedPreferences$Editor;)Z
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 172
    const/4 v0, 0x1

    .line 174
    .local v0, "result":Z
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    const/4 v0, 0x0

    .line 179
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method private doCommit(Landroid/content/SharedPreferences$Editor;)Z
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 163
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .local v0, "result":Z
    goto :goto_0

    .line 164
    .end local v0    # "result":Z
    :catch_0
    move-exception v0

    .line 165
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "result":Z
    :goto_0
    return v0
.end method

.method private static getConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/speech/common/util/SPConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "SPConfig":Lcom/xiaopeng/speech/common/util/SPConfig;
    sget-object v1, Lcom/xiaopeng/speech/common/util/SPConfig;->mConfigMaps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    sget-object v1, Lcom/xiaopeng/speech/common/util/SPConfig;->mConfigMaps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/xiaopeng/speech/common/util/SPConfig;

    .line 34
    :cond_0
    if-nez v0, :cond_1

    .line 35
    new-instance v1, Lcom/xiaopeng/speech/common/util/SPConfig;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/common/util/SPConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    .line 36
    sget-object v1, Lcom/xiaopeng/speech/common/util/SPConfig;->mConfigMaps:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/xiaopeng/speech/common/util/SPConfig;
    .locals 2

    const-class v0, Lcom/xiaopeng/speech/common/util/SPConfig;

    monitor-enter v0

    .line 19
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/SPConfig;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/common/util/SPConfig;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/common/util/SPConfig;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/xiaopeng/speech/common/util/SPConfig;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/xiaopeng/speech/common/util/SPConfig;->NAME:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".configuration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/speech/common/util/SPConfig;->NAME:Ljava/lang/String;

    .line 26
    :cond_0
    sget-object v1, Lcom/xiaopeng/speech/common/util/SPConfig;->NAME:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/xiaopeng/speech/common/util/SPConfig;->getConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/speech/common/util/SPConfig;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 22
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/speech/common/util/SPConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    const-class v0, Lcom/xiaopeng/speech/common/util/SPConfig;

    monitor-enter v0

    .line 42
    if-nez p1, :cond_0

    :try_start_0
    const-string v1, ""

    move-object p1, v1

    goto :goto_0

    .line 41
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 43
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/SPConfig;->getConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/speech/common/util/SPConfig;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 41
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized clearAllAsync()V
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw v0
.end method

.method public declared-synchronized clearAllSync()V
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/common/util/SPConfig;->doCommit(Landroid/content/SharedPreferences$Editor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 151
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw v0
.end method

.method public declared-synchronized getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw v0
.end method

.method public declared-synchronized getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "defaultValue":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "defaultValue":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "defaultValue":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "defaultValue":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .local p2, "deaultValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "deaultValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized removeSync(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/common/util/SPConfig;->doCommit(Landroid/content/SharedPreferences$Editor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 146
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized setBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/common/util/SPConfig;->doApply(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 88
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized setBooleanSync(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/common/util/SPConfig;->doCommit(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 93
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized setFloat(Ljava/lang/String;F)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/common/util/SPConfig;->doApply(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 98
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized setFloatSync(Ljava/lang/String;F)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/common/util/SPConfig;->doCommit(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 103
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized setInt(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/common/util/SPConfig;->doApply(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 68
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized setIntSync(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/common/util/SPConfig;->doCommit(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 73
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized setLong(Ljava/lang/String;J)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/common/util/SPConfig;->doApply(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 78
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized setLongSync(Ljava/lang/String;J)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/common/util/SPConfig;->doCommit(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 83
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public setOnChangeListenner(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listenner"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 52
    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 55
    :cond_0
    return-void
.end method

.method public declared-synchronized setString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/common/util/SPConfig;->doApply(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 58
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized setStringSet(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/common/util/SPConfig;->doApply(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 108
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized setStringSetSync(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/common/util/SPConfig;->doCommit(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 113
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method

.method public declared-synchronized setStringSync(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SPConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/common/util/SPConfig;->doCommit(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 63
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/SPConfig;
    throw p1
.end method
