.class Landroidx/fragment/app/b$10;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/b;->a(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/v$b;Landroidx/fragment/app/v$b;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/b$c;

.field final synthetic b:Landroidx/fragment/app/b;


# direct methods
.method constructor <init>(Landroidx/fragment/app/b;Landroidx/fragment/app/b$c;)V
    .locals 0

    .line 639
    iput-object p1, p0, Landroidx/fragment/app/b$10;->b:Landroidx/fragment/app/b;

    iput-object p2, p0, Landroidx/fragment/app/b$10;->a:Landroidx/fragment/app/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 642
    iget-object v0, p0, Landroidx/fragment/app/b$10;->a:Landroidx/fragment/app/b$c;

    invoke-virtual {v0}, Landroidx/fragment/app/b$c;->d()V

    return-void
.end method
