.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 414
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;"
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 417
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;"
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 419
    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 423
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;"
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 427
    :pswitch_0
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->pauseTimeout(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 428
    goto :goto_0

    .line 431
    :pswitch_1
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->restoreTimeoutIfPaused(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 432
    nop

    .line 436
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
