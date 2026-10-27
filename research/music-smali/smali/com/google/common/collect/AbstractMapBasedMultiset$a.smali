.class abstract Lcom/google/common/collect/AbstractMapBasedMultiset$a;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:I

.field c:I

.field d:I

.field final synthetic e:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iget-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ap;

    invoke-virtual {p1}, Lcom/google/common/collect/ap;->b()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->b:I

    const/4 p1, -0x1

    .line 165
    iput p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->c:I

    .line 166
    iget-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ap;

    iget p1, p1, Lcom/google/common/collect/ap;->d:I

    iput p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->d:I

    return-void
.end method

.method private a()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ap;

    iget v0, v0, Lcom/google/common/collect/ap;->d:I

    iget v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->d:I

    if-ne v0, v1, :cond_0

    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->a()V

    .line 179
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->b:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 188
    iget v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->b:I

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->c:I

    .line 189
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ap;

    iget v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->b:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ap;->b(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->b:I

    return-object v0

    .line 185
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 6

    .line 195
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->a()V

    .line 196
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/m;->a(Z)V

    .line 197
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-wide v2, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    iget-object v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v4, v4, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ap;

    iget v5, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->c:I

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ap;->h(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 198
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ap;

    iget v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->b:I

    iget v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->c:I

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ap;->a(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->b:I

    .line 199
    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->c:I

    .line 200
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ap;

    iget v0, v0, Lcom/google/common/collect/ap;->d:I

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$a;->d:I

    return-void
.end method
