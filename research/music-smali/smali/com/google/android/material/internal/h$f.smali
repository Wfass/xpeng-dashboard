.class Lcom/google/android/material/internal/h$f;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Lcom/google/android/material/internal/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field a:Z

.field private final b:Landroidx/appcompat/view/menu/i;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/i;)V
    .locals 0

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput-object p1, p0, Lcom/google/android/material/internal/h$f;->b:Landroidx/appcompat/view/menu/i;

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/i;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/google/android/material/internal/h$f;->b:Landroidx/appcompat/view/menu/i;

    return-object v0
.end method
