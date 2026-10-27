.class Lcom/O000000o/O000000o/e$5;
.super Lcom/O000000o/O000000o/q;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/e;->a(Lcom/O000000o/O000000o/o;)Lcom/O000000o/O000000o/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/q<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/O000000o/O000000o/e;


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/e;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/e$5;->a:Lcom/O000000o/O000000o/e;

    invoke-direct {p0}, Lcom/O000000o/O000000o/q;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljg;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/e$5;->b(Ljg;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljh;Ljava/lang/Number;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljh;->f()Ljh;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljh;->b(Ljava/lang/String;)Ljh;

    return-void
.end method

.method public bridge synthetic a(Ljh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/e$5;->a(Ljh;Ljava/lang/Number;)V

    return-void
.end method

.method public b(Ljg;)Ljava/lang/Number;
    .locals 2

    invoke-virtual {p1}, Ljg;->f()Lji;

    move-result-object v0

    sget-object v1, Lji;->O0000Oo0:Lji;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljg;->j()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljg;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
