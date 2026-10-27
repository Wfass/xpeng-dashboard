.class public abstract Lcom/O000000o/O000000o/q;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/O000000o/O000000o/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/O000000o/O000000o/r;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Liy;

    invoke-direct {v0}, Liy;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/O000000o/O000000o/q;->a(Ljh;Ljava/lang/Object;)V

    invoke-virtual {v0}, Liy;->a()Lcom/O000000o/O000000o/r;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/O000000o/O000000o/h;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/h;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract a(Ljg;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljh;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljh;",
            "TT;)V"
        }
    .end annotation
.end method
