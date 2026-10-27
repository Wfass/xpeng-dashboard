.class public Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;
.super Ljava/lang/Object;
.source "OnComputeInternalInsetsListener.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private touchRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;->touchRegion:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .locals 5

    .line 14
    const/4 v0, 0x0

    .line 16
    .local v0, "target":Ljava/lang/Object;
    :try_start_0
    const-string v1, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 17
    .local v1, "class1":Ljava/lang/Class;
    const-class v2, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 21
    .end local v1    # "class1":Ljava/lang/Class;
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getTouchRegion()Landroid/graphics/Region;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;->touchRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p3, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "touchableRegion"

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 39
    .local v1, "regionField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 40
    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mTouchableInsets"

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 42
    .local v3, "insetField":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    iget-object v2, p0, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;->touchRegion:Landroid/graphics/Region;

    if-eqz v2, :cond_0

    .line 44
    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Region;

    .line 45
    .local v2, "region":Landroid/graphics/Region;
    iget-object v4, p0, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;->touchRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 46
    aget-object v0, p3, v0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .end local v2    # "region":Landroid/graphics/Region;
    goto :goto_0

    .line 48
    :cond_0
    aget-object v2, p3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "regionField":Ljava/lang/reflect/Field;
    .end local v3    # "insetField":Ljava/lang/reflect/Field;
    :goto_0
    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTouchRegion(Landroid/graphics/Region;)V
    .locals 0
    .param p1, "touchRegion"    # Landroid/graphics/Region;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;->touchRegion:Landroid/graphics/Region;

    .line 31
    return-void
.end method
