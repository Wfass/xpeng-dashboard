.class public interface abstract Lbrave/propagation/Propagation;
.super Ljava/lang/Object;
.source "Propagation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/propagation/Propagation$Getter;,
        Lbrave/propagation/Propagation$Setter;,
        Lbrave/propagation/Propagation$KeyFactory;,
        Lbrave/propagation/Propagation$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final B3_SINGLE_STRING:Lbrave/propagation/Propagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final B3_STRING:Lbrave/propagation/Propagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    sget-object v0, Lbrave/propagation/B3Propagation;->FACTORY:Lbrave/propagation/Propagation$Factory;

    sget-object v1, Lbrave/propagation/Propagation$KeyFactory;->STRING:Lbrave/propagation/Propagation$KeyFactory;

    invoke-virtual {v0, v1}, Lbrave/propagation/Propagation$Factory;->create(Lbrave/propagation/Propagation$KeyFactory;)Lbrave/propagation/Propagation;

    move-result-object v0

    sput-object v0, Lbrave/propagation/Propagation;->B3_STRING:Lbrave/propagation/Propagation;

    .line 24
    sget-object v0, Lbrave/propagation/B3SinglePropagation;->FACTORY:Lbrave/propagation/Propagation$Factory;

    sget-object v1, Lbrave/propagation/Propagation$KeyFactory;->STRING:Lbrave/propagation/Propagation$KeyFactory;

    invoke-virtual {v0, v1}, Lbrave/propagation/Propagation$Factory;->create(Lbrave/propagation/Propagation$KeyFactory;)Lbrave/propagation/Propagation;

    move-result-object v0

    sput-object v0, Lbrave/propagation/Propagation;->B3_SINGLE_STRING:Lbrave/propagation/Propagation;

    return-void
.end method


# virtual methods
.method public abstract extractor(Lbrave/propagation/Propagation$Getter;)Lbrave/propagation/TraceContext$Extractor;
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
.end method

.method public abstract injector(Lbrave/propagation/Propagation$Setter;)Lbrave/propagation/TraceContext$Injector;
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
.end method

.method public abstract keys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation
.end method
