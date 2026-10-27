.class final Lcom/google/android/material/internal/u$2;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Lgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/u;->a(Landroid/view/View;Lcom/google/android/material/internal/u$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/u$a;

.field final synthetic b:Lcom/google/android/material/internal/u$b;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/u$a;Lcom/google/android/material/internal/u$b;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/google/android/material/internal/u$2;->a:Lcom/google/android/material/internal/u$a;

    iput-object p2, p0, Lcom/google/android/material/internal/u$2;->b:Lcom/google/android/material/internal/u$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lgr;)Lgr;
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/google/android/material/internal/u$2;->a:Lcom/google/android/material/internal/u$a;

    new-instance v1, Lcom/google/android/material/internal/u$b;

    iget-object v2, p0, Lcom/google/android/material/internal/u$2;->b:Lcom/google/android/material/internal/u$b;

    invoke-direct {v1, v2}, Lcom/google/android/material/internal/u$b;-><init>(Lcom/google/android/material/internal/u$b;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/material/internal/u$a;->a(Landroid/view/View;Lgr;Lcom/google/android/material/internal/u$b;)Lgr;

    move-result-object p1

    return-object p1
.end method
