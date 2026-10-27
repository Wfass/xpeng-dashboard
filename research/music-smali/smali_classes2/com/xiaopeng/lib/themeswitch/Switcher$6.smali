.class Lcom/xiaopeng/lib/themeswitch/Switcher$6;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/Switcher;->updateNightThemeAsync(ZLjava/lang/String;)V
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

    .line 442
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$6;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$6;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$1400(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 446
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 447
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 448
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 450
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$6;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$1500(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 454
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$6;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$1500(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$6;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$500(Lcom/xiaopeng/lib/themeswitch/Switcher;)V

    const-string v0, "ThemeSwitcher"

    const-string v1, "<<<< updateNightThemeAsync, switch to night mode finish!"

    .line 460
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
