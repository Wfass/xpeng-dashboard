.class Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;
.super Ljava/lang/Object;
.source "ToolsSPUtils.java"


# static fields
.field private static volatile sInstance:Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;
    .locals 2

    .line 19
    sget-object v0, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->sInstance:Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->sInstance:Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;

    invoke-direct {v1}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;-><init>()V

    sput-object v1, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->sInstance:Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->sInstance:Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
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

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    .line 70
    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
