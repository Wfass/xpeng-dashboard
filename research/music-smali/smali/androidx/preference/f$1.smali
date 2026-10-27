.class Landroidx/preference/f$1;
.super Lfh;
.source "PreferenceRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/f;


# direct methods
.method constructor <init>(Landroidx/preference/f;)V
    .locals 0

    .line 61
    iput-object p1, p0, Landroidx/preference/f$1;->a:Landroidx/preference/f;

    invoke-direct {p0}, Lfh;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V
    .locals 2

    .line 64
    iget-object v0, p0, Landroidx/preference/f$1;->a:Landroidx/preference/f;

    iget-object v0, v0, Landroidx/preference/f;->b:Lfh;

    invoke-virtual {v0, p1, p2}, Lfh;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V

    .line 65
    iget-object v0, p0, Landroidx/preference/f$1;->a:Landroidx/preference/f;

    iget-object v0, v0, Landroidx/preference/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 67
    iget-object v0, p0, Landroidx/preference/f$1;->a:Landroidx/preference/f;

    iget-object v0, v0, Landroidx/preference/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 68
    instance-of v1, v0, Landroidx/preference/c;

    if-nez v1, :cond_0

    return-void

    .line 72
    :cond_0
    check-cast v0, Landroidx/preference/c;

    .line 73
    invoke-virtual {v0, p1}, Landroidx/preference/c;->a(I)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 78
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->a(Lgu;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/preference/f$1;->a:Landroidx/preference/f;

    iget-object v0, v0, Landroidx/preference/f;->b:Lfh;

    invoke-virtual {v0, p1, p2, p3}, Lfh;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
