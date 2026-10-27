.class Lcom/O000000o/O000000o/O00000Oo/c$1;
.super Lcom/O000000o/O000000o/q;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O00000Oo/c;->a(Lcom/O000000o/O000000o/e;Ljk;)Lcom/O000000o/O000000o/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/O000000o/O000000o/e;

.field final synthetic d:Ljk;

.field final synthetic e:Lcom/O000000o/O000000o/O00000Oo/c;

.field private f:Lcom/O000000o/O000000o/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/q<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O00000Oo/c;ZZLcom/O000000o/O000000o/e;Ljk;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/c$1;->e:Lcom/O000000o/O000000o/O00000Oo/c;

    iput-boolean p2, p0, Lcom/O000000o/O000000o/O00000Oo/c$1;->a:Z

    iput-boolean p3, p0, Lcom/O000000o/O000000o/O00000Oo/c$1;->b:Z

    iput-object p4, p0, Lcom/O000000o/O000000o/O00000Oo/c$1;->c:Lcom/O000000o/O000000o/e;

    iput-object p5, p0, Lcom/O000000o/O000000o/O00000Oo/c$1;->d:Ljk;

    invoke-direct {p0}, Lcom/O000000o/O000000o/q;-><init>()V

    return-void
.end method

.method private a()Lcom/O000000o/O000000o/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/O000000o/O000000o/q<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/c$1;->f:Lcom/O000000o/O000000o/q;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/c$1;->c:Lcom/O000000o/O000000o/e;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/c$1;->e:Lcom/O000000o/O000000o/O00000Oo/c;

    iget-object v2, p0, Lcom/O000000o/O000000o/O00000Oo/c$1;->d:Ljk;

    invoke-virtual {v0, v1, v2}, Lcom/O000000o/O000000o/e;->a(Lcom/O000000o/O000000o/p;Ljk;)Lcom/O000000o/O000000o/q;

    move-result-object v0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/c$1;->f:Lcom/O000000o/O000000o/q;

    :goto_0
    return-object v0
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

    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00000Oo/c$1;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljg;->n()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000Oo/c$1;->a()Lcom/O000000o/O000000o/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/q;->a(Ljg;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00000Oo/c$1;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljh;->f()Ljh;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000Oo/c$1;->a()Lcom/O000000o/O000000o/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/q;->a(Ljh;Ljava/lang/Object;)V

    return-void
.end method
