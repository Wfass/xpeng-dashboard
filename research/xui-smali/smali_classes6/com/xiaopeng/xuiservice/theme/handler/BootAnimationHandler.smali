.class public Lcom/xiaopeng/xuiservice/theme/handler/BootAnimationHandler;
.super Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;
.source "BootAnimationHandler.java"


# static fields
.field private static final ANIMATION_FILE_PREFIX:Ljava/lang/String; = "bootanimation"

.field private static final PROPERTY_CUSTOM_PATH:Ljava/lang/String; = "persist.sys.bootanim.custom_path"

.field private static final PROPERTY_THEME_STYLE:Ljava/lang/String; = "persist.sys.theme.style"

.field private static final TAG:Ljava/lang/String; = "xpTheme_BootAnimationHandler"


# instance fields
.field private selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;-><init>()V

    return-void
.end method

.method private isAnimationZip(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 58
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bootanimation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0
.end method

.method private setBootAnimationIfExist(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 8
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 64
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getBootAniDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 65
    .local v0, "bootAnimationDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    return-void

    .line 69
    :cond_0
    const/4 v1, 0x0

    .line 70
    .local v1, "hasBootAnimationFile":Z
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 71
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 72
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 73
    .local v5, "file":Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/xiaopeng/xuiservice/theme/handler/BootAnimationHandler;->isAnimationZip(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    const/4 v1, 0x1

    .line 76
    const-string/jumbo v3, "xpTheme_BootAnimationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBootAnimationIfExist theme="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", find="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    goto :goto_1

    .line 72
    .end local v5    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 85
    const-string/jumbo v3, "xpTheme_BootAnimationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no bootani resource theme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void

    .line 90
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "path":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    :cond_4
    const-string/jumbo v4, "xpTheme_BootAnimationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set prop key=persist.sys.bootanim.custom_path value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :try_start_0
    const-string v4, "persist.sys.bootanim.custom_path"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_2

    .line 100
    :catch_0
    move-exception v4

    .line 101
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "xpTheme_BootAnimationHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set prop fail, key=persist.sys.bootanim.custom_path, value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v4, "xpTheme_BootAnimationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set prop key=persist.sys.theme.style value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :try_start_1
    const-string v4, "persist.sys.theme.style"

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    goto :goto_3

    .line 110
    :catch_1
    move-exception v4

    .line 111
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "xpTheme_BootAnimationHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set prop fail, key=persist.sys.theme.style, value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private unsetBootAnimation()V
    .locals 3

    .line 117
    const-string/jumbo v0, "xpTheme_BootAnimationHandler"

    const-string v1, "set prop key=persist.sys.bootanim.custom_path value=\"\""

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :try_start_0
    const-string v0, "persist.sys.bootanim.custom_path"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "xpTheme_BootAnimationHandler"

    const-string v2, "set prop fail, key=persist.sys.bootanim.custom_path, value=\"\""

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string/jumbo v0, "xpTheme_BootAnimationHandler"

    const-string v1, "set prop key=persist.sys.theme.style value=\"\""

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :try_start_1
    const-string v0, "persist.sys.theme.style"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    goto :goto_1

    .line 130
    :catch_1
    move-exception v0

    .line 131
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "xpTheme_BootAnimationHandler"

    const-string v2, "set prop fail, key=persist.sys.theme.style, value=\"\""

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method protected doInit()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/BootAnimationHandler;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 27
    return-void
.end method

.method protected doOnThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 32
    return-void
.end method

.method protected doOnThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 37
    return-void
.end method

.method protected doOnThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/theme/handler/BootAnimationHandler;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 50
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/theme/handler/BootAnimationHandler;->unsetBootAnimation()V

    goto :goto_0

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/BootAnimationHandler;->setBootAnimationIfExist(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 55
    :goto_0
    return-void
.end method

.method protected doOnThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/BootAnimationHandler;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/theme/Theme;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/theme/handler/BootAnimationHandler;->unsetBootAnimation()V

    .line 43
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/BootAnimationHandler;->setBootAnimationIfExist(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 45
    :cond_0
    return-void
.end method
