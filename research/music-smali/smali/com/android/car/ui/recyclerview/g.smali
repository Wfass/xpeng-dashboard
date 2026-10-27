.class public Lcom/android/car/ui/recyclerview/g;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CarUiListItemAdapter.java"

# interfaces
.implements Lcom/android/car/ui/recyclerview/CarUiRecyclerView$a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/recyclerview/g$a;,
        Lcom/android/car/ui/recyclerview/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/android/car/ui/recyclerview/CarUiRecyclerView$a;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/car/ui/recyclerview/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z

.field private c:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/car/ui/recyclerview/f;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/recyclerview/g;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/car/ui/recyclerview/f;",
            ">;Z)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/android/car/ui/recyclerview/g;->c:I

    .line 73
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/g;->a:Ljava/util/List;

    .line 74
    iput-boolean p2, p0, Lcom/android/car/ui/recyclerview/g;->b:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/android/car/ui/recyclerview/g;->c:I

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 159
    iget v0, p0, Lcom/android/car/ui/recyclerview/g;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g;->a:Ljava/util/List;

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g;->a:Ljava/util/List;

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/car/ui/recyclerview/g;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/car/ui/recyclerview/a;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/car/ui/recyclerview/c;

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    .line 118
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown view type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 123
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Incorrect view holder type for list item."

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 139
    instance-of v0, p1, Lcom/android/car/ui/recyclerview/g$a;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/car/ui/recyclerview/f;

    .line 144
    instance-of v0, p2, Lcom/android/car/ui/recyclerview/c;

    if-eqz v0, :cond_0

    .line 150
    check-cast p1, Lcom/android/car/ui/recyclerview/g$a;

    check-cast p2, Lcom/android/car/ui/recyclerview/c;

    invoke-static {p1, p2}, Lcom/android/car/ui/recyclerview/g$a;->a(Lcom/android/car/ui/recyclerview/g$a;Lcom/android/car/ui/recyclerview/c;)V

    goto :goto_0

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Expected item to be bound to viewHolder to be instance of CarUiHeaderListItem."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown item view type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_3
    instance-of v0, p1, Lcom/android/car/ui/recyclerview/g$b;

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/car/ui/recyclerview/f;

    .line 130
    instance-of v0, p2, Lcom/android/car/ui/recyclerview/a;

    if-eqz v0, :cond_4

    .line 136
    check-cast p1, Lcom/android/car/ui/recyclerview/g$b;

    check-cast p2, Lcom/android/car/ui/recyclerview/a;

    invoke-virtual {p1, p2}, Lcom/android/car/ui/recyclerview/g$b;->a(Lcom/android/car/ui/recyclerview/a;)V

    :goto_0
    return-void

    .line 131
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Expected item to be bound to viewHolder to be instance of CarUiContentListItem."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 92
    new-instance p2, Lcom/android/car/ui/recyclerview/g$a;

    sget v1, Lcom/android/car/ui/e$g;->car_ui_header_list_item:I

    .line 93
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/car/ui/recyclerview/g$a;-><init>(Landroid/view/View;)V

    return-object p2

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown item type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    iget-boolean p2, p0, Lcom/android/car/ui/recyclerview/g;->b:Z

    if-eqz p2, :cond_2

    .line 86
    new-instance p2, Lcom/android/car/ui/recyclerview/g$b;

    sget v1, Lcom/android/car/ui/e$g;->car_ui_list_item_compact:I

    .line 87
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/car/ui/recyclerview/g$b;-><init>(Landroid/view/View;)V

    return-object p2

    .line 89
    :cond_2
    new-instance p2, Lcom/android/car/ui/recyclerview/g$b;

    sget v1, Lcom/android/car/ui/e$g;->car_ui_list_item:I

    .line 90
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/car/ui/recyclerview/g$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method
