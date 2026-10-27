.class Lcom/xiaopeng/lib/themeswitch/Switcher$2;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/Switcher;->switch2Day()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/Switcher;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$2;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 269
    monitor-enter p0

    :try_start_0
    const-string v0, "ThemeSwitcher"

    const-string v1, "Switching2Day1"

    .line 270
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$2;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$200(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 273
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$2;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$600(Lcom/xiaopeng/lib/themeswitch/Switcher;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 275
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 276
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v1}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->getViewList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->getViewList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;

    .line 283
    invoke-virtual {v3}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;->getId()I

    move-result v4

    .line 285
    invoke-virtual {v1}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "ThemeSwitcher"

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find target view(id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") to switch theme!"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 291
    :cond_3
    invoke-virtual {v3}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;->getAttrList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView$ViewAttr;

    .line 292
    invoke-virtual {v5}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView$ViewAttr;->getAttrName()Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-virtual {v5}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView$ViewAttr;->getAttrValue()Ljava/lang/Object;

    move-result-object v5

    .line 296
    iget-object v7, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$2;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v7, v4, v6, v5}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$700(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string v0, "ThemeSwitcher"

    const-string v1, "Switching2Day2"

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$2;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$500(Lcom/xiaopeng/lib/themeswitch/Switcher;)V

    .line 304
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
