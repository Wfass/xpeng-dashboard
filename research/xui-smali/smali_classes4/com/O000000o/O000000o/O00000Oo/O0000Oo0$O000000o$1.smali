.class Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o$1;
.super Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0<",
        "TK;TV;>.O00000o0<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o;


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o;)V
    .locals 1

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o$1;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o;

    iget-object p1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;-><init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$1;)V

    return-void
.end method


# virtual methods
.method public O000000o()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o$1;->O00000Oo()Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o$1;->O000000o()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
