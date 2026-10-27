.class Lme/yokeyword/fragmentation/h$2;
.super Lcdb;
.source "TransactionDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/fragmentation/h;->a(Ljava/lang/String;ZLjava/lang/Runnable;Landroidx/fragment/app/FragmentManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Landroidx/fragment/app/FragmentManager;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/Runnable;

.field final synthetic f:Lme/yokeyword/fragmentation/h;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/h;ILjava/lang/String;ZLandroidx/fragment/app/FragmentManager;ILjava/lang/Runnable;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lme/yokeyword/fragmentation/h$2;->f:Lme/yokeyword/fragmentation/h;

    iput-object p3, p0, Lme/yokeyword/fragmentation/h$2;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lme/yokeyword/fragmentation/h$2;->b:Z

    iput-object p5, p0, Lme/yokeyword/fragmentation/h$2;->c:Landroidx/fragment/app/FragmentManager;

    iput p6, p0, Lme/yokeyword/fragmentation/h$2;->d:I

    iput-object p7, p0, Lme/yokeyword/fragmentation/h$2;->e:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lcdb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 288
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$2;->f:Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/h$2;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lme/yokeyword/fragmentation/h$2;->b:Z

    iget-object v3, p0, Lme/yokeyword/fragmentation/h$2;->c:Landroidx/fragment/app/FragmentManager;

    iget v4, p0, Lme/yokeyword/fragmentation/h$2;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;Ljava/lang/String;ZLandroidx/fragment/app/FragmentManager;I)V

    .line 290
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$2;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 291
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
