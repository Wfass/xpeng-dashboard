.class Lme/yokeyword/fragmentation/f$1;
.super Lcdb;
.source "SupportActivityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/fragmentation/f;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/yokeyword/fragmentation/f;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/f;I)V
    .locals 0

    .line 148
    iput-object p1, p0, Lme/yokeyword/fragmentation/f$1;->a:Lme/yokeyword/fragmentation/f;

    invoke-direct {p0, p2}, Lcdb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 151
    iget-object v0, p0, Lme/yokeyword/fragmentation/f$1;->a:Lme/yokeyword/fragmentation/f;

    iget-boolean v0, v0, Lme/yokeyword/fragmentation/f;->b:Z

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lme/yokeyword/fragmentation/f$1;->a:Lme/yokeyword/fragmentation/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lme/yokeyword/fragmentation/f;->b:Z

    .line 156
    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/f$1;->a:Lme/yokeyword/fragmentation/f;

    invoke-static {v0}, Lme/yokeyword/fragmentation/f;->a(Lme/yokeyword/fragmentation/f;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lme/yokeyword/fragmentation/g;->b(Landroidx/fragment/app/FragmentManager;)Lme/yokeyword/fragmentation/d;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lme/yokeyword/fragmentation/f$1;->a:Lme/yokeyword/fragmentation/f;

    invoke-static {v1}, Lme/yokeyword/fragmentation/f;->b(Lme/yokeyword/fragmentation/f;)Lme/yokeyword/fragmentation/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lme/yokeyword/fragmentation/f$1;->a:Lme/yokeyword/fragmentation/f;

    invoke-static {v0}, Lme/yokeyword/fragmentation/f;->c(Lme/yokeyword/fragmentation/f;)Lme/yokeyword/fragmentation/c;

    move-result-object v0

    invoke-interface {v0}, Lme/yokeyword/fragmentation/c;->onBackPressedSupport()V

    return-void
.end method
