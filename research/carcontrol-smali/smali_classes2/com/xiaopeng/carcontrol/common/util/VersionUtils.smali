.class public Lcom/xiaopeng/carcontrol/common/util/VersionUtils;
.super Ljava/lang/Object;
.source "VersionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;
    }
.end annotation


# static fields
.field private static final KEY_VERSION_CODE:Ljava/lang/String; = "version_code"

.field private static final KEY_VERSION_NAME:Ljava/lang/String; = "version_name"

.field private static final SP_NAME:Ljava/lang/String; = "sp_version"

.field private static editor:Landroid/content/SharedPreferences$Editor; = null

.field private static sCurrentVersionCode:I = -0x1

.field private static sCurrentVersionName:Ljava/lang/String; = ""

.field private static sInstallType:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType; = null

.field private static sLastVersionCode:I = -0x1

.field private static sLastVersionName:Ljava/lang/String; = ""

.field private static sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getBooleanValue(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;

    monitor-enter v0

    .line 126
    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sp:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getCurrentVersionCode()I
    .locals 2

    const-class v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;

    monitor-enter v0

    .line 102
    :try_start_0
    sget v1, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sCurrentVersionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getCurrentVersionName()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sCurrentVersionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstallType()Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;
    .locals 2

    const-class v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sInstallType:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getIntValue(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;

    monitor-enter v0

    .line 122
    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sp:Landroid/content/SharedPreferences;

    const/4 v2, -0x1

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getLastVersionCode()I
    .locals 2

    const-class v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;

    monitor-enter v0

    .line 94
    :try_start_0
    sget v1, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sLastVersionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getLastVersionName()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sLastVersionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sp:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setBooleanValue(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 138
    sget-object v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setIntValue(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static declared-synchronized update(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "curVersionCode"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    .line 48
    invoke-static {p0, p1, v1}, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->update(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized update(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "curVersionCode",
            "curVersionName"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;

    monitor-enter v0

    .line 58
    :try_start_0
    sput p1, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sCurrentVersionCode:I

    .line 59
    sput-object p2, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sCurrentVersionName:Ljava/lang/String;

    .line 60
    sget-object v1, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sp:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    const-string/jumbo v1, "sp_version"

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sp:Landroid/content/SharedPreferences;

    .line 62
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->editor:Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "version_code"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 66
    sget-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "version_code"

    const/4 v2, -0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sLastVersionCode:I

    .line 67
    sget-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "version_name"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sLastVersionName:Ljava/lang/String;

    .line 68
    sget p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sLastVersionCode:I

    if-ne p0, p1, :cond_1

    .line 69
    sget-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;->NO_INSTALL:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    sput-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sInstallType:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    goto :goto_0

    .line 71
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;->UPGRADE_INSTALL:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    sput-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sInstallType:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    goto :goto_0

    .line 74
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;->NEW_INSTALL:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    sput-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->sInstallType:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    .line 76
    :goto_0
    sget-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "version_code"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    sget-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo p1, "version_name"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    sget-object p0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
