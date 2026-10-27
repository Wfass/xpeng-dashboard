.class Lcom/google/android/material/internal/h$g;
.super Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/h;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/google/android/material/internal/h$g;->a:Lcom/google/android/material/internal/h;

    .line 777
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V
    .locals 1

    .line 783
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V

    .line 784
    iget-object p1, p0, Lcom/google/android/material/internal/h$g;->a:Lcom/google/android/material/internal/h;

    iget-object p1, p1, Lcom/google/android/material/internal/h;->c:Lcom/google/android/material/internal/h$b;

    invoke-virtual {p1}, Lcom/google/android/material/internal/h$b;->d()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lgu$b;->a(IIZ)Lgu$b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgu;->a(Ljava/lang/Object;)V

    return-void
.end method
