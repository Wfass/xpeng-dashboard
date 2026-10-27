.class Lcom/O000000o/O000000o/O00000Oo/O00000o0$9;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/O000000o/O000000o/O00000Oo/O0000Oo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O00000Oo/O00000o0;->O000000o(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/O000000o/O000000o/O00000Oo/O0000Oo;
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
.field final synthetic O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o0;


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O00000o0;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o0$9;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o()Ljava/lang/Object;
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
