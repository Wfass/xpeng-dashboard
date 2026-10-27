.class Lhd$b;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lhd;


# direct methods
.method constructor <init>(Lhd;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lhd$b;->a:Lhd;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 497
    iget-object v0, p0, Lhd$b;->a:Lhd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lhd;->a:Z

    .line 498
    invoke-virtual {v0}, Lhd;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 503
    iget-object v0, p0, Lhd$b;->a:Lhd;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhd;->a:Z

    .line 504
    invoke-virtual {v0}, Lhd;->notifyDataSetInvalidated()V

    return-void
.end method
