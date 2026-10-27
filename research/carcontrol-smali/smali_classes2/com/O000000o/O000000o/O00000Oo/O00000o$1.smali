.class Lcom/O000000o/O000000o/O00000Oo/O00000o$1;
.super Lcom/O000000o/O000000o/O000o000;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/O000o000<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic O000000o:Z

.field final synthetic O00000Oo:Z

.field final synthetic O00000o:Lcom/O000000o/O000000o/O00000o0/O000000o;

.field final synthetic O00000o0:Lcom/O000000o/O000000o/O0000OOo;

.field final synthetic O00000oO:Lcom/O000000o/O000000o/O00000Oo/O00000o;

.field private O00000oo:Lcom/O000000o/O000000o/O000o000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O00000o;ZZLcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    iput-boolean p2, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;->O000000o:Z

    iput-boolean p3, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;->O00000Oo:Z

    iput-object p4, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;->O00000o0:Lcom/O000000o/O000000o/O0000OOo;

    iput-object p5, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;->O00000o:Lcom/O000000o/O000000o/O00000o0/O000000o;

    invoke-direct {p0}, Lcom/O000000o/O000000o/O000o000;-><init>()V

    return-void
.end method

.method private O00000Oo()Lcom/O000000o/O000000o/O000o000;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;->O00000oo:Lcom/O000000o/O000000o/O000o000;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;->O00000o0:Lcom/O000000o/O000000o/O0000OOo;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    iget-object v2, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;->O00000o:Lcom/O000000o/O000000o/O00000o0/O000000o;

    invoke-virtual {v0, v1, v2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O000o00;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;

    move-result-object v0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;->O00000oo:Lcom/O000000o/O000000o/O000o000;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000o/O00000o;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;->O00000Oo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;->O00000Oo()Lcom/O000000o/O000000o/O000o000;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V

    return-void
.end method

.method public O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000o/O000000o;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;->O000000o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;->O00000Oo()Lcom/O000000o/O000000o/O000o000;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
