.class public Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;
.super Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;
.source "ThemeManager_IThemeDownload.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/IThemeDownload;


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeManager_IThemeDownload"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V

    return-void
.end method


# virtual methods
.method public cancelDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 4

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->cancelDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelDownloadTheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    .locals 4

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toDownloadStatusInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 63
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDownloadStatusInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public pauseDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 4

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->pauseDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseDownloadTheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public resumeDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 4

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->resumeDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeDownloadTheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    return-void
.end method

.method public startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 2

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 26
    sget-object p3, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownloadTheme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
