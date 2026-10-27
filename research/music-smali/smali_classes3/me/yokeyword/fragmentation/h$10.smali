.class Lme/yokeyword/fragmentation/h$10;
.super Lcdb;
.source "TransactionDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;II[Lme/yokeyword/fragmentation/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentManager;

.field final synthetic b:[Lme/yokeyword/fragmentation/d;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lme/yokeyword/fragmentation/h;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/h;ILandroidx/fragment/app/FragmentManager;[Lme/yokeyword/fragmentation/d;II)V
    .locals 0

    .line 101
    iput-object p1, p0, Lme/yokeyword/fragmentation/h$10;->e:Lme/yokeyword/fragmentation/h;

    iput-object p3, p0, Lme/yokeyword/fragmentation/h$10;->a:Landroidx/fragment/app/FragmentManager;

    iput-object p4, p0, Lme/yokeyword/fragmentation/h$10;->b:[Lme/yokeyword/fragmentation/d;

    iput p5, p0, Lme/yokeyword/fragmentation/h$10;->c:I

    iput p6, p0, Lme/yokeyword/fragmentation/h$10;->d:I

    invoke-direct {p0, p2}, Lcdb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 104
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$10;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v0

    const/4 v1, 0x0

    .line 105
    :goto_0
    iget-object v2, p0, Lme/yokeyword/fragmentation/h$10;->b:[Lme/yokeyword/fragmentation/d;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 106
    aget-object v2, v2, v1

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 108
    iget-object v3, p0, Lme/yokeyword/fragmentation/h$10;->e:Lme/yokeyword/fragmentation/h;

    invoke-static {v3, v2}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "fragmentation_arg_root_status"

    .line 109
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    iget-object v3, p0, Lme/yokeyword/fragmentation/h$10;->e:Lme/yokeyword/fragmentation/h;

    iget v4, p0, Lme/yokeyword/fragmentation/h$10;->c:I

    iget-object v5, p0, Lme/yokeyword/fragmentation/h$10;->b:[Lme/yokeyword/fragmentation/d;

    aget-object v5, v5, v1

    invoke-static {v3, v4, v5}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;ILme/yokeyword/fragmentation/d;)V

    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 113
    iget v4, p0, Lme/yokeyword/fragmentation/h$10;->c:I

    invoke-virtual {v0, v4, v2, v3}, Landroidx/fragment/app/p;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 115
    iget v3, p0, Lme/yokeyword/fragmentation/h$10;->d:I

    if-eq v1, v3, :cond_0

    .line 116
    invoke-virtual {v0, v2}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_1
    iget-object v1, p0, Lme/yokeyword/fragmentation/h$10;->e:Lme/yokeyword/fragmentation/h;

    iget-object v2, p0, Lme/yokeyword/fragmentation/h$10;->a:Landroidx/fragment/app/FragmentManager;

    invoke-static {v1, v2, v0}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/p;)V

    return-void
.end method
