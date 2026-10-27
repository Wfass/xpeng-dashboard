.class public Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix;
.super Ljava/lang/Object;
.source "SharePrefsANRFix.java"


# static fields
.field private static volatile hooked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix;->hooked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fix()V
    .locals 7

    .line 19
    sget-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix;->hooked:Z

    if-eqz v0, :cond_0

    .line 20
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix;->hooked:Z

    .line 26
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.QueuedWork"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 27
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "sPendingWorkFinishers"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 28
    .local v3, "lowFinisher":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 31
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v5, :cond_1

    .line 32
    new-instance v5, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix$1;

    invoke-direct {v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix$1;-><init>()V

    .line 42
    .local v5, "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Runnable;>;"
    move-object v6, v4

    check-cast v6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "lowFinisher":Ljava/lang/reflect/Field;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Runnable;>;"
    :cond_1
    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    .line 50
    :goto_0
    :try_start_1
    const-string v2, "android.app.QueuedWork"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 51
    .restart local v2    # "clazz":Ljava/lang/Class;
    const-string v3, "sFinishers"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 52
    .local v3, "highFinisher":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_2

    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "obj":Ljava/lang/Object;
    instance-of v4, v0, Ljava/util/LinkedList;

    if-eqz v4, :cond_2

    .line 56
    new-instance v4, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix$2;

    invoke-direct {v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix$2;-><init>()V

    .line 66
    .local v4, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    move-object v5, v0

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 67
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "highFinisher":Ljava/lang/reflect/Field;
    .end local v4    # "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    :cond_2
    goto :goto_1

    .line 70
    :catch_1
    move-exception v0

    .line 72
    :goto_1
    return-void
.end method
