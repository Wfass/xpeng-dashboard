.class final Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$22;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/O000000o/O000000o/O000o00;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000000o(Ljava/lang/Class;Ljava/lang/Class;Lcom/O000000o/O000000o/O000o000;)Lcom/O000000o/O000000o/O000o00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Ljava/lang/Class;

.field final synthetic O00000Oo:Ljava/lang/Class;

.field final synthetic O00000o0:Lcom/O000000o/O000000o/O000o000;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/O000000o/O000000o/O000o000;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$22;->O000000o:Ljava/lang/Class;

    iput-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$22;->O00000Oo:Ljava/lang/Class;

    iput-object p3, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$22;->O00000o0:Lcom/O000000o/O000000o/O000o000;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/O000000o/O000000o/O0000OOo;",
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "TT;>;)",
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O000000o()Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$22;->O000000o:Ljava/lang/Class;

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$22;->O00000Oo:Ljava/lang/Class;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$22;->O00000o0:Lcom/O000000o/O000000o/O000o000;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Factory[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$22;->O00000Oo:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$22;->O000000o:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$22;->O00000o0:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
