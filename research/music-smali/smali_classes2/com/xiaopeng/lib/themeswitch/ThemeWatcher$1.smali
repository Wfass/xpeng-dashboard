.class Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;
.super Landroid/database/ContentObserver;
.source "ThemeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->observeThemeChange(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$observeUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;Landroid/os/Handler;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;->this$0:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;

    iput-object p3, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;->val$observeUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .line 117
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 125
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<<< on Theme mode changed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThemeWatcher"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;->val$observeUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lapo;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    new-instance p1, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1$1;-><init>(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->postMainThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;->this$0:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;

    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->access$100(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;Landroid/content/Context;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->access$200(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;I)V

    :cond_1
    :goto_0
    return-void
.end method
