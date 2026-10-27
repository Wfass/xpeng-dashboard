.class public final synthetic Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterProvider$UQLYKcbQxJ-6j0v8xbSHGwYBmhw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/ClassLoader;

.field public final synthetic f$1:Ljava/util/IdentityHashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterProvider$UQLYKcbQxJ-6j0v8xbSHGwYBmhw;->f$0:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterProvider$UQLYKcbQxJ-6j0v8xbSHGwYBmhw;->f$1:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterProvider$UQLYKcbQxJ-6j0v8xbSHGwYBmhw;->f$0:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterProvider$UQLYKcbQxJ-6j0v8xbSHGwYBmhw;->f$1:Ljava/util/IdentityHashMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->lambda$cleanup$2(Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
