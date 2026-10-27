.class Lme/yokeyword/fragmentation/h$15;
.super Lcdb;
.source "TransactionDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentManager;

.field final synthetic b:Lme/yokeyword/fragmentation/h;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/h;ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lme/yokeyword/fragmentation/h$15;->b:Lme/yokeyword/fragmentation/h;

    iput-object p4, p0, Lme/yokeyword/fragmentation/h$15;->a:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0, p2, p3}, Lcdb;-><init>(ILandroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 243
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$15;->b:Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/h$15;->a:Landroidx/fragment/app/FragmentManager;

    const-string v2, "pop()"

    invoke-static {v0, v1, v2}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$15;->a:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0}, Landroidx/fragment/app/t;->b(Landroidx/fragment/app/FragmentManager;)V

    .line 245
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$15;->b:Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/h$15;->a:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v1}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method
