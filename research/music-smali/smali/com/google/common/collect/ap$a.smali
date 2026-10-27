.class Lcom/google/common/collect/ap$a;
.super Lcom/google/common/collect/Multisets$a;
.source "ObjectCountHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$a<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field b:I

.field final synthetic c:Lcom/google/common/collect/ap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ap;I)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/google/common/collect/ap$a;->c:Lcom/google/common/collect/ap;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$a;-><init>()V

    .line 210
    iget-object p1, p1, Lcom/google/common/collect/ap;->a:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/ap$a;->a:Ljava/lang/Object;

    .line 211
    iput p2, p0, Lcom/google/common/collect/ap$a;->b:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 220
    iget v0, p0, Lcom/google/common/collect/ap$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/ap$a;->c:Lcom/google/common/collect/ap;

    .line 221
    invoke-virtual {v1}, Lcom/google/common/collect/ap;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ap$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ap$a;->c:Lcom/google/common/collect/ap;

    iget-object v1, v1, Lcom/google/common/collect/ap;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ap$a;->b:I

    aget-object v1, v1, v2

    .line 222
    invoke-static {v0, v1}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ap$a;->c:Lcom/google/common/collect/ap;

    iget-object v1, p0, Lcom/google/common/collect/ap$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ap;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ap$a;->b:I

    :cond_1
    return-void
.end method

.method public b()I
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/google/common/collect/ap$a;->a()V

    .line 231
    iget v0, p0, Lcom/google/common/collect/ap$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ap$a;->c:Lcom/google/common/collect/ap;

    iget-object v0, v0, Lcom/google/common/collect/ap;->b:[I

    iget v1, p0, Lcom/google/common/collect/ap$a;->b:I

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/google/common/collect/ap$a;->a:Ljava/lang/Object;

    return-object v0
.end method
