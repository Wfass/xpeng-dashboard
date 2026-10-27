.class Lsj$1;
.super Ljava/lang/Object;
.source "TLongIntHashMap.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsj;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Lsj;

.field private c:Z


# direct methods
.method constructor <init>(Lsj;Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 396
    iput-object p1, p0, Lsj$1;->b:Lsj;

    iput-object p2, p0, Lsj$1;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 397
    iput-boolean p1, p0, Lsj$1;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2

    .line 401
    iget-boolean v0, p0, Lsj$1;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lsj$1;->c:Z

    goto :goto_0

    .line 404
    :cond_0
    iget-object v0, p0, Lsj$1;->a:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :goto_0
    iget-object v0, p0, Lsj$1;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    iget-object p1, p0, Lsj$1;->a:Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object p1, p0, Lsj$1;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 409
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 396
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lsj$1;->a(Ljava/lang/Long;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
