.class Led$2;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Led$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Led;->a(Ldp$b;I)Ldp$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Led$a<",
        "Ldp$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Led;


# direct methods
.method constructor <init>(Led;)V
    .locals 0

    .line 154
    iput-object p1, p0, Led$2;->a:Led;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldp$c;)I
    .locals 0

    .line 157
    invoke-virtual {p1}, Ldp$c;->b()I

    move-result p1

    return p1
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 154
    check-cast p1, Ldp$c;

    invoke-virtual {p0, p1}, Led$2;->b(Ldp$c;)Z

    move-result p1

    return p1
.end method

.method public synthetic b(Ljava/lang/Object;)I
    .locals 0

    .line 154
    check-cast p1, Ldp$c;

    invoke-virtual {p0, p1}, Led$2;->a(Ldp$c;)I

    move-result p1

    return p1
.end method

.method public b(Ldp$c;)Z
    .locals 0

    .line 162
    invoke-virtual {p1}, Ldp$c;->c()Z

    move-result p1

    return p1
.end method
