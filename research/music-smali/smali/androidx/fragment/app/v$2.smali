.class Landroidx/fragment/app/v$2;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/v;->a(Landroidx/fragment/app/v$b$b;Landroidx/fragment/app/v$b$a;Landroidx/fragment/app/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/v$a;

.field final synthetic b:Landroidx/fragment/app/v;


# direct methods
.method constructor <init>(Landroidx/fragment/app/v;Landroidx/fragment/app/v$a;)V
    .locals 0

    .line 217
    iput-object p1, p0, Landroidx/fragment/app/v$2;->b:Landroidx/fragment/app/v;

    iput-object p2, p0, Landroidx/fragment/app/v$2;->a:Landroidx/fragment/app/v$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 220
    iget-object v0, p0, Landroidx/fragment/app/v$2;->b:Landroidx/fragment/app/v;

    iget-object v0, v0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/v$2;->a:Landroidx/fragment/app/v$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Landroidx/fragment/app/v$2;->b:Landroidx/fragment/app/v;

    iget-object v0, v0, Landroidx/fragment/app/v;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/v$2;->a:Landroidx/fragment/app/v$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
