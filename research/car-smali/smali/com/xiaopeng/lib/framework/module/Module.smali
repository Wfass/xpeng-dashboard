.class public Lcom/xiaopeng/lib/framework/module/Module;
.super Ljava/lang/Object;
.source "Module.java"


# static fields
.field private static sModuleMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class;",
            "Lcom/xiaopeng/lib/framework/module/IModuleEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/module/Module;->sModuleMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;
    .locals 2
    .param p0, "moduleClass"    # Ljava/lang/Class;

    .line 47
    sget-object v0, Lcom/xiaopeng/lib/framework/module/Module;->sModuleMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    .line 50
    .local v0, "entry":Lcom/xiaopeng/lib/framework/module/IModuleEntry;
    if-nez v0, :cond_0

    .line 51
    invoke-static {p0}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;)V

    .line 52
    sget-object v1, Lcom/xiaopeng/lib/framework/module/Module;->sModuleMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    .line 55
    :cond_0
    return-object v0
.end method

.method public static register(Ljava/lang/Class;)V
    .locals 1
    .param p0, "moduleClass"    # Ljava/lang/Class;

    .line 33
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    .line 34
    .local v0, "entry":Lcom/xiaopeng/lib/framework/module/IModuleEntry;
    invoke-static {p0, v0}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0    # "entry":Lcom/xiaopeng/lib/framework/module/IModuleEntry;
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

.method public static register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V
    .locals 1
    .param p0, "moduleClass"    # Ljava/lang/Class;
    .param p1, "moduleEntry"    # Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    .line 18
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 19
    sget-object v0, Lcom/xiaopeng/lib/framework/module/Module;->sModuleMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    return-void

    .line 22
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/framework/module/Module;->sModuleMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_1
    return-void
.end method
