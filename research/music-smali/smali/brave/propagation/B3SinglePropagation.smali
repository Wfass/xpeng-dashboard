.class public final Lbrave/propagation/B3SinglePropagation;
.super Ljava/lang/Object;
.source "B3SinglePropagation.java"

# interfaces
.implements Lbrave/propagation/Propagation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;,
        Lbrave/propagation/B3SinglePropagation$B3SingleInjector;
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

.field final b:Ljava/util/List;
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

    .line 10
    new-instance v0, Lbrave/propagation/B3SinglePropagation$1;

    invoke-direct {v0}, Lbrave/propagation/B3SinglePropagation$1;-><init>()V

    sput-object v0, Lbrave/propagation/B3SinglePropagation;->FACTORY:Lbrave/propagation/Propagation$Factory;

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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "b3"

    .line 28
    invoke-interface {p1, v0}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lbrave/propagation/B3SinglePropagation;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 29
    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lbrave/propagation/B3SinglePropagation;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lbrave/propagation/B3SinglePropagation;->b:Ljava/util/List;

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

    if-eqz p1, :cond_0

    .line 57
    new-instance v0, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;

    iget-object v1, p0, Lbrave/propagation/B3SinglePropagation;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;-><init>(Ljava/lang/Object;Lbrave/propagation/Propagation$Getter;)V

    return-object v0

    .line 56
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

    .line 38
    new-instance v0, Lbrave/propagation/B3SinglePropagation$B3SingleInjector;

    invoke-direct {v0, p0, p1}, Lbrave/propagation/B3SinglePropagation$B3SingleInjector;-><init>(Lbrave/propagation/B3SinglePropagation;Lbrave/propagation/Propagation$Setter;)V

    return-object v0

    .line 37
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

    .line 33
    iget-object v0, p0, Lbrave/propagation/B3SinglePropagation;->b:Ljava/util/List;

    return-object v0
.end method
