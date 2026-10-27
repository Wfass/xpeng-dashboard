.class Lamg$5;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamg;->c(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamg;


# direct methods
.method constructor <init>(Lamg;)V
    .locals 0

    .line 1743
    iput-object p1, p0, Lamg$5;->a:Lamg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1746
    iget-object v0, p0, Lamg$5;->a:Lamg;

    iget-object v0, v0, Lamg;->aa:Lamv;

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Lamg$5;->a:Lamg;

    iget-object v0, v0, Lamg;->aa:Lamv;

    iget-object v1, p0, Lamg$5;->a:Lamg;

    invoke-interface {v0, v1}, Lamv;->a(Lamm;)V

    goto :goto_0

    .line 1748
    :cond_0
    iget-object v0, p0, Lamg$5;->a:Lamg;

    iget-object v0, v0, Lamg;->ab:Lamw;

    if-nez v0, :cond_1

    .line 1749
    iget-object v0, p0, Lamg$5;->a:Lamg;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lamg;->c(I)Lamm;

    .line 1751
    :cond_1
    :goto_0
    iget-object v0, p0, Lamg$5;->a:Lamg;

    iget-object v0, v0, Lamg;->ab:Lamw;

    if-eqz v0, :cond_2

    .line 1753
    iget-object v1, p0, Lamg$5;->a:Lamg;

    invoke-interface {v0, v1}, Lamv;->a(Lamm;)V

    :cond_2
    return-void
.end method
