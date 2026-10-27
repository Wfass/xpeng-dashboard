.class Lme/yokeyword/fragmentation/h$9;
.super Lcdb;
.source "TransactionDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;ILme/yokeyword/fragmentation/d;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lme/yokeyword/fragmentation/d;

.field final synthetic c:Landroidx/fragment/app/FragmentManager;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lme/yokeyword/fragmentation/h;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/h;IILme/yokeyword/fragmentation/d;Landroidx/fragment/app/FragmentManager;ZZ)V
    .locals 0

    .line 82
    iput-object p1, p0, Lme/yokeyword/fragmentation/h$9;->f:Lme/yokeyword/fragmentation/h;

    iput p3, p0, Lme/yokeyword/fragmentation/h$9;->a:I

    iput-object p4, p0, Lme/yokeyword/fragmentation/h$9;->b:Lme/yokeyword/fragmentation/d;

    iput-object p5, p0, Lme/yokeyword/fragmentation/h$9;->c:Landroidx/fragment/app/FragmentManager;

    iput-boolean p6, p0, Lme/yokeyword/fragmentation/h$9;->d:Z

    iput-boolean p7, p0, Lme/yokeyword/fragmentation/h$9;->e:Z

    invoke-direct {p0, p2}, Lcdb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 85
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$9;->f:Lme/yokeyword/fragmentation/h;

    iget v1, p0, Lme/yokeyword/fragmentation/h$9;->a:I

    iget-object v2, p0, Lme/yokeyword/fragmentation/h$9;->b:Lme/yokeyword/fragmentation/d;

    invoke-static {v0, v1, v2}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;ILme/yokeyword/fragmentation/d;)V

    .line 87
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$9;->b:Lme/yokeyword/fragmentation/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lme/yokeyword/fragmentation/h$9;->b:Lme/yokeyword/fragmentation/d;

    invoke-interface {v1}, Lme/yokeyword/fragmentation/d;->getSupportDelegate()Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    move-result-object v1

    iget-object v1, v1, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->d:Lme/yokeyword/fragmentation/helper/internal/b;

    if-eqz v1, :cond_0

    .line 90
    iget-object v2, v1, Lme/yokeyword/fragmentation/helper/internal/b;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 91
    iget-object v0, v1, Lme/yokeyword/fragmentation/helper/internal/b;->a:Ljava/lang/String;

    :cond_0
    move-object v5, v0

    .line 95
    iget-object v1, p0, Lme/yokeyword/fragmentation/h$9;->f:Lme/yokeyword/fragmentation/h;

    iget-object v2, p0, Lme/yokeyword/fragmentation/h$9;->c:Landroidx/fragment/app/FragmentManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lme/yokeyword/fragmentation/h$9;->b:Lme/yokeyword/fragmentation/d;

    iget-boolean v0, p0, Lme/yokeyword/fragmentation/h$9;->d:Z

    xor-int/lit8 v6, v0, 0x1

    const/4 v7, 0x0

    iget-boolean v8, p0, Lme/yokeyword/fragmentation/h$9;->e:Z

    const/16 v9, 0xa

    invoke-static/range {v1 .. v9}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;Ljava/lang/String;ZLjava/util/ArrayList;ZI)V

    return-void
.end method
