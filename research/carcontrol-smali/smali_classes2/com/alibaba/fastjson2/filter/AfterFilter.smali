.class public abstract Lcom/alibaba/fastjson2/filter/AfterFilter;
.super Ljava/lang/Object;
.source "AfterFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/Filter;


# static fields
.field private static final writerLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/alibaba/fastjson2/JSONWriter;",
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

    sput-object v0, Lcom/alibaba/fastjson2/filter/AfterFilter;->writerLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeAfter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 2

    .line 10
    sget-object v0, Lcom/alibaba/fastjson2/filter/AfterFilter;->writerLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/JSONWriter;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/filter/AfterFilter;->writeAfter(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract writeAfter(Ljava/lang/Object;)V
.end method

.method protected final writeKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 17
    sget-object v0, Lcom/alibaba/fastjson2/filter/AfterFilter;->writerLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/JSONWriter;

    .line 18
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    .line 19
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 21
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->removeReference(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
