.class Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$2;
.super Ljava/lang/Object;
.source "ThemeWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->loadThemeSettings(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;Landroid/content/Context;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$2;->this$0:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ThemeWatcher"

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$2;->this$0:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;

    iget-object v2, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "theme_night.xml"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/themeswitch/XmlParser;->parseXMLWithPull(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->access$302(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;Ljava/util/Map;)Ljava/util/Map;

    const-string v1, "start parse theme settings."

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "parse theme settings failed."

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
