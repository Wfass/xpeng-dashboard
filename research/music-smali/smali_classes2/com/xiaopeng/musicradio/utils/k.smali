.class public Lcom/xiaopeng/musicradio/utils/k;
.super Ljava/lang/Object;
.source "CleanLeakUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 7

    if-nez p0, :cond_0

    .line 37
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "input_method"

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_1

    return-void

    .line 45
    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 46
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 47
    new-array v3, v2, [Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "getViewRootImpl"

    invoke-static {v1, v5, v3, v4}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bk;->a(Landroid/view/inputmethod/InputMethodManager;)V

    const-string v3, "mCurRootView"

    .line 50
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 54
    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    .line 56
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 57
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    if-ne v6, v1, :cond_3

    .line 62
    check-cast v6, Landroid/view/View;

    .line 63
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-ne v6, p0, :cond_4

    const/4 v6, 0x0

    .line 64
    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 70
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 6

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "mContext"

    .line 81
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-nez v2, :cond_1

    return-void

    .line 85
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixConnectivityManagerLeak: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " context = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CleanLeakUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fixConnectivityManagerLeak: ctx.getApplicationContext() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " context.getApplicationContext() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, p0, :cond_2

    .line 87
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-ne v2, p0, :cond_3

    .line 88
    :cond_2
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0, v1, p0}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
