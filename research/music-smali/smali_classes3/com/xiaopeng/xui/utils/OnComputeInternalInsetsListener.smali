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

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;->touchRegion:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .locals 4

    :try_start_0
    const-string v0, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    .line 16
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 17
    const-class v1, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

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
    .locals 3

    const/4 p1, 0x0

    .line 37
    :try_start_0
    aget-object p2, p3, p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "touchableRegion"

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 40
    aget-object v1, p3, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mTouchableInsets"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;->touchRegion:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    .line 44
    aget-object v0, p3, p1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Region;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;->touchRegion:Landroid/graphics/Region;

    invoke-virtual {p2, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 46
    aget-object p1, p3, p1

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_0
    aget-object p2, p3, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setTouchRegion(Landroid/graphics/Region;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;->touchRegion:Landroid/graphics/Region;

    return-void
.end method
