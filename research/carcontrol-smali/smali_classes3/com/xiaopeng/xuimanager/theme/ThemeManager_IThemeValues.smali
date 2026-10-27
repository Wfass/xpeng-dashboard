.class public Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;
.super Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;
.source "ThemeManager_IThemeValues.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/IThemeValues;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpTheme_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V

    return-void
.end method


# virtual methods
.method public getBoolean(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Z)Z
    .locals 4

    .line 43
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getBoolean(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 48
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoolean: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", key="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", fallback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p3
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 4

    .line 55
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getBooleanFromSelectedTheme(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 59
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoolean: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fallback="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p2
.end method

.method public getBooleanArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[Z)[Z
    .locals 4

    .line 183
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 184
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getBooleanArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[Z

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 189
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBooleanArray: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", key="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", fallback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public getBooleanArray(Ljava/lang/String;[Z)[Z
    .locals 4

    .line 196
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getBooleanArrayFromSelectedTheme(Ljava/lang/String;)[Z

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 201
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBooleanArray: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fallback="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public getColor(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I
    .locals 4

    .line 112
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 113
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getColor(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getColor: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", key="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", fallback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p3
.end method

.method public getColor(Ljava/lang/String;I)I
    .locals 4

    .line 124
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getColorFromSelectedTheme(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 128
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getColor: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fallback="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p2
.end method

.method public getColorArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[I)[I
    .locals 4

    .line 258
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 259
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getColorArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 264
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getColorArray: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", key="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", fallback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public getColorArray(Ljava/lang/String;[I)[I
    .locals 4

    .line 271
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getColorArrayFromSelectedTheme(Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 276
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getColorArray: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fallback="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public getDimension(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I
    .locals 4

    .line 135
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 136
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getDimension(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 140
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDimension: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", key="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", fallback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p3
.end method

.method public getDimension(Ljava/lang/String;I)I
    .locals 4

    .line 147
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getDimensionFromSelectedTheme(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 151
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDimension: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fallback="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p2
.end method

.method public getDimensionArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[I)[I
    .locals 4

    .line 283
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 284
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getDimensionArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 289
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDimensionArray: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", key="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", fallback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public getDimensionArray(Ljava/lang/String;[I)[I
    .locals 4

    .line 296
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getDimensionArrayFromSelectedTheme(Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 301
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDimensionArray: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fallback="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public getFloat(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;D)D
    .locals 4

    .line 89
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 90
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFloat(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;D)D

    move-result-wide p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception v0

    .line 94
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFloat: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", key="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", fallback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide p3
.end method

.method public getFloat(Ljava/lang/String;D)D
    .locals 4

    .line 101
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFloatFromSelectedTheme(Ljava/lang/String;D)D

    move-result-wide p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception v0

    .line 105
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFloat: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fallback="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide p2
.end method

.method public getFloatArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[D)[D
    .locals 4

    .line 233
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 234
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFloatArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[D

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 239
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFloatArray: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", key="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", fallback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public getFloatArray(Ljava/lang/String;[D)[D
    .locals 4

    .line 246
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFloatArrayFromSelectedTheme(Ljava/lang/String;)[D

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 251
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFloatArray: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fallback="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public getInteger(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I
    .locals 4

    .line 66
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getInteger(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 71
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInteger: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", key="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", fallback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p3
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 4

    .line 78
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getIntegerFromSelectedTheme(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 82
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInteger: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fallback="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p2
.end method

.method public getIntegerArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[I)[I
    .locals 4

    .line 208
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 209
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getIntegerArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 214
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntegerArray: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", key="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", fallback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public getIntegerArray(Ljava/lang/String;[I)[I
    .locals 4

    .line 221
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getIntegerArrayFromSelectedTheme(Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 226
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntegerArray: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fallback="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public getString(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 20
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getString(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 25
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", key="

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

    return-object p3
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 32
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getStringFromSelectedTheme(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 36
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString: key="

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

    return-object p2
.end method

.method public getStringArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 158
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 159
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getStringArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 164
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStringArray: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", key="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", fallback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 166
    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Ljava/lang/String;

    :cond_0
    return-object p3
.end method

.method public getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 171
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->assetKeyNonNull(Ljava/lang/String;)V

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getStringArrayFromSelectedTheme(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 176
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStringArray: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", fallback="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 178
    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, [Ljava/lang/String;

    :cond_0
    return-object p2
.end method
