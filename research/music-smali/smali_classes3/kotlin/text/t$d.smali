.class final Lkotlin/text/t$d;
.super Lccg;
.source "Strings.kt"

# interfaces
.implements Lcas;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/t;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/sequences/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccg;",
        "Lcas<",
        "Lkotlin/ranges/IntRange;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lkotlin/text/t$d;->a:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lccg;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/ranges/IntRange;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1288
    iget-object v0, p0, Lkotlin/text/t$d;->a:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lkotlin/text/j;->a(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1288
    check-cast p1, Lkotlin/ranges/IntRange;

    invoke-virtual {p0, p1}, Lkotlin/text/t$d;->a(Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
