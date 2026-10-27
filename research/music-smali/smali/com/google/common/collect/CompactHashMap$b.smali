.class final Lcom/google/common/collect/CompactHashMap$b;
.super Lcom/google/common/collect/c;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/CompactHashMap;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactHashMap;I)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$b;->a:Lcom/google/common/collect/CompactHashMap;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    .line 637
    iget-object p1, p1, Lcom/google/common/collect/CompactHashMap;->b:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$b;->b:Ljava/lang/Object;

    .line 638
    iput p2, p0, Lcom/google/common/collect/CompactHashMap$b;->c:I

    return-void
.end method

.method private a()V
    .locals 3

    .line 647
    iget v0, p0, Lcom/google/common/collect/CompactHashMap$b;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$b;->a:Lcom/google/common/collect/CompactHashMap;

    .line 648
    invoke-virtual {v1}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$b;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$b;->a:Lcom/google/common/collect/CompactHashMap;

    iget-object v1, v1, Lcom/google/common/collect/CompactHashMap;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$b;->c:I

    aget-object v1, v1, v2

    .line 649
    invoke-static {v0, v1}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$b;->a:Lcom/google/common/collect/CompactHashMap;

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$b;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/CompactHashMap;->a(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$b;->c:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 657
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap$b;->a()V

    .line 658
    iget v0, p0, Lcom/google/common/collect/CompactHashMap$b;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$b;->a:Lcom/google/common/collect/CompactHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CompactHashMap;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$b;->c:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 664
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap$b;->a()V

    .line 665
    iget v0, p0, Lcom/google/common/collect/CompactHashMap$b;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$b;->a:Lcom/google/common/collect/CompactHashMap;

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$b;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/CompactHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$b;->a:Lcom/google/common/collect/CompactHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CompactHashMap;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$b;->c:I

    aget-object v0, v0, v1

    .line 670
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$b;->a:Lcom/google/common/collect/CompactHashMap;

    iget-object v1, v1, Lcom/google/common/collect/CompactHashMap;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$b;->c:I

    aput-object p1, v1, v2

    return-object v0
.end method
