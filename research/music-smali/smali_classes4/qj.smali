.class public abstract Lqj;
.super Ljava/lang/Object;
.source "BeforeFilter.java"

# interfaces
.implements Lqo;


# static fields
.field private static final serializerLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/alibaba/fastjson2/ab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lqj;->serializerLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeBefore(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 2

    .line 10
    sget-object v0, Lqj;->serializerLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/ab;

    .line 11
    sget-object v1, Lqj;->serializerLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p2}, Lqj;->writeBefore(Ljava/lang/Object;)V

    .line 13
    sget-object p1, Lqj;->serializerLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract writeBefore(Ljava/lang/Object;)V
.end method

.method protected final writeKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 17
    sget-object v0, Lqj;->serializerLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/ab;

    .line 18
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/Object;)Z

    move-result v1

    .line 19
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/ab;->p()V

    .line 21
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/ab;->e(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
