.class final Landroidx/fragment/app/t$2;
.super Ljava/lang/Object;
.source "FragmentationMagician.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/t;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentManager;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;I)V
    .locals 0

    .line 57
    iput-object p1, p0, Landroidx/fragment/app/t$2;->a:Landroidx/fragment/app/FragmentManager;

    iput-object p2, p0, Landroidx/fragment/app/t$2;->b:Ljava/lang/String;

    iput p3, p0, Landroidx/fragment/app/t$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 60
    iget-object v0, p0, Landroidx/fragment/app/t$2;->a:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/t$2;->b:Ljava/lang/String;

    iget v2, p0, Landroidx/fragment/app/t$2;->c:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void
.end method
