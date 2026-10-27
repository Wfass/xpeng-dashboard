.class Laqw$a;
.super Ljava/lang/Object;
.source "IMMLeaks.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/inputmethod/InputMethodManager;

.field private final b:Ljava/lang/reflect/Field;

.field private final c:Ljava/lang/reflect/Field;

.field private final d:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Laqw$a;->a:Landroid/view/inputmethod/InputMethodManager;

    .line 38
    iput-object p2, p0, Laqw$a;->b:Ljava/lang/reflect/Field;

    .line 39
    iput-object p3, p0, Laqw$a;->c:Ljava/lang/reflect/Field;

    .line 40
    iput-object p4, p0, Laqw$a;->d:Ljava/lang/reflect/Method;

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    .line 116
    :goto_0
    instance-of v0, p1, Landroid/app/Application;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 118
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 119
    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 120
    :cond_1
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_3

    .line 121
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_2

    return-object v1

    :cond_2
    move-object p1, v0

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private a()V
    .locals 6

    .line 74
    :try_start_0
    iget-object v0, p0, Laqw$a;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Laqw$a;->a:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 77
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    iget-object v1, p0, Laqw$a;->c:Ljava/lang/reflect/Field;

    iget-object v2, p0, Laqw$a;->a:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_6

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 89
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_3

    .line 92
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Laqw$a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 93
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-eq v2, v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    if-nez v3, :cond_4

    .line 100
    iget-object v1, p0, Laqw$a;->d:Ljava/lang/reflect/Method;

    iget-object v2, p0, Laqw$a;->a:Landroid/view/inputmethod/InputMethodManager;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 102
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->requestFocusFromTouch()Z

    goto :goto_3

    .line 95
    :cond_5
    :goto_2
    iget-object v1, p0, Laqw$a;->d:Ljava/lang/reflect/Method;

    iget-object v2, p0, Laqw$a;->a:Landroid/view/inputmethod/InputMethodManager;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_6
    :goto_3
    monitor-exit v0

    goto :goto_5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_4
    const-string v1, "IMMLeaks"

    const-string v2, "Unexpected reflection exception"

    .line 110
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 51
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 52
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 62
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 63
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public queueIdle()Z
    .locals 1

    .line 68
    invoke-direct {p0}, Laqw$a;->a()V

    const/4 v0, 0x0

    return v0
.end method
