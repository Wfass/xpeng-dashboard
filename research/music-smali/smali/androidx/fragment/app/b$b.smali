.class Landroidx/fragment/app/b$b;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/v$b;

.field private final b:Lek;


# direct methods
.method constructor <init>(Landroidx/fragment/app/v$b;Lek;)V
    .locals 0

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p1, p0, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/v$b;

    .line 754
    iput-object p2, p0, Landroidx/fragment/app/b$b;->b:Lek;

    return-void
.end method


# virtual methods
.method a()Landroidx/fragment/app/v$b;
    .locals 1

    .line 759
    iget-object v0, p0, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/v$b;

    return-object v0
.end method

.method b()Lek;
    .locals 1

    .line 764
    iget-object v0, p0, Landroidx/fragment/app/b$b;->b:Lek;

    return-object v0
.end method

.method c()Z
    .locals 3

    .line 768
    iget-object v0, p0, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/v$b;

    .line 769
    invoke-virtual {v0}, Landroidx/fragment/app/v$b;->e()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 768
    invoke-static {v0}, Landroidx/fragment/app/v$b$b;->a(Landroid/view/View;)Landroidx/fragment/app/v$b$b;

    move-result-object v0

    .line 770
    iget-object v1, p0, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/v$b;

    invoke-virtual {v1}, Landroidx/fragment/app/v$b;->c()Landroidx/fragment/app/v$b$b;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 771
    sget-object v2, Landroidx/fragment/app/v$b$b;->VISIBLE:Landroidx/fragment/app/v$b$b;

    if-eq v0, v2, :cond_0

    sget-object v0, Landroidx/fragment/app/v$b$b;->VISIBLE:Landroidx/fragment/app/v$b$b;

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method d()V
    .locals 2

    .line 776
    iget-object v0, p0, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/v$b;

    iget-object v1, p0, Landroidx/fragment/app/b$b;->b:Lek;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/v$b;->b(Lek;)V

    return-void
.end method
