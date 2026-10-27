.class public Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix;
.super Ljava/lang/Object;
.source "SharePrefsANRFix.java"


# static fields
.field private static volatile hooked:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fix()V
    .locals 6

    const-string v0, "android.app.QueuedWork"

    .line 19
    sget-boolean v1, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix;->hooked:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 23
    sput-boolean v1, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix;->hooked:Z

    const/4 v2, 0x0

    .line 26
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "sPendingWorkFinishers"

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 31
    instance-of v5, v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v5, :cond_1

    .line 32
    new-instance v5, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix$1;

    invoke-direct {v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix$1;-><init>()V

    .line 42
    check-cast v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :catch_0
    :cond_1
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "sFinishers"

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    instance-of v3, v1, Ljava/util/LinkedList;

    if-eqz v3, :cond_2

    .line 56
    new-instance v3, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix$2;

    invoke-direct {v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix$2;-><init>()V

    .line 66
    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 67
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method
