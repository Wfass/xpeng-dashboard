.class Lcom/google/common/collect/ImmutableRangeMap$1;
.super Lcom/google/common/collect/ImmutableList;
.source "ImmutableRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "Lcom/google/common/collect/au<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ad;

.field final synthetic val$len:I

.field final synthetic val$off:I

.field final synthetic val$range:Lcom/google/common/collect/au;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ad;IILcom/google/common/collect/au;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->this$0:Lcom/google/common/collect/ad;

    iput p2, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->val$len:I

    iput p3, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->val$off:I

    iput-object p4, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->val$range:Lcom/google/common/collect/au;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/common/collect/au;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/au<",
            "TK;>;"
        }
    .end annotation

    .line 310
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->val$len:I

    invoke-static {p1, v0}, Lcom/google/common/base/o;->a(II)I

    if-eqz p1, :cond_1

    .line 311
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->val$len:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->this$0:Lcom/google/common/collect/ad;

    invoke-static {v0}, Lcom/google/common/collect/ad;->a(Lcom/google/common/collect/ad;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->val$off:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/au;

    return-object p1

    .line 312
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->this$0:Lcom/google/common/collect/ad;

    invoke-static {v0}, Lcom/google/common/collect/ad;->a(Lcom/google/common/collect/ad;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->val$off:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/au;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->val$range:Lcom/google/common/collect/au;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/au;->c(Lcom/google/common/collect/au;)Lcom/google/common/collect/au;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeMap$1;->get(I)Lcom/google/common/collect/au;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->val$len:I

    return v0
.end method
