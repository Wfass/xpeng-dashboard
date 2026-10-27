.class final Lcom/google/common/collect/Maps$3;
.super Lcom/google/common/collect/bg;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps;->b(Ljava/util/Set;Lcom/google/common/base/h;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/bg<",
        "TK;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/h;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/h;)V
    .locals 0

    .line 845
    iput-object p2, p0, Lcom/google/common/collect/Maps$3;->a:Lcom/google/common/base/h;

    invoke-direct {p0, p1}, Lcom/google/common/collect/bg;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 845
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$3;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/google/common/collect/Maps$3;->a:Lcom/google/common/base/h;

    invoke-interface {v0, p1}, Lcom/google/common/base/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
