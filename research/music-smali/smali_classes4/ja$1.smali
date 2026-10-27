.class Lja$1;
.super Lja$b;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja;->a(Lcom/O000000o/O000000o/e;Ljava/lang/reflect/Field;Ljava/lang/String;Ljk;ZZ)Lja$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/O000000o/O000000o/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/q<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/O000000o/O000000o/e;

.field final synthetic c:Ljk;

.field final synthetic d:Ljava/lang/reflect/Field;

.field final synthetic e:Z

.field final synthetic f:Lja;


# direct methods
.method constructor <init>(Lja;Ljava/lang/String;ZZLcom/O000000o/O000000o/e;Ljk;Ljava/lang/reflect/Field;Z)V
    .locals 0

    iput-object p1, p0, Lja$1;->f:Lja;

    iput-object p5, p0, Lja$1;->b:Lcom/O000000o/O000000o/e;

    iput-object p6, p0, Lja$1;->c:Ljk;

    iput-object p7, p0, Lja$1;->d:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lja$1;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lja$b;-><init>(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lja$1;->b:Lcom/O000000o/O000000o/e;

    iget-object p2, p0, Lja$1;->c:Ljk;

    invoke-virtual {p1, p2}, Lcom/O000000o/O000000o/e;->a(Ljk;)Lcom/O000000o/O000000o/q;

    move-result-object p1

    iput-object p1, p0, Lja$1;->a:Lcom/O000000o/O000000o/q;

    return-void
.end method


# virtual methods
.method a(Ljg;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lja$1;->a:Lcom/O000000o/O000000o/q;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/q;->a(Ljg;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lja$1;->e:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lja$1;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method a(Ljh;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lja$1;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Ljc;

    iget-object v1, p0, Lja$1;->b:Lcom/O000000o/O000000o/e;

    iget-object v2, p0, Lja$1;->a:Lcom/O000000o/O000000o/q;

    iget-object v3, p0, Lja$1;->c:Ljk;

    invoke-virtual {v3}, Ljk;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljc;-><init>(Lcom/O000000o/O000000o/e;Lcom/O000000o/O000000o/q;Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/q;->a(Ljh;Ljava/lang/Object;)V

    return-void
.end method
