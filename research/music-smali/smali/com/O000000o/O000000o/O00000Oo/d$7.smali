.class Lcom/O000000o/O000000o/O00000Oo/d$7;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/O000000o/O000000o/O00000Oo/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O00000Oo/d;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/O000000o/O000000o/O00000Oo/g;
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
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/O000000o/O000000o/O00000Oo/d;

.field private final d:Lcom/O000000o/O000000o/O00000Oo/h;


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O00000Oo/d;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/d$7;->c:Lcom/O000000o/O000000o/O00000Oo/d;

    iput-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/d$7;->a:Ljava/lang/Class;

    iput-object p3, p0, Lcom/O000000o/O000000o/O00000Oo/d$7;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/O000000o/O000000o/O00000Oo/h;->a()Lcom/O000000o/O000000o/O00000Oo/h;

    move-result-object p1

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/d$7;->d:Lcom/O000000o/O000000o/O00000Oo/h;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/d$7;->d:Lcom/O000000o/O000000o/O00000Oo/h;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/d$7;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/O000000o/O000000o/O00000Oo/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to invoke no-args constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/O000000o/O000000o/O00000Oo/d$7;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Register an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
