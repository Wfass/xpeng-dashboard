.class final Lcom/google/common/collect/LinkedHashMultimap$a;
.super Lcom/google/common/collect/aa;
.source "LinkedHashMultimap.java"

# interfaces
.implements Lcom/google/common/collect/LinkedHashMultimap$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/aa<",
        "TK;TV;>;",
        "Lcom/google/common/collect/LinkedHashMultimap$b<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final c:I

.field d:Lcom/google/common/collect/LinkedHashMultimap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/collect/LinkedHashMultimap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field h:Lcom/google/common/collect/LinkedHashMultimap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/aa;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    iput p3, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->c:I

    .line 167
    iput-object p4, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->d:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/LinkedHashMultimap$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->g:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-object v0
.end method

.method public a(Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->h:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-void
.end method

.method a(Ljava/lang/Object;I)Z
    .locals 1

    .line 171
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->c:I

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$a;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Lcom/google/common/collect/LinkedHashMultimap$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->h:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-object v0
.end method

.method public b(Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->g:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-void
.end method

.method public getPredecessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->e:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-object v0
.end method

.method public getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->f:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-object v0
.end method

.method public setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->e:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method

.method public setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->f:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method
