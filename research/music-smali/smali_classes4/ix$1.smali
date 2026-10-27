.class final Lix$1;
.super Ljava/lang/Object;
.source "DateTypeAdapter.java"

# interfaces
.implements Lcom/O000000o/O000000o/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/O000000o/O000000o/e;Ljk;)Lcom/O000000o/O000000o/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/O000000o/O000000o/e;",
            "Ljk<",
            "TT;>;)",
            "Lcom/O000000o/O000000o/q<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Ljk;->a()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/util/Date;

    if-ne p1, p2, :cond_0

    new-instance p1, Lix;

    invoke-direct {p1}, Lix;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
