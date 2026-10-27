.class public final Lcom/google/common/cache/f;
.super Ljava/util/AbstractMap$SimpleImmutableEntry;
.source "RemovalNotification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap$SimpleImmutableEntry<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cause:Lcom/google/common/cache/d;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/cache/d;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    invoke-static {p3}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/d;

    iput-object p1, p0, Lcom/google/common/cache/f;->cause:Lcom/google/common/cache/d;

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/d;)Lcom/google/common/cache/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;",
            "Lcom/google/common/cache/d;",
            ")",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/google/common/cache/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/cache/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/d;)V

    return-object v0
.end method
