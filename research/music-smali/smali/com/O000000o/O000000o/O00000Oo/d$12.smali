.class Lcom/O000000o/O000000o/O00000Oo/d$12;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/O000000o/O000000o/O00000Oo/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O00000Oo/d;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/O000000o/O000000o/O00000Oo/g;
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
.field final synthetic a:Lcom/O000000o/O000000o/O00000Oo/d;


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O00000Oo/d;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/d$12;->a:Lcom/O000000o/O000000o/O00000Oo/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
