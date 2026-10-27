.class public Lcom/android/car/ui/a;
.super Landroidx/appcompat/app/g;
.source "CarUiLayoutInflaterFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/appcompat/app/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 51
    const-class v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p1}, Laik;->a(Landroid/content/Context;)Laij;

    move-result-object p2

    .line 53
    invoke-interface {p2, p1, p3}, Laij;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->getView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "CarUiTextView"

    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-static {p1}, Laik;->a(Landroid/content/Context;)Laij;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Laij;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lait;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p1, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object p1, p2

    goto :goto_0

    :cond_2
    const-string v0, "TextView"

    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 67
    invoke-static {p1}, Laik;->a(Landroid/content/Context;)Laij;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Laij;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lait;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 78
    invoke-static {p1, p2}, Lait;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lait;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 90
    invoke-virtual {p0, p3, p2, p4}, Lcom/android/car/ui/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
