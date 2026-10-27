.class Led$1;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Led$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Led;->a([Let$b;I)Let$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Led$a<",
        "Let$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Led;


# direct methods
.method constructor <init>(Led;)V
    .locals 0

    .line 100
    iput-object p1, p0, Led$1;->a:Led;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Let$b;)I
    .locals 0

    .line 103
    invoke-virtual {p1}, Let$b;->c()I

    move-result p1

    return p1
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 100
    check-cast p1, Let$b;

    invoke-virtual {p0, p1}, Led$1;->b(Let$b;)Z

    move-result p1

    return p1
.end method

.method public synthetic b(Ljava/lang/Object;)I
    .locals 0

    .line 100
    check-cast p1, Let$b;

    invoke-virtual {p0, p1}, Led$1;->a(Let$b;)I

    move-result p1

    return p1
.end method

.method public b(Let$b;)Z
    .locals 0

    .line 108
    invoke-virtual {p1}, Let$b;->d()Z

    move-result p1

    return p1
.end method
