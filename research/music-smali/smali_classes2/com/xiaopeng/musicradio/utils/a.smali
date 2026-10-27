.class public Lcom/xiaopeng/musicradio/utils/a;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/utils/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/utils/a;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/xiaopeng/musicradio/utils/a;->b:I

    .line 25
    iput v0, p0, Lcom/xiaopeng/musicradio/utils/a;->d:I

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/a;->e:Z

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/utils/a;
    .locals 1

    .line 33
    sget-object v0, Lcom/xiaopeng/musicradio/utils/a$a;->a:Lcom/xiaopeng/musicradio/utils/a;

    return-object v0
.end method

.method private a(Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private g()V
    .locals 5

    .line 111
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "managers"

    .line 113
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 115
    monitor-enter v0

    :try_start_0
    const-string v2, "ActivityStack"

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseGlide: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestManager;

    .line 120
    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->onDestroy()V

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 123
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method private h()V
    .locals 2

    const-string v0, "ActivityStack"

    const-string v1, "toForground: ======="

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/a;->e:Z

    .line 144
    new-instance v1, Larv$a;

    invoke-direct {v1, v0}, Larv$a;-><init>(Z)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method private i()V
    .locals 2

    const-string v0, "ActivityStack"

    const-string v1, "toBackground: ========="

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/a;->e:Z

    .line 150
    new-instance v1, Larv$a;

    invoke-direct {v1, v0}, Larv$a;-><init>(Z)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 77
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/a;->a:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " size = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/musicradio/utils/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityStack"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 46
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 92
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "ActivityStack"

    if-eqz v1, :cond_3

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 94
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_1

    :cond_2
    const-string v1, "remove: success ======= "

    .line 96
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 101
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: ====== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " size = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/musicradio/utils/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isBackground = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/utils/a;->e:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/musicradio/utils/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 103
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/utils/a;->e:Z

    if-nez p1, :cond_4

    .line 104
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/a;->i()V

    .line 106
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/a;->g()V

    :cond_5
    return-void
.end method

.method public c()Landroid/app/Activity;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/a;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/utils/a;->c:Ljava/lang/ref/WeakReference;

    .line 155
    iget p1, p0, Lcom/xiaopeng/musicradio/utils/a;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaopeng/musicradio/utils/a;->d:I

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResume: =========="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/musicradio/utils/a;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityStack"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/utils/a;->e:Z

    if-eqz p1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/a;->h()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 129
    iget v0, p0, Lcom/xiaopeng/musicradio/utils/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/musicradio/utils/a;->b:I

    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 2

    .line 163
    iget v0, p0, Lcom/xiaopeng/musicradio/utils/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaopeng/musicradio/utils/a;->d:I

    .line 164
    iget v0, p0, Lcom/xiaopeng/musicradio/utils/a;->d:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/utils/a;->d:I

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause: =========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/utils/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isTop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityStack"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget v0, p0, Lcom/xiaopeng/musicradio/utils/a;->d:I

    if-gtz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/a;->i()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/a;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/musicradio/utils/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/a;->c:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .line 133
    iget v0, p0, Lcom/xiaopeng/musicradio/utils/a;->b:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 134
    iput v0, p0, Lcom/xiaopeng/musicradio/utils/a;->b:I

    .line 136
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/utils/a;->b:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/a;->e:Z

    if-nez v0, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/a;->i()V

    :cond_1
    return-void
.end method

.method public f()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/a;->e:Z

    return v0
.end method
