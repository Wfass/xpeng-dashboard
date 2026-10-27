.class final Lcom/google/common/util/concurrent/a$e;
.super Lcom/google/common/util/concurrent/a$a;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/a$k;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/a$k;",
            "Lcom/google/common/util/concurrent/a$k;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/a;",
            "Lcom/google/common/util/concurrent/a$k;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/a;",
            "Lcom/google/common/util/concurrent/a$d;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/a$k;",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/a$k;",
            "Lcom/google/common/util/concurrent/a$k;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/a;",
            "Lcom/google/common/util/concurrent/a$k;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/a;",
            "Lcom/google/common/util/concurrent/a$d;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/a;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1263
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a$a;-><init>(Lcom/google/common/util/concurrent/a$1;)V

    .line 1264
    iput-object p1, p0, Lcom/google/common/util/concurrent/a$e;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1265
    iput-object p2, p0, Lcom/google/common/util/concurrent/a$e;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1266
    iput-object p3, p0, Lcom/google/common/util/concurrent/a$e;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1267
    iput-object p4, p0, Lcom/google/common/util/concurrent/a$e;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1268
    iput-object p5, p0, Lcom/google/common/util/concurrent/a$e;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/a$k;Lcom/google/common/util/concurrent/a$k;)V
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$e;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method a(Lcom/google/common/util/concurrent/a$k;Ljava/lang/Thread;)V
    .locals 1

    .line 1273
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$e;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$d;Lcom/google/common/util/concurrent/a$d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;",
            "Lcom/google/common/util/concurrent/a$d;",
            "Lcom/google/common/util/concurrent/a$d;",
            ")Z"
        }
    .end annotation

    .line 1288
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$e;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$k;Lcom/google/common/util/concurrent/a$k;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;",
            "Lcom/google/common/util/concurrent/a$k;",
            "Lcom/google/common/util/concurrent/a$k;",
            ")Z"
        }
    .end annotation

    .line 1283
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$e;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method a(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1293
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$e;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
