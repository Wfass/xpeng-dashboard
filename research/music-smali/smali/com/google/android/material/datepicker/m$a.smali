.class public Lcom/google/android/material/datepicker/m$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "YearGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    iput-object p1, p0, Lcom/google/android/material/datepicker/m$a;->a:Landroid/widget/TextView;

    return-void
.end method
