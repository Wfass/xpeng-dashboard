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


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TK;>;"
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
    .locals 2
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

    iput-object v0, p0, Lbrave/propagation/B3Propagation;->a:Ljava/lang/Object;

    const-string v0, "X-B3-TraceId"

    .line 54
    invoke-interface {p1, v0}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/B3Propagation;->b:Ljava/lang/Object;

    const-string v0, "X-B3-SpanId"

    .line 55
    invoke-interface {p1, v0}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/B3Propagation;->c:Ljava/lang/Object;

    const-string v0, "X-B3-ParentSpanId"

    .line 56
    invoke-interface {p1, v0}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/B3Propagation;->d:Ljava/lang/Object;

    const-string v0, "X-B3-Sampled"

    .line 57
    invoke-interface {p1, v0}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/B3Propagation;->e:Ljava/lang/Object;

    const-string v0, "X-B3-Flags"

    .line 58
    invoke-interface {p1, v0}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lbrave/propagation/B3Propagation;->f:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 59
    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lbrave/propagation/B3Propagation;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lbrave/propagation/B3Propagation;->b:Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iget-object v0, p0, Lbrave/propagation/B3Propagation;->c:Ljava/lang/Object;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iget-object v0, p0, Lbrave/propagation/B3Propagation;->d:Ljava/lang/Object;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    iget-object v0, p0, Lbrave/propagation/B3Propagation;->e:Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v0, p1, v1

    iget-object v0, p0, Lbrave/propagation/B3Propagation;->f:Ljava/lang/Object;

    const/4 v1, 0x5

    aput-object v0, p1, v1

    .line 60
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 59
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lbrave/propagation/B3Propagation;->g:Ljava/util/List;

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

    if-eqz p1, :cond_0

    .line 99
    new-instance v0, Lbrave/propagation/B3Propagation$B3Extractor;

    invoke-direct {v0, p0, p1}, Lbrave/propagation/B3Propagation$B3Extractor;-><init>(Lbrave/propagation/B3Propagation;Lbrave/propagation/Propagation$Getter;)V

    return-object v0

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "getter == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz p1, :cond_0

    .line 70
    new-instance v0, Lbrave/propagation/B3Propagation$B3Injector;

    invoke-direct {v0, p0, p1}, Lbrave/propagation/B3Propagation$B3Injector;-><init>(Lbrave/propagation/B3Propagation;Lbrave/propagation/Propagation$Setter;)V

    return-object v0

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "setter == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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
    iget-object v0, p0, Lbrave/propagation/B3Propagation;->g:Ljava/util/List;

    return-object v0
.end method
