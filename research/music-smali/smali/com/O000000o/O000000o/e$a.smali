.class Lcom/O000000o/O000000o/e$a;
.super Lcom/O000000o/O000000o/q;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/O000000o/O000000o/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/O000000o/O000000o/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/O000000o/O000000o/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/q<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/O000000o/O000000o/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljg;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/e$a;->a:Lcom/O000000o/O000000o/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/q;->a(Ljg;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Lcom/O000000o/O000000o/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/q<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/e$a;->a:Lcom/O000000o/O000000o/q;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/O000000o/O000000o/e$a;->a:Lcom/O000000o/O000000o/q;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public a(Ljh;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljh;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/e$a;->a:Lcom/O000000o/O000000o/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/q;->a(Ljh;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
