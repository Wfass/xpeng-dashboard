.class abstract Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "O00000o0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field O00000o:I

.field O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;


# direct methods
.method private constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;)V
    .locals 1

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v0, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget p1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o:I

    iput p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000o:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;-><init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;)V

    return-void
.end method


# virtual methods
.method final O00000Oo()Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    iget-object v1, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    iget v1, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o:I

    iget v2, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000o:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    iget-object v1, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    iget v0, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o:I

    iput v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;->O00000o:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
