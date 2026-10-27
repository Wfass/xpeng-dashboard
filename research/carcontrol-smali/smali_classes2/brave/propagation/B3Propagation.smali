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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/Propagation$KeyFactory<",
            "TK;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "b3"

    .line 53
    invoke-interface {p1, v0}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/B3Propagation;->b3Key:Ljava/lang/Object;

    const-string v1, "X-B3-TraceId"

    .line 54
    invoke-interface {p1, v1}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lbrave/propagation/B3Propagation;->traceIdKey:Ljava/lang/Object;

    const-string v2, "X-B3-SpanId"

    .line 55
    invoke-interface {p1, v2}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lbrave/propagation/B3Propagation;->spanIdKey:Ljava/lang/Object;

    const-string v3, "X-B3-ParentSpanId"

    .line 56
    invoke-interface {p1, v3}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lbrave/propagation/B3Propagation;->parentSpanIdKey:Ljava/lang/Object;

    const-string v4, "X-B3-Sampled"

    .line 57
    invoke-interface {p1, v4}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lbrave/propagation/B3Propagation;->sampledKey:Ljava/lang/Object;

    const-string v5, "X-B3-Flags"

    .line 58
    invoke-interface {p1, v5}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lbrave/propagation/B3Propagation;->debugKey:Ljava/lang/Object;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    const/4 v0, 0x5

    aput-object p1, v5, v0

    .line 60
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 59
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lbrave/propagation/B3Propagation;->fields:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public extractor(Lbrave/propagation/Propagation$Getter;)Lbrave/propagation/TraceContext$Extractor;
    .locals 1
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

    const-string v0, "getter == null"

    .line 98
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    new-instance v0, Lbrave/propagation/B3Propagation$B3Extractor;

    invoke-direct {v0, p0, p1}, Lbrave/propagation/B3Propagation$B3Extractor;-><init>(Lbrave/propagation/B3Propagation;Lbrave/propagation/Propagation$Getter;)V

    return-object v0
.end method

.method public injector(Lbrave/propagation/Propagation$Setter;)Lbrave/propagation/TraceContext$Injector;
    .locals 1
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

    const-string/jumbo v0, "setter == null"

    .line 69
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lbrave/propagation/B3Propagation$B3Injector;

    invoke-direct {v0, p0, p1}, Lbrave/propagation/B3Propagation$B3Injector;-><init>(Lbrave/propagation/B3Propagation;Lbrave/propagation/Propagation$Setter;)V

    return-object v0
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
    iget-object v0, p0, Lbrave/propagation/B3Propagation;->fields:Ljava/util/List;

    return-object v0
.end method
