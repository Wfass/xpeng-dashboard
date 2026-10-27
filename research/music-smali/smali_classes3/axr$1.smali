.class final Laxr$1;
.super Ljava/lang/Object;
.source "LiveDataUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxr;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/s;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/LiveData;

.field final synthetic b:Landroidx/lifecycle/s;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/s;)V
    .locals 0

    .line 17
    iput-object p1, p0, Laxr$1;->a:Landroidx/lifecycle/LiveData;

    iput-object p2, p0, Laxr$1;->b:Landroidx/lifecycle/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 20
    iget-object v0, p0, Laxr$1;->a:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Laxr$1;->b:Landroidx/lifecycle/s;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    return-void
.end method
