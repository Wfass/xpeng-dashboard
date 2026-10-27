.class Lcom/O000000o/O000000o/O00000Oo/d$8;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/O000000o/O000000o/O00000Oo/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O00000Oo/d;->a(Ljk;)Lcom/O000000o/O000000o/O00000Oo/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/O000000o/O000000o/O00000Oo/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/O000000o/O000000o/f;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/O000000o/O000000o/O00000Oo/d;


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O00000Oo/d;Lcom/O000000o/O000000o/f;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/d$8;->c:Lcom/O000000o/O000000o/O00000Oo/d;

    iput-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/d$8;->a:Lcom/O000000o/O000000o/f;

    iput-object p3, p0, Lcom/O000000o/O000000o/O00000Oo/d$8;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/d$8;->a:Lcom/O000000o/O000000o/f;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/d$8;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/O000000o/O000000o/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
