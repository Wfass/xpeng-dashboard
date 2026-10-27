.class Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15$1;
.super Lcom/O000000o/O000000o/O000o000;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15;->O000000o(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/O000o000<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/O000000o/O000000o/O000o000;

.field final synthetic O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15;


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15;Lcom/O000000o/O000000o/O000o000;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15$1;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15;

    iput-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15$1;->O000000o:Lcom/O000000o/O000000o/O000o000;

    invoke-direct {p0}, Lcom/O000000o/O000000o/O000o000;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/sql/Timestamp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15$1;->O000000o:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

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

.method public bridge synthetic O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15$1;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15$1;->O000000o:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$15$1;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method
