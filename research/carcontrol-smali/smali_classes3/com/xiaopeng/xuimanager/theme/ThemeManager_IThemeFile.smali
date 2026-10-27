.class public Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;
.super Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;
.source "ThemeManager_IThemeFile.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/IThemeFile;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpTheme_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V

    return-void
.end method


# virtual methods
.method public getFileBytes(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[B)[B
    .locals 4

    .line 47
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->assetFileNameNonNull(Ljava/lang/String;)V

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFileBytes(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileBytes: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fileName="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", fallback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    move-object p3, p1

    :cond_0
    return-object p3
.end method

.method public getFileBytes(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->getFileBytes(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getFileBytes(Ljava/lang/String;[B)[B
    .locals 4

    .line 60
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->assetFileNameNonNull(Ljava/lang/String;)V

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFileBytesFromSelectedTheme(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileBytes: fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fallback="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public getFileText(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 17
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->assetFileNameNonNull(Ljava/lang/String;)V

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFileText(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileText: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fileName="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", fallback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    move-object p3, p1

    :cond_0
    return-object p3
.end method

.method public getFileText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->getFileText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 30
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->assetFileNameNonNull(Ljava/lang/String;)V

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFileTextFromSelectedTheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileText: fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fallback="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method
