.class public Lcom/xiaopeng/xuimanager/theme/ThemeFile;
.super Ljava/lang/Object;
.source "ThemeFile.java"


# static fields
.field private static final AMBIENTLIGHT_DIR:Ljava/lang/String; = "ambientlight"

.field private static final BOOTANI_DIR:Ljava/lang/String; = "bootani"

.field private static final BOOTSOUND_DIR:Ljava/lang/String; = "bootsound"

.field private static final FILE_DIR:Ljava/lang/String;

.field private static final ICONS_DIR:Ljava/lang/String; = "icons"

.field private static final IMAGE_DIR:Ljava/lang/String;

.field private static final LIGHTLANG_DIR:Ljava/lang/String; = "lightlang"

.field private static final NAVI_DIR:Ljava/lang/String; = "navi"

.field private static final OVERLAY_DIR:Ljava/lang/String; = "overlay"

.field private static final OVERLAY_JSON:Ljava/lang/String; = "overlay.json"

.field private static final SNDTHEME_DIR:Ljava/lang/String; = "sndtheme"

.field private static final THEME_JSON:Ljava/lang/String; = "theme.json"

.field private static final U3D_DIR:Ljava/lang/String; = "u3d"

.field private static final U3D_SUB_SR:Ljava/lang/String; = "sr"

.field private static final U3D_SUB_XIAO_P:Ljava/lang/String; = "xiaop"

.field private static final VALUES_DIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "values"

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "system"

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->VALUES_DIR:Ljava/lang/String;

    const-string v0, "file"

    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->FILE_DIR:Ljava/lang/String;

    const-string v0, "image"

    .line 56
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->IMAGE_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAmbientLightDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    const-string v0, "ambientlight"

    .line 73
    invoke-static {p0, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getBootAniDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    const-string v0, "bootani"

    .line 82
    invoke-static {p0, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getBootSoundDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    const-string v0, "bootsound"

    .line 91
    invoke-static {p0, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getDirByElementType(Lcom/xiaopeng/xuimanager/theme/Theme;I)Ljava/nio/file/Path;
    .locals 1

    const v0, 0x107b25

    if-ne p1, v0, :cond_0

    .line 190
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getU3dXiaoPDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x107b26

    if-ne p1, v0, :cond_1

    .line 192
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getU3dSRDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIconsDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    const-string v0, "icons"

    .line 118
    invoke-static {p0, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getLightLangDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    const-string v0, "lightlang"

    .line 100
    invoke-static {p0, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/Theme;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v1, p0}, Lcom/xiaopeng/xuimanager/theme/Theme;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/Theme;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/Theme;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v1, p0}, Lcom/xiaopeng/xuimanager/theme/Theme;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 182
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/Theme;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getNaviDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    const-string v0, "navi"

    .line 162
    invoke-static {p0, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getOverlayDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    const-string v0, "overlay"

    .line 127
    invoke-static {p0, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getOverlayJsonFile(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/Theme;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "overlay"

    const-string v1, "overlay.json"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getSoundThemeDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    const-string v0, "sndtheme"

    .line 109
    invoke-static {p0, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemFileDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->FILE_DIR:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemFilePath(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 2

    .line 49
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSystemFileDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSystemImageDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 59
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->IMAGE_DIR:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemImagePath(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 2

    .line 63
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSystemImageDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 64
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSystemValuesDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 36
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->VALUES_DIR:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getThemeJsonFile(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    if-eqz p0, :cond_1

    .line 16
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuimanager/theme/Theme;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/Theme;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getThemeJsonFile(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getThemeJsonFile(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "theme.json"

    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getU3dSRDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 2

    const-string v0, "u3d"

    const-string v1, "sr"

    .line 153
    invoke-static {p0, v0, v1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getU3dXiaoPDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 2

    const-string v0, "u3d"

    const-string/jumbo v1, "xiaop"

    .line 149
    invoke-static {p0, v0, v1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method
