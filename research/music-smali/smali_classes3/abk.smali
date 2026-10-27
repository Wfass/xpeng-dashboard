.class public Labk;
.super Ljava/lang/Object;
.source "MapMultiValueType.java"

# interfaces
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Map;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/Type;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Labk;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 1

    .line 32
    iget-object v0, p0, Labk;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1
.end method
