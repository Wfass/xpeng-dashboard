.class public Lbhw;
.super Ljava/lang/Object;
.source "BaseKugouZoneItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/lang/String;IIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/lang/String;",
            "IIIII)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lbhw;->g:I

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lbhw;->h:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbhw;->a:Ljava/util/List;

    .line 20
    iget-object v0, p0, Lbhw;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    iput p2, p0, Lbhw;->b:I

    .line 22
    iput-object p3, p0, Lbhw;->c:Ljava/lang/String;

    .line 23
    iput p4, p0, Lbhw;->d:I

    .line 24
    iput p5, p0, Lbhw;->e:I

    .line 25
    iput p6, p0, Lbhw;->f:I

    .line 26
    iput p7, p0, Lbhw;->h:I

    .line 27
    iput p8, p0, Lbhw;->i:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 31
    iget v0, p0, Lbhw;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 67
    iput p1, p0, Lbhw;->g:I

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lbhw;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lbhw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 43
    iget v0, p0, Lbhw;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 51
    iget v0, p0, Lbhw;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 59
    iget v0, p0, Lbhw;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 71
    iget v0, p0, Lbhw;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 75
    iget v0, p0, Lbhw;->h:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 83
    iget v0, p0, Lbhw;->i:I

    return v0
.end method
