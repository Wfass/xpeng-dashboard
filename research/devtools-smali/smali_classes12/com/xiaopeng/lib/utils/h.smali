.class public Lcom/xiaopeng/lib/utils/h;
.super Ljava/lang/Object;
.source "SharedPreferencesUtils.java"


# static fields
.field private static volatile Wt:Lcom/xiaopeng/lib/utils/h;

.field private static Wu:I


# instance fields
.field private Wv:Landroid/content/SharedPreferences;

.field private Ww:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/lib/utils/h;->Wt:Lcom/xiaopeng/lib/utils/h;

    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/lib/utils/h;->Wu:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 31
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 32
    const-string p2, "shared_pref"

    .line 34
    :cond_1
    const-string p3, "SharedPreferencesUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/utils/h;->Wv:Landroid/content/SharedPreferences;

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/lib/utils/h;->Wv:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/utils/h;->Ww:Landroid/content/SharedPreferences$Editor;

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/lib/utils/h;->Ww:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    return-void
.end method

.method public static ay(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/h;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/h;->init(Landroid/content/Context;)V

    .line 75
    sget-object p0, Lcom/xiaopeng/lib/utils/h;->Wt:Lcom/xiaopeng/lib/utils/h;

    return-object p0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/h;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    sget-object v0, Lcom/xiaopeng/lib/utils/h;->Wt:Lcom/xiaopeng/lib/utils/h;

    if-nez v0, :cond_1

    .line 57
    const-class v0, Lcom/xiaopeng/lib/utils/h;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/h;->Wt:Lcom/xiaopeng/lib/utils/h;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/xiaopeng/lib/utils/h;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/xiaopeng/lib/utils/h;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/lib/utils/h;->Wt:Lcom/xiaopeng/lib/utils/h;

    .line 60
    sget p0, Lcom/xiaopeng/lib/utils/h;->Wu:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/xiaopeng/lib/utils/h;->Wu:I

    .line 62
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 64
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/h;->Wv:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/lib/utils/h;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/h;->Wv:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/h;->Ww:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/h;->Ww:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method
