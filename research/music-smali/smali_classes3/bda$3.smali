.class Lbda$3;
.super Ljava/lang/Object;
.source "NetRadioOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbda;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/r;

.field final synthetic b:Lbda;


# direct methods
.method constructor <init>(Lbda;Landroidx/lifecycle/r;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lbda$3;->b:Lbda;

    iput-object p2, p0, Lbda$3;->a:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 114
    invoke-static {}, Lbcy;->a()Lbcy;

    move-result-object v0

    const/4 v1, 0x1

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3}, Lbcy;->a(IJ)Ljava/util/List;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lbda$3;->a:Landroidx/lifecycle/r;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-void
.end method
