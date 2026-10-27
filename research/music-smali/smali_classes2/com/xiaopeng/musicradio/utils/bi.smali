.class public Lcom/xiaopeng/musicradio/utils/bi;
.super Ljava/lang/Object;
.source "SharePrefsANRFix.java"


# static fields
.field private static volatile a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bi;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a()V
    .locals 6

    const-string v0, "android.app.QueuedWork"

    .line 20
    sget-object v1, Lcom/xiaopeng/musicradio/utils/bi;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "sPendingWorkFinishers"

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 30
    instance-of v5, v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v5, :cond_1

    .line 31
    new-instance v5, Lcom/xiaopeng/musicradio/utils/SharePrefsANRFix$1;

    invoke-direct {v5}, Lcom/xiaopeng/musicradio/utils/SharePrefsANRFix$1;-><init>()V

    .line 41
    check-cast v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    :cond_1
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "sFinishers"

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 54
    instance-of v3, v2, Ljava/util/LinkedList;

    if-eqz v3, :cond_2

    .line 55
    new-instance v3, Lcom/xiaopeng/musicradio/utils/SharePrefsANRFix$2;

    invoke-direct {v3}, Lcom/xiaopeng/musicradio/utils/SharePrefsANRFix$2;-><init>()V

    .line 65
    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 66
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method
