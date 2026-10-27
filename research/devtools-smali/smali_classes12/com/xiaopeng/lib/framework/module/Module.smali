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
    .locals 1

    .line 33
    sget-object v0, Lcom/xiaopeng/lib/framework/module/Module;->sModuleMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    return-object p0
.end method

.method public static register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V
    .locals 1

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
