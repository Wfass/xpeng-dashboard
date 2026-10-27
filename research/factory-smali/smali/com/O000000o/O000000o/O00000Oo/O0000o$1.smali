.class final Lcom/O000000o/O000000o/O00000Oo/O0000o$1;
.super Lcom/O000000o/O000000o/O00000Oo/O0000o;
.source "UnsafeAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O00000Oo/O0000o;->O000000o()Lcom/O000000o/O000000o/O00000Oo/O0000o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Ljava/lang/reflect/Method;

.field final synthetic O00000Oo:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000o$1;->O000000o:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O0000o$1;->O00000Oo:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000Oo/O0000o;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000o$1;->O000000o:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000o$1;->O00000Oo:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
