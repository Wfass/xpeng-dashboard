.class Lcom/google/android/material/tabs/TabLayout$h$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$h;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/android/material/tabs/TabLayout$h;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout$h;Landroid/view/View;)V
    .locals 0

    .line 2722
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$h$1;->b:Lcom/google/android/material/tabs/TabLayout$h;

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$h$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 2734
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$h$1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2735
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$h$1;->b:Lcom/google/android/material/tabs/TabLayout$h;

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$h$1;->a:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/google/android/material/tabs/TabLayout$h;->a(Lcom/google/android/material/tabs/TabLayout$h;Landroid/view/View;)V

    :cond_0
    return-void
.end method
