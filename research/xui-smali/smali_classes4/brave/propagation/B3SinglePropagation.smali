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
.field final b3Key:Ljava/lang/Object;
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/Propagation$KeyFactory<",
            "TK;>;)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lbrave/propagation/B3SinglePropagation;, "Lbrave/propagation/B3SinglePropagation<TK;>;"
    .local p1, "keyFactory":Lbrave/propagation/Propagation$KeyFactory;, "Lbrave/propagation/Propagation$KeyFactory<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "b3"

    invoke-interface {p1, v0}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/B3SinglePropagation;->b3Key:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lbrave/propagation/B3SinglePropagation;->b3Key:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/B3SinglePropagation;->fields:Ljava/util/List;

    .line 30
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

    .line 56
    .local p0, "this":Lbrave/propagation/B3SinglePropagation;, "Lbrave/propagation/B3SinglePropagation<TK;>;"
    .local p1, "getter":Lbrave/propagation/Propagation$Getter;, "Lbrave/propagation/Propagation$Getter<TC;TK;>;"
    if-eqz p1, :cond_0

    .line 57
    new-instance v0, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;

    iget-object v1, p0, Lbrave/propagation/B3SinglePropagation;->b3Key:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;-><init>(Ljava/lang/Object;Lbrave/propagation/Propagation$Getter;)V

    return-object v0

    .line 56
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

    .line 37
    .local p0, "this":Lbrave/propagation/B3SinglePropagation;, "Lbrave/propagation/B3SinglePropagation<TK;>;"
    .local p1, "setter":Lbrave/propagation/Propagation$Setter;, "Lbrave/propagation/Propagation$Setter<TC;TK;>;"
    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Lbrave/propagation/B3SinglePropagation$B3SingleInjector;

    invoke-direct {v0, p0, p1}, Lbrave/propagation/B3SinglePropagation$B3SingleInjector;-><init>(Lbrave/propagation/B3SinglePropagation;Lbrave/propagation/Propagation$Setter;)V

    return-object v0

    .line 37
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

    .line 33
    .local p0, "this":Lbrave/propagation/B3SinglePropagation;, "Lbrave/propagation/B3SinglePropagation<TK;>;"
    iget-object v0, p0, Lbrave/propagation/B3SinglePropagation;->fields:Ljava/util/List;

    return-object v0
.end method
