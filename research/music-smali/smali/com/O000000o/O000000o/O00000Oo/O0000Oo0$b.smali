.class abstract Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;
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
    name = "b"
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
.field b:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;


# direct methods
.method private constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->e:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->e:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    iget-object p1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->e:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;

    iget-object p1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;->d:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->b:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->c:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;

    iget-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->e:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    iget p1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->d:I

    iput p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;-><init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;)V

    return-void
.end method


# virtual methods
.method final b()Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->b:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->e:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    iget-object v1, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->e:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->e:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    iget v1, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->d:I

    iget v2, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->d:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;->d:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;

    iput-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->b:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->c:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;

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

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->b:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->e:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    iget-object v1, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->e:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;

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

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->c:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->e:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->a(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->c:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$a;

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->e:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    iget v0, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->d:I

    iput v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$b;->d:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
