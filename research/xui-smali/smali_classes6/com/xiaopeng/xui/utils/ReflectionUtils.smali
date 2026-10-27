.class public Lcom/xiaopeng/xui/utils/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V
    .locals 5
    .param p0, "viewTree"    # Landroid/view/ViewTreeObserver;
    .param p1, "object"    # Ljava/lang/Object;

    .line 41
    if-nez p0, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 46
    .local v1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v2, "android.view.ViewTreeObserver"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 47
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "addOnComputeInternalInsetsListener"

    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;)V
    .locals 10
    .param p0, "viewTree"    # Landroid/view/ViewTreeObserver;

    .line 15
    if-nez p0, :cond_0

    .line 16
    return-void

    .line 19
    :cond_0
    :try_start_0
    const-string v0, "android.view.ViewTreeObserver"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mOnComputeInternalInsetsListeners"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 21
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 23
    .local v3, "listenerList":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 24
    const-string v2, "ReflectionUtils"

    const-string v4, "listenerList is null"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void

    .line 27
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getArray"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 28
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 29
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 30
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-array v7, v2, [Ljava/lang/Class;

    const-string v8, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v6

    .line 31
    .local v7, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 32
    const-string v8, "removeOnComputeInternalInsetsListener"

    invoke-virtual {v0, v8, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v2, v6

    .line 32
    invoke-virtual {v8, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "listenerList":Ljava/lang/Object;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v7    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
