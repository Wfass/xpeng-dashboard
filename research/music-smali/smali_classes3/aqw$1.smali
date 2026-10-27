.class final Laqw$1;
.super Ljava/lang/Object;
.source "IMMLeaks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqw;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic b:Ljava/lang/reflect/Field;

.field final synthetic c:Ljava/lang/reflect/Field;

.field final synthetic d:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 171
    iput-object p1, p0, Laqw$1;->a:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Laqw$1;->b:Ljava/lang/reflect/Field;

    iput-object p3, p0, Laqw$1;->c:Ljava/lang/reflect/Field;

    iput-object p4, p0, Laqw$1;->d:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .line 175
    new-instance p2, Laqw$a;

    iget-object v0, p0, Laqw$1;->a:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Laqw$1;->b:Ljava/lang/reflect/Field;

    iget-object v2, p0, Laqw$1;->c:Ljava/lang/reflect/Field;

    iget-object v3, p0, Laqw$1;->d:Ljava/lang/reflect/Method;

    invoke-direct {p2, v0, v1, v2, v3}, Laqw$a;-><init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 178
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 180
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
