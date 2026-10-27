.class public Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SharedPreferencesUtils.java"


# static fields
.field private static final SP_NAME:Ljava/lang/String; = "shared_pref"

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesUtils"

.field private static initCount:I

.field private static volatile instance:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->instance:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->initCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "spName"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 31
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    const-string p2, "shared_pref"

    .line 34
    :cond_1
    const-string v0, "SharedPreferencesUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    return-void
.end method

.method public static getInitCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    sget v0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->initCount:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->init(Landroid/content/Context;)V

    .line 75
    sget-object v0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->instance:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    return-object v0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "spName"    # Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->instance:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    if-nez v0, :cond_1

    .line 57
    const-class v0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->instance:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->instance:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    .line 60
    sget v1, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->initCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->initCount:I

    .line 62
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 64
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 130
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 106
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 118
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    return-void
.end method
