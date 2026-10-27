.class final Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/O000000o/O000000o/O000o00;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;
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
.method public O000000o(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/O000000o/O000000o/O0000OOo;",
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "TT;>;)",
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O000000o()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-class p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Ljava/lang/Class;)Lcom/O000000o/O000000o/O000o000;

    move-result-object p1

    new-instance p2, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15$1;

    invoke-direct {p2, p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15$1;-><init>(Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15;Lcom/O000000o/O000000o/O000o000;)V

    return-object p2
.end method
