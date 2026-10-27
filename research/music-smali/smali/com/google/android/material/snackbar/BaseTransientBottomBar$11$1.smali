.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$11$1;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11$1;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11$1;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c(I)V

    return-void
.end method
