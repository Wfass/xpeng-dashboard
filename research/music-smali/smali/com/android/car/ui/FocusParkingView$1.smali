.class Lcom/android/car/ui/FocusParkingView$1;
.super Ljava/lang/Object;
.source "FocusParkingView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/ui/FocusParkingView;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic b:Lcom/android/car/ui/FocusParkingView;


# direct methods
.method constructor <init>(Lcom/android/car/ui/FocusParkingView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/android/car/ui/FocusParkingView$1;->b:Lcom/android/car/ui/FocusParkingView;

    iput-object p2, p0, Lcom/android/car/ui/FocusParkingView$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/android/car/ui/FocusParkingView$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEvent(I)V

    .line 366
    iget-object v0, p0, Lcom/android/car/ui/FocusParkingView$1;->b:Lcom/android/car/ui/FocusParkingView;

    invoke-virtual {v0}, Lcom/android/car/ui/FocusParkingView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
