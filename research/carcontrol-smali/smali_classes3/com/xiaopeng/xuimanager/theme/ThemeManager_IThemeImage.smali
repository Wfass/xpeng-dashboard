.class public Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;
.super Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;
.source "ThemeManager_IThemeImage.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/IThemeImage;


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

    const-class v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 37
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->assetFileNameNonNull(Ljava/lang/String;)V

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getBitmap(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBitmap: theme="

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

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 50
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->assetFileNameNonNull(Ljava/lang/String;)V

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getBitmapFromSelectedTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBitmap: fileName="

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

.method public getDrawable(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->getBitmap(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p3, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    return-object p3
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 27
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    return-object p2
.end method
