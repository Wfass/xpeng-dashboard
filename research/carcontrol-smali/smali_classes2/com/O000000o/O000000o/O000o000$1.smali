.class Lcom/O000000o/O000000o/O000o000$1;
.super Lcom/O000000o/O000000o/O000o000;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O000o000;->O000000o()Lcom/O000000o/O000000o/O000o000;
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
.field final synthetic O000000o:Lcom/O000000o/O000000o/O000o000;


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O000o000;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O000o000$1;->O000000o:Lcom/O000000o/O000000o/O000o000;

    invoke-direct {p0}, Lcom/O000000o/O000000o/O000o000;-><init>()V

    return-void
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

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O000o000$1;->O000000o:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;
    .locals 2
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

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v0

    sget-object v1, Lcom/O000000o/O000000o/O00000o/O00000o0;->O0000Oo0:Lcom/O000000o/O000000o/O00000o/O00000o0;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000Oo()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O000o000$1;->O000000o:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
