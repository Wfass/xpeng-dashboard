.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 0

    .line 790
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object p1, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;)V

    .line 791
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    return-void
.end method
