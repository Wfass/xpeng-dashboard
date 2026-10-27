.class public Lboi;
.super Ljava/lang/Object;
.source "BaseSearchItem.java"


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

.field private c:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lboi;->a:Ljava/util/List;

    .line 20
    iget-object v0, p0, Lboi;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    iput p2, p0, Lboi;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 25
    iget v0, p0, Lboi;->b:I

    return v0
.end method

.method public a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lboi;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

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

    .line 29
    iget-object v0, p0, Lboi;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
    .locals 1

    .line 33
    iget-object v0, p0, Lboi;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-object v0
.end method
