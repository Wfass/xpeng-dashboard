.class public interface abstract Lsm;
.super Ljava/lang/Object;
.source "ObjectReaderModule.java"


# virtual methods
.method public a()Lsl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Type;)Lwk;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lqe;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqe;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 24
    invoke-interface {p0}, Lsm;->a()Lsl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p1, p2}, Lsl;->a(Lqe;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 1

    .line 31
    invoke-interface {p0}, Lsm;->a()Lsl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1, p2, p3}, Lsl;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    :cond_0
    return-void
.end method

.method public a(Lzx;)V
    .locals 0

    return-void
.end method

.method public getObjectReader(Lzx;Ljava/lang/reflect/Type;)Lwk;
    .locals 0

    .line 38
    invoke-interface {p0, p2}, Lsm;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    return-object p1
.end method
