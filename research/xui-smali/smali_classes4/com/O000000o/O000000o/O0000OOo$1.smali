.class Lcom/O000000o/O000000o/O0000OOo$1;
.super Ljava/lang/Object;
.source "Gson.java"

# interfaces
.implements Lcom/O000000o/O000000o/O0000o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/O000000o/O000000o/O0000OOo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/O000000o/O000000o/O0000OOo;


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O0000OOo;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O0000OOo$1;->O000000o:Lcom/O000000o/O000000o/O0000OOo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O00oOooO;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/O000000o/O000000o/O00oOooO;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000O0o;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000OOo$1;->O000000o:Lcom/O000000o/O000000o/O0000OOo;

    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00oOooO;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
