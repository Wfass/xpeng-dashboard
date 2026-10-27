.class public abstract Lbqo;
.super Lme/drakeet/multitype/c;
.source "BaseMusicItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lme/drakeet/multitype/c<",
        "TT;TVH;>;"
    }
.end annotation


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 21
    iget v0, p0, Lbqo;->a:I

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 2

    .line 17
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v0

    invoke-virtual {p0}, Lbqo;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaopeng/musicradio/utils/ae;->b(ILandroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 25
    iput p1, p0, Lbqo;->a:I

    return-void
.end method
