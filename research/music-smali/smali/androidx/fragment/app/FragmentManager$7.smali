.class Landroidx/fragment/app/FragmentManager$7;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 488
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$7;->a:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroidx/fragment/app/v;
    .locals 1

    .line 492
    new-instance v0, Landroidx/fragment/app/b;

    invoke-direct {v0, p1}, Landroidx/fragment/app/b;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method
