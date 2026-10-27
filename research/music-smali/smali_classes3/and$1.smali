.class final Land$1;
.super Ljava/lang/Object;
.source "DesignUtil.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Land;->a(Landroid/view/View;Laml;Lamr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamr;


# direct methods
.method constructor <init>(Lamr;)V
    .locals 0

    .line 25
    iput-object p1, p0, Land$1;->a:Lamr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 4

    .line 28
    iget-object v0, p0, Land$1;->a:Lamr;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 30
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    add-int/2addr p1, p2

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 28
    :goto_1
    invoke-interface {v0, v3, v1}, Lamr;->a(ZZ)V

    return-void
.end method
