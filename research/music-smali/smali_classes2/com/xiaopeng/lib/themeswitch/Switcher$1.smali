.class Lcom/xiaopeng/lib/themeswitch/Switcher$1;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/Switcher;->switch2Night()V
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

    .line 234
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$1;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 237
    monitor-enter p0

    :try_start_0
    const-string v0, "ThemeSwitcher"

    const-string v1, "Switching2Night1"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$1;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$002(Lcom/xiaopeng/lib/themeswitch/Switcher;I)I

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$1;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$100(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$1;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$200(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 244
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$1;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$200(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 245
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$1;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v3}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$300(Lcom/xiaopeng/lib/themeswitch/Switcher;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 247
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 248
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;

    .line 249
    iget-object v5, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$1;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-virtual {v3}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-static {v5, v1, v3, v4}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$400(Lcom/xiaopeng/lib/themeswitch/Switcher;ZLandroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "ThemeSwitcher"

    const-string v1, "Switching2Night2"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$1;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$200(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$1;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$500(Lcom/xiaopeng/lib/themeswitch/Switcher;)V

    .line 257
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    .line 251
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v0

    .line 257
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
