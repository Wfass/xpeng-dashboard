.class abstract Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;
.super Ljava/lang/Object;
.source "ThemeManagerSubModule.java"


# instance fields
.field mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

.field final themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;->themeManager:Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    return-void
.end method


# virtual methods
.method assetFileNameNonNull(Ljava/lang/String;)V
    .locals 1

    const-string v0, "fileName can\'t be null for get file"

    .line 32
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method assetKeyNonNull(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key can\'t be null for get values"

    .line 28
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method assetThemeNonNull(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1

    const-string v0, "theme can\'t be null for get values"

    .line 24
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method setLooper(Landroid/os/Looper;)V
    .locals 0

    return-void
.end method

.method setService(Lcom/xiaopeng/xuimanager/theme/ITheme;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    return-void
.end method
