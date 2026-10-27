.class public Lcom/xiaopeng/musicradio/commonui/base/b;
.super Landroid/view/ContextThemeWrapper;
.source "FragmentContextWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/commonui/base/b$b;,
        Lcom/xiaopeng/musicradio/commonui/base/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/commonui/base/b$b;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FragmentContextWrapper: ============"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentContextWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/RequestManager;
    .locals 8

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b;->a:Lcom/xiaopeng/musicradio/commonui/base/b$b;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create====: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentContextWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/base/b$b;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/musicradio/commonui/base/b$1;

    invoke-direct {v5, p0}, Lcom/xiaopeng/musicradio/commonui/base/b$1;-><init>(Lcom/xiaopeng/musicradio/commonui/base/b;)V

    new-instance v6, Lcom/xiaopeng/musicradio/commonui/base/b$a;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Lcom/xiaopeng/musicradio/commonui/base/b$a;-><init>(Lcom/xiaopeng/musicradio/commonui/base/b$1;)V

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/b;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/musicradio/commonui/base/b$b;-><init>(Lcom/xiaopeng/musicradio/commonui/base/b;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b;->a:Lcom/xiaopeng/musicradio/commonui/base/b$b;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b;->a:Lcom/xiaopeng/musicradio/commonui/base/b$b;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b;->a:Lcom/xiaopeng/musicradio/commonui/base/b$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destory====: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentContextWrapper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b;->a:Lcom/xiaopeng/musicradio/commonui/base/b$b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/base/b$b;->onStop()V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b;->a:Lcom/xiaopeng/musicradio/commonui/base/b$b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/commonui/base/b$b;->a(Lcom/xiaopeng/musicradio/commonui/base/b$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b;->a:Lcom/xiaopeng/musicradio/commonui/base/b$b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/base/b$b;->onDestroy()V

    .line 58
    :cond_0
    iput-object v1, p0, Lcom/xiaopeng/musicradio/commonui/base/b;->a:Lcom/xiaopeng/musicradio/commonui/base/b$b;

    :cond_1
    if-eqz p1, :cond_2

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 61
    iput-object v1, p0, Lcom/xiaopeng/musicradio/commonui/base/b;->c:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParentView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentContextWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public b()Landroid/view/ViewGroup;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 87
    :cond_0
    invoke-super {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
