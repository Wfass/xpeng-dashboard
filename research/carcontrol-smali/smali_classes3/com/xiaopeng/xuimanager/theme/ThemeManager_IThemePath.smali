.class public Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;
.super Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;
.source "ThemeManager_IThemePath.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/IThemePath;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V

    return-void
.end method


# virtual methods
.method public getAmbientLightDir()Ljava/nio/file/Path;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getAmbientLightDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getAmbientLightDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getAmbientLightDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getBootAniDir()Ljava/nio/file/Path;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getBootAniDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getBootAniDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 0

    .line 63
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getBootAniDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getBootSoundDir()Ljava/nio/file/Path;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getBootSoundDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getBootSoundDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 0

    .line 73
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getBootSoundDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getIconsDir()Ljava/nio/file/Path;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getIconsDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getIconsDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 0

    .line 103
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getIconsDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getLightLangDir()Ljava/nio/file/Path;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getLightLangDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getLightLangDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 0

    .line 83
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getLightLangDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    .line 153
    invoke-static {p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getModuleDir(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getNaviDir()Ljava/nio/file/Path;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getNaviDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getNaviDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 0

    .line 143
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getNaviDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getOverlayDir()Ljava/nio/file/Path;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getOverlayDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 0

    .line 113
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getOverlayDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getSRDir()Ljava/nio/file/Path;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getU3dSRDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getSRDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 0

    .line 133
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getU3dSRDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getSoundThemeDir()Ljava/nio/file/Path;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSoundThemeDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getSoundThemeDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 0

    .line 93
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSoundThemeDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getSystemFileDir()Ljava/nio/file/Path;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSystemFileDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getSystemFileDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 0

    .line 33
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSystemFileDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getSystemImageDir()Ljava/nio/file/Path;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSystemImageDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getSystemImageDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 0

    .line 43
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSystemImageDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getSystemValuesDir()Ljava/nio/file/Path;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSystemValuesDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getSystemValuesDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 0

    .line 23
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSystemValuesDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getThemeJsonFile()Ljava/nio/file/Path;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getThemeJsonFile(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getThemeJsonFile(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 0

    .line 13
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getThemeJsonFile(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getXiaoPDir()Ljava/nio/file/Path;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getU3dXiaoPDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getXiaoPDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 0

    .line 123
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getU3dXiaoPDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method
