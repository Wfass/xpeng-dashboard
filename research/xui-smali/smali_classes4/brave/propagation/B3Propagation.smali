.class public final Lbrave/propagation/B3Propagation;
.super Ljava/lang/Object;
.source "B3Propagation.java"

# interfaces
.implements Lbrave/propagation/Propagation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/propagation/B3Propagation$B3Extractor;,
        Lbrave/propagation/B3Propagation$B3Injector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbrave/propagation/Propagation<",
        "TK;>;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lbrave/propagation/Propagation$Factory;

.field static final FLAGS_NAME:Ljava/lang/String; = "X-B3-Flags"

.field static final PARENT_SPAN_ID_NAME:Ljava/lang/String; = "X-B3-ParentSpanId"

.field static final SAMPLED_NAME:Ljava/lang/String; = "X-B3-Sampled"

.field static final SPAN_ID_NAME:Ljava/lang/String; = "X-B3-SpanId"

.field static final TRACE_ID_NAME:Ljava/lang/String; = "X-B3-TraceId"


# instance fields
.field final b3Key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final debugKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation
.end field

.field final parentSpanIdKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final sampledKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final spanIdKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final traceIdKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lbrave/propagation/B3Propagation$1;

    invoke-direct {v0}, Lbrave/propagation/B3Propagation$1;-><init>()V

    sput-object v0, Lbrave/propagation/B3Propagation;->FACTORY:Lbrave/propagation/Propagation$Factory;

    return-void
.end method

.method constructor <init>(Lbrave/propagation/Propagation$KeyFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/Propagation$KeyFactory<",
            "TK;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lbrave/propagation/B3Propagation;, "Lbrave/propagation/B3Propagation<TK;>;"
    .local p1, "keyFactory":Lbrave/propagation/Propagation$KeyFactory;, "Lbrave/propagation/Propagation$KeyFactory<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "b3"

    invoke-interface {p1, v0}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/B3Propagation;->b3Key:Ljava/lang/Object;

    .line 54
    const-string v0, "X-B3-TraceId"

    invoke-interface {p1, v0}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/B3Propagation;->traceIdKey:Ljava/lang/Object;

    .line 55
    const-string v0, "X-B3-SpanId"

    invoke-interface {p1, v0}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/B3Propagation;->spanIdKey:Ljava/lang/Object;

    .line 56
    const-string v0, "X-B3-ParentSpanId"

    invoke-interface {p1, v0}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/B3Propagation;->parentSpanIdKey:Ljava/lang/Object;

    .line 57
    const-string v0, "X-B3-Sampled"

    invoke-interface {p1, v0}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/B3Propagation;->sampledKey:Ljava/lang/Object;

    .line 58
    const-string v0, "X-B3-Flags"

    invoke-interface {p1, v0}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/B3Propagation;->debugKey:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lbrave/propagation/B3Propagation;->b3Key:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lbrave/propagation/B3Propagation;->traceIdKey:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lbrave/propagation/B3Propagation;->spanIdKey:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lbrave/propagation/B3Propagation;->parentSpanIdKey:Ljava/lang/Object;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lbrave/propagation/B3Propagation;->sampledKey:Ljava/lang/Object;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lbrave/propagation/B3Propagation;->debugKey:Ljava/lang/Object;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 60
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/B3Propagation;->fields:Ljava/util/List;

    .line 62
    return-void
.end method


# virtual methods
.method public extractor(Lbrave/propagation/Propagation$Getter;)Lbrave/propagation/TraceContext$Extractor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lbrave/propagation/Propagation$Getter<",
            "TC;TK;>;)",
            "Lbrave/propagation/TraceContext$Extractor<",
            "TC;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lbrave/propagation/B3Propagation;, "Lbrave/propagation/B3Propagation<TK;>;"
    .local p1, "getter":Lbrave/propagation/Propagation$Getter;, "Lbrave/propagation/Propagation$Getter<TC;TK;>;"
    if-eqz p1, :cond_0

    .line 99
    new-instance v0, Lbrave/propagation/B3Propagation$B3Extractor;

    invoke-direct {v0, p0, p1}, Lbrave/propagation/B3Propagation$B3Extractor;-><init>(Lbrave/propagation/B3Propagation;Lbrave/propagation/Propagation$Getter;)V

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "getter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public injector(Lbrave/propagation/Propagation$Setter;)Lbrave/propagation/TraceContext$Injector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lbrave/propagation/Propagation$Setter<",
            "TC;TK;>;)",
            "Lbrave/propagation/TraceContext$Injector<",
            "TC;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lbrave/propagation/B3Propagation;, "Lbrave/propagation/B3Propagation<TK;>;"
    .local p1, "setter":Lbrave/propagation/Propagation$Setter;, "Lbrave/propagation/Propagation$Setter<TC;TK;>;"
    if-eqz p1, :cond_0

    .line 70
    new-instance v0, Lbrave/propagation/B3Propagation$B3Injector;

    invoke-direct {v0, p0, p1}, Lbrave/propagation/B3Propagation$B3Injector;-><init>(Lbrave/propagation/B3Propagation;Lbrave/propagation/Propagation$Setter;)V

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "setter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public keys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lbrave/propagation/B3Propagation;, "Lbrave/propagation/B3Propagation<TK;>;"
    iget-object v0, p0, Lbrave/propagation/B3Propagation;->fields:Ljava/util/List;

    return-object v0
.end method
