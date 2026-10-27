.class public abstract Lcom/google/common/reflect/b;
.super Lcom/google/common/reflect/a;
.source "Invokable.java"

# interfaces
.implements Ljava/lang/reflect/GenericDeclaration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/a;",
        "Ljava/lang/reflect/GenericDeclaration;"
    }
.end annotation


# virtual methods
.method public a()Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/google/common/reflect/b;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/google/common/reflect/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 165
    invoke-super {p0}, Lcom/google/common/reflect/a;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/reflect/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/google/common/reflect/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
