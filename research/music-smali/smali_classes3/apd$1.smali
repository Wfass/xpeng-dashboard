.class Lapd$1;
.super Ljava/lang/Object;
.source "UILooperObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapd;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapd;


# direct methods
.method constructor <init>(Lapd;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lapd$1;->a:Lapd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "UILooperObserver"

    .line 46
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 52
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mQueue"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 53
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/MessageQueue;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6

    .line 55
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "next"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    .line 56
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v6

    move-object v5, v2

    goto :goto_0

    :catch_4
    move-exception v6

    move-object v5, v2

    goto :goto_1

    :catch_5
    move-exception v6

    move-object v5, v2

    goto :goto_2

    :catch_6
    move-exception v6

    move-object v1, v2

    move-object v5, v1

    .line 62
    :goto_0
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    :catch_7
    move-exception v6

    move-object v1, v2

    move-object v5, v1

    .line 60
    :goto_1
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3

    :catch_8
    move-exception v6

    move-object v1, v2

    move-object v5, v1

    .line 58
    :goto_2
    invoke-virtual {v6}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 65
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 70
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 72
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 74
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "recycleUnchecked"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_9

    goto :goto_4

    :catch_9
    move-exception v7

    .line 76
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 78
    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 79
    invoke-virtual {v6}, Landroid/os/Message;->recycle()V

    goto :goto_5

    :cond_0
    move v3, v4

    .line 84
    :goto_5
    :try_start_4
    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    if-nez v6, :cond_1

    return-void

    .line 89
    :cond_1
    iget-object v7, p0, Lapd$1;->a:Lapd;

    invoke-static {v7}, Lapd;->a(Lapd;)V

    .line 91
    invoke-virtual {v6}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    if-eqz v3, :cond_2

    .line 94
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 96
    :cond_2
    invoke-virtual {v6}, Landroid/os/Message;->recycle()V

    .line 98
    :goto_6
    iget-object v6, p0, Lapd$1;->a:Lapd;

    invoke-static {v6}, Lapd;->b(Lapd;)V
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_a

    goto :goto_5

    :catch_a
    move-exception v1

    .line 104
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    const-string v1, "lib_Bughunter InvocationTargetException"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_b
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const-string v1, "lib_Bughunter IllegalAccessException"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void
.end method
