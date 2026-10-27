.class Lcom/O000000o/O000000o/O00000Oo/O00000o0$5;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/O000000o/O000000o/O00000Oo/O0000Oo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O00000Oo/O00000o0;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O00000Oo/O0000Oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/O000000o/O000000o/O00000Oo/O0000Oo<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/O000000o/O000000o/O0000Oo;

.field final synthetic O00000Oo:Ljava/lang/reflect/Type;

.field final synthetic O00000o0:Lcom/O000000o/O000000o/O00000Oo/O00000o0;


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O00000o0;Lcom/O000000o/O000000o/O0000Oo;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o0$5;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O00000o0;

    iput-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o0$5;->O000000o:Lcom/O000000o/O000000o/O0000Oo;

    iput-object p3, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o0$5;->O00000Oo:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o0$5;->O000000o:Lcom/O000000o/O000000o/O0000Oo;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o0$5;->O00000Oo:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/O000000o/O000000o/O0000Oo;->O000000o(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
