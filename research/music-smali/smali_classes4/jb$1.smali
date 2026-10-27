.class final Ljb$1;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"

# interfaces
.implements Lcom/O000000o/O000000o/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljb;
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
    .locals 2
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

    move-result-object p2

    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    new-instance p2, Ljb;

    invoke-direct {p2, p1, v1}, Ljb;-><init>(Lcom/O000000o/O000000o/e;Ljb$1;)V

    return-object p2

    :cond_0
    return-object v1
.end method
