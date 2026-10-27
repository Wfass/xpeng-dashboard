.class public final Lkotlin/collections/builders/b$e;
.super Lkotlin/collections/builders/b$d;
.source "MapBuilder.kt"

# interfaces
.implements Lccp;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/builders/b$d<",
        "TK;TV;>;",
        "Lccp;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/b<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-direct {p0, p1}, Lkotlin/collections/builders/b$d;-><init>(Lkotlin/collections/builders/b;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lkotlin/collections/builders/b$e;->d()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/collections/builders/b$e;->c()Lkotlin/collections/builders/b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/builders/b;->a(Lkotlin/collections/builders/b;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 484
    invoke-virtual {p0}, Lkotlin/collections/builders/b$e;->d()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lkotlin/collections/builders/b$e;->a(I)V

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/b$e;->b(I)V

    .line 485
    invoke-virtual {p0}, Lkotlin/collections/builders/b$e;->c()Lkotlin/collections/builders/b;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/builders/b;->c(Lkotlin/collections/builders/b;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/collections/builders/b$e;->e()I

    move-result v1

    aget-object v0, v0, v1

    .line 486
    invoke-virtual {p0}, Lkotlin/collections/builders/b$e;->f()V

    return-object v0

    .line 483
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
