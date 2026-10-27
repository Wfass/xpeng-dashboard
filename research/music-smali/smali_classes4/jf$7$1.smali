.class Ljf$7$1;
.super Lcom/O000000o/O000000o/q;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljf$7;->a(Lcom/O000000o/O000000o/e;Ljk;)Lcom/O000000o/O000000o/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/q<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/O000000o/O000000o/q;

.field final synthetic b:Ljf$7;


# direct methods
.method constructor <init>(Ljf$7;Lcom/O000000o/O000000o/q;)V
    .locals 0

    iput-object p1, p0, Ljf$7$1;->b:Ljf$7;

    iput-object p2, p0, Ljf$7$1;->a:Lcom/O000000o/O000000o/q;

    invoke-direct {p0}, Lcom/O000000o/O000000o/q;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljg;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljf$7$1;->b(Ljg;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Ljf$7$1;->a(Ljh;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public a(Ljh;Ljava/sql/Timestamp;)V
    .locals 1

    iget-object v0, p0, Ljf$7$1;->a:Lcom/O000000o/O000000o/q;

    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/q;->a(Ljh;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljg;)Ljava/sql/Timestamp;
    .locals 3

    iget-object v0, p0, Ljf$7$1;->a:Lcom/O000000o/O000000o/q;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/q;->a(Ljg;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
