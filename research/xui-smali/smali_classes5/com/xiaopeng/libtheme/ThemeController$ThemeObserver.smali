.class Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;
.super Ljava/lang/Object;
.source "ThemeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libtheme/ThemeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeObserver"
.end annotation


# instance fields
.field private mThemeContext:Landroid/content/Context;

.field private final mThemeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/xiaopeng/libtheme/ThemeController;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/libtheme/ThemeController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 183
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->this$0:Lcom/xiaopeng/libtheme/ThemeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->mThemeContext:Landroid/content/Context;

    .line 185
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver$1;-><init>(Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;Landroid/os/Handler;Lcom/xiaopeng/libtheme/ThemeController;)V

    iput-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->mThemeObserver:Landroid/database/ContentObserver;

    .line 195
    return-void
.end method


# virtual methods
.method public registerThemeObserver()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/libtheme/ThemeController;->URI_THEME_MODE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->mThemeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/libtheme/ThemeController;->URI_THEME_STATE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->mThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/libtheme/ThemeController;->URI_DAYNIGHT_MODE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->mThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 200
    return-void
.end method

.method public unregisterThemeObserver()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->mThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 203
    return-void
.end method
