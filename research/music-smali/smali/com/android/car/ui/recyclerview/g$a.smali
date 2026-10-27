.class Lcom/android/car/ui/recyclerview/g$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CarUiListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 423
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 424
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_title:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$a;->a:Landroid/widget/TextView;

    .line 425
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_body:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/g$a;->b:Landroid/widget/TextView;

    return-void
.end method

.method private a(Lcom/android/car/ui/recyclerview/c;)V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/c;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/c;->b()Ljava/lang/CharSequence;

    move-result-object p1

    .line 432
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 435
    :cond_0
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/g$a;->b:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/android/car/ui/recyclerview/g$a;Lcom/android/car/ui/recyclerview/c;)V
    .locals 0

    .line 417
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/g$a;->a(Lcom/android/car/ui/recyclerview/c;)V

    return-void
.end method
