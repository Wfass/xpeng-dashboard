.class final Lcom/google/common/graph/m$c$b$a;
.super Ljava/lang/Object;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/m$c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TN;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/graph/m$c$b;


# direct methods
.method constructor <init>(Lcom/google/common/graph/m$c$b;Ljava/lang/Object;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/Iterable<",
            "+TN;>;)V"
        }
    .end annotation

    .line 649
    iput-object p1, p0, Lcom/google/common/graph/m$c$b$a;->c:Lcom/google/common/graph/m$c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p2, p0, Lcom/google/common/graph/m$c$b$a;->a:Ljava/lang/Object;

    .line 651
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/m$c$b$a;->b:Ljava/util/Iterator;

    return-void
.end method
