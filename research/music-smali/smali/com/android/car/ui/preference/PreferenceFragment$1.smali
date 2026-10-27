.class Lcom/android/car/ui/preference/PreferenceFragment$1;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/ui/preference/PreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/car/ui/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/car/ui/preference/PreferenceFragment;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/android/car/ui/preference/PreferenceFragment$1;->a:Lcom/android/car/ui/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/android/car/ui/preference/PreferenceFragment$1;->a:Lcom/android/car/ui/preference/PreferenceFragment;

    invoke-static {v0}, Lcom/android/car/ui/preference/PreferenceFragment;->access$000(Lcom/android/car/ui/preference/PreferenceFragment;)Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/car/ui/preference/PreferenceFragment$1;->a:Lcom/android/car/ui/preference/PreferenceFragment;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/ui/preference/PreferenceFragment;->access$002(Lcom/android/car/ui/preference/PreferenceFragment;Landroid/view/ViewParent;)Landroid/view/ViewParent;

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/preference/PreferenceFragment$1;->a:Lcom/android/car/ui/preference/PreferenceFragment;

    invoke-static {v0}, Lcom/android/car/ui/preference/PreferenceFragment;->access$100(Lcom/android/car/ui/preference/PreferenceFragment;)Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    .line 441
    iget-object v1, p0, Lcom/android/car/ui/preference/PreferenceFragment$1;->a:Lcom/android/car/ui/preference/PreferenceFragment;

    invoke-static {v1}, Lcom/android/car/ui/preference/PreferenceFragment;->access$200(Lcom/android/car/ui/preference/PreferenceFragment;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 442
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
