.class public final Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
.super Lcom/google/android/material/behavior/SwipeDismissBehavior;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method protected constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 706
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>.Behavior;"
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 709
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>.Behavior;"
    instance-of v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    return v0
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 706
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>.Behavior;"
    check-cast p2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 715
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>.Behavior;"
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->handleBehaviorTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;Landroid/view/MotionEvent;)V

    .line 716
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
