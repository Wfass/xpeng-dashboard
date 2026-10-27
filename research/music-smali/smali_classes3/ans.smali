.class public abstract Lans;
.super Ljava/lang/Object;
.source "AbstractConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lans$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lans;->a:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lans$a;)V
.end method

.method public abstract a(Lcom/nforetek/bt/aidl/l;)V
.end method

.method b()V
    .locals 2

    .line 39
    iget-object v0, p0, Lans;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/nforetek/bt/aidl/l;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lans;->a(Lcom/nforetek/bt/aidl/l;)V

    .line 29
    invoke-virtual {p0}, Lans;->b()V

    return-void
.end method
