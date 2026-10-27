.class Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;
.super Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O00000Oo;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo;->O000000o(Lcom/O000000o/O000000o/O0000OOo;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/O000000o/O000000o/O00000o0/O000000o;ZZ)Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O00000Oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final O000000o:Lcom/O000000o/O000000o/O000o000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O000o000<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic O00000Oo:Lcom/O000000o/O000000o/O0000OOo;

.field final synthetic O00000o:Ljava/lang/reflect/Field;

.field final synthetic O00000o0:Lcom/O000000o/O000000o/O00000o0/O000000o;

.field final synthetic O00000oO:Z

.field final synthetic O00000oo:Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo;


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo;Ljava/lang/String;ZZLcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;Ljava/lang/reflect/Field;Z)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O00000oo:Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo;

    iput-object p5, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O00000Oo:Lcom/O000000o/O000000o/O0000OOo;

    iput-object p6, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O00000o0:Lcom/O000000o/O000000o/O00000o0/O000000o;

    iput-object p7, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O00000o:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O00000oO:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O00000Oo;-><init>(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O00000Oo:Lcom/O000000o/O000000o/O0000OOo;

    iget-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O00000o0:Lcom/O000000o/O000000o/O00000o0/O000000o;

    invoke-virtual {p1, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;

    move-result-object p1

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O000000o:Lcom/O000000o/O000000o/O000o000;

    return-void
.end method


# virtual methods
.method O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O000000o:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O00000oO:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O00000o:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O00000o:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O00000Oo:Lcom/O000000o/O000000o/O0000OOo;

    iget-object v2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O000000o:Lcom/O000000o/O000000o/O000o000;

    iget-object v3, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;->O00000o0:Lcom/O000000o/O000000o/O00000o0/O000000o;

    invoke-virtual {v3}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;-><init>(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O000o000;Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V

    return-void
.end method
