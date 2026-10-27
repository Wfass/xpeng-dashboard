.class Lcom/O000000o/O000000o/O0000OOo$3;
.super Lcom/O000000o/O000000o/O000o000;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O0000OOo;->O000000o(Z)Lcom/O000000o/O000000o/O000o000;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/O000o000<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/O000000o/O000000o/O0000OOo;


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O0000OOo;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O0000OOo$3;->O000000o:Lcom/O000000o/O000000o/O0000OOo;

    invoke-direct {p0}, Lcom/O000000o/O000000o/O000o000;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Double;
    .locals 2
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
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000OoO()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Number;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/O000000o/O000000o/O0000OOo$3;->O000000o:Lcom/O000000o/O000000o/O0000OOo;

    invoke-static {v2, v0, v1}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O0000OOo;D)V

    invoke-virtual {p1, p2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(Ljava/lang/Number;)Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void
.end method

.method public bridge synthetic O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O0000OOo$3;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O0000OOo$3;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
