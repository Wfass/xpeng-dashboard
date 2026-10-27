.class Laxs$1;
.super Ljava/lang/Object;
.source "LoadingDataListHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxs;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Laxs;


# direct methods
.method constructor <init>(Laxs;Landroid/view/View;I)V
    .locals 0

    .line 40
    iput-object p1, p0, Laxs$1;->c:Laxs;

    iput-object p2, p0, Laxs$1;->a:Landroid/view/View;

    iput p3, p0, Laxs$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 43
    iget-object v0, p0, Laxs$1;->c:Laxs;

    iget-object v1, p0, Laxs$1;->a:Landroid/view/View;

    iget v2, p0, Laxs$1;->b:I

    invoke-virtual {v0, v1, v2}, Laxs;->b(Landroid/view/View;I)I

    move-result v0

    .line 44
    iget-object v1, p0, Laxs$1;->c:Laxs;

    iget-object v1, v1, Laxs;->d:Laxs$a;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Laxs$1;->c:Laxs;

    iget-object v1, v1, Laxs;->d:Laxs$a;

    invoke-interface {v1, v0}, Laxs$a;->a(I)V

    :cond_0
    return-void
.end method
