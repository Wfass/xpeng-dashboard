.class Lme/yokeyword/fragmentation/h$12;
.super Lcdb;
.source "TransactionDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentManager;

.field final synthetic b:Lme/yokeyword/fragmentation/d;

.field final synthetic c:Lme/yokeyword/fragmentation/d;

.field final synthetic d:Lme/yokeyword/fragmentation/h;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/h;Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lme/yokeyword/fragmentation/h$12;->d:Lme/yokeyword/fragmentation/h;

    iput-object p2, p0, Lme/yokeyword/fragmentation/h$12;->a:Landroidx/fragment/app/FragmentManager;

    iput-object p3, p0, Lme/yokeyword/fragmentation/h$12;->b:Lme/yokeyword/fragmentation/d;

    iput-object p4, p0, Lme/yokeyword/fragmentation/h$12;->c:Lme/yokeyword/fragmentation/d;

    invoke-direct {p0}, Lcdb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 144
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$12;->d:Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/h$12;->a:Landroidx/fragment/app/FragmentManager;

    iget-object v2, p0, Lme/yokeyword/fragmentation/h$12;->b:Lme/yokeyword/fragmentation/d;

    iget-object v3, p0, Lme/yokeyword/fragmentation/h$12;->c:Lme/yokeyword/fragmentation/d;

    invoke-static {v0, v1, v2, v3}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V

    return-void
.end method
