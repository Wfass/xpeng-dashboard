.class Lcom/google/android/material/appbar/CollapsingToolbarLayout$1;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$1;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lgr;)Lgr;
    .locals 0

    .line 252
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$1;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onWindowInsetChanged(Lgr;)Lgr;

    move-result-object p1

    return-object p1
.end method
