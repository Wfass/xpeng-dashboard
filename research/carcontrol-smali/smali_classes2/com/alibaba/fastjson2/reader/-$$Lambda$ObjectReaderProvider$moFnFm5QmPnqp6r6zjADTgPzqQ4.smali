.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$moFnFm5QmPnqp6r6zjADTgPzqQ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(JLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$moFnFm5QmPnqp6r6zjADTgPzqQ4;->f$0:J

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$moFnFm5QmPnqp6r6zjADTgPzqQ4;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$moFnFm5QmPnqp6r6zjADTgPzqQ4;->f$0:J

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$moFnFm5QmPnqp6r6zjADTgPzqQ4;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->lambda$createFieldReader$5(JLjava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;)V

    return-void
.end method
