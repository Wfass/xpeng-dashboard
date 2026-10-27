.class public Lbhb;
.super Ljava/lang/Object;
.source "BaseDolbyZoneItem.java"


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


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/lang/String;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lbhb;->g:I

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lbhb;->h:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbhb;->a:Ljava/util/List;

    .line 18
    iget-object v0, p0, Lbhb;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    iput p2, p0, Lbhb;->b:I

    .line 20
    iput-object p3, p0, Lbhb;->c:Ljava/lang/String;

    .line 21
    iput p4, p0, Lbhb;->d:I

    .line 22
    iput p5, p0, Lbhb;->e:I

    .line 23
    iput p6, p0, Lbhb;->f:I

    .line 24
    iput p7, p0, Lbhb;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 28
    iget v0, p0, Lbhb;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 64
    iput p1, p0, Lbhb;->g:I

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

    .line 32
    iget-object v0, p0, Lbhb;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lbhb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 40
    iget v0, p0, Lbhb;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 48
    iget v0, p0, Lbhb;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 56
    iget v0, p0, Lbhb;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 68
    iget v0, p0, Lbhb;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 72
    iget v0, p0, Lbhb;->h:I

    return v0
.end method
