.class Landroidx/fragment/app/b$a;
.super Landroidx/fragment/app/b$b;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroidx/fragment/app/c$a;


# direct methods
.method constructor <init>(Landroidx/fragment/app/v$b;Lek;Z)V
    .locals 0

    .line 789
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/b$b;-><init>(Landroidx/fragment/app/v$b;Lek;)V

    const/4 p1, 0x0

    .line 783
    iput-boolean p1, p0, Landroidx/fragment/app/b$a;->b:Z

    .line 790
    iput-boolean p3, p0, Landroidx/fragment/app/b$a;->a:Z

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Landroidx/fragment/app/c$a;
    .locals 4

    .line 795
    iget-boolean v0, p0, Landroidx/fragment/app/b$a;->b:Z

    if-eqz v0, :cond_0

    .line 796
    iget-object p1, p0, Landroidx/fragment/app/b$a;->c:Landroidx/fragment/app/c$a;

    return-object p1

    .line 799
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/b$a;->a()Landroidx/fragment/app/v$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/v$b;->e()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 800
    invoke-virtual {p0}, Landroidx/fragment/app/b$a;->a()Landroidx/fragment/app/v$b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/v$b;->c()Landroidx/fragment/app/v$b$b;

    move-result-object v1

    sget-object v2, Landroidx/fragment/app/v$b$b;->VISIBLE:Landroidx/fragment/app/v$b$b;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Landroidx/fragment/app/b$a;->a:Z

    .line 798
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/c;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/c$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/b$a;->c:Landroidx/fragment/app/c$a;

    .line 802
    iput-boolean v3, p0, Landroidx/fragment/app/b$a;->b:Z

    .line 803
    iget-object p1, p0, Landroidx/fragment/app/b$a;->c:Landroidx/fragment/app/c$a;

    return-object p1
.end method
