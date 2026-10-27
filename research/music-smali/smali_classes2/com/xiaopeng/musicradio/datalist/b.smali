.class public Lcom/xiaopeng/musicradio/datalist/b;
.super Ljava/lang/Object;
.source "DataDirtyModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/datalist/b$a;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaopeng/musicradio/datalist/b$a;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/b;->a:Z

    .line 9
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/datalist/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private varargs a([Ljava/lang/Object;)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/b$a;

    .line 36
    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/datalist/b$a;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/b;->c:Z

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/datalist/b$a;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public varargs a(ZZ[Ljava/lang/Object;)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/datalist/b;->a:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 24
    invoke-direct {p0, p3}, Lcom/xiaopeng/musicradio/datalist/b;->a([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs a(Z[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/musicradio/datalist/b;->a(ZZ[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/datalist/b$a;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/b;->c:Z

    return v0
.end method
