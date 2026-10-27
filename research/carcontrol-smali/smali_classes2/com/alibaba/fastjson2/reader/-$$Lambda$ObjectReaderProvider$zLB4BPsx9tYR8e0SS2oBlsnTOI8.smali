.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$zLB4BPsx9tYR8e0SS2oBlsnTOI8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/ClassLoader;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$zLB4BPsx9tYR8e0SS2oBlsnTOI8;->f$0:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$zLB4BPsx9tYR8e0SS2oBlsnTOI8;->f$0:Ljava/lang/ClassLoader;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->lambda$cleanup$0(Ljava/lang/ClassLoader;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
