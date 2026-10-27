.class Laym$17;
.super Ljava/lang/Object;
.source "BluetoothServiceNforeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laym;->b(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laym;


# direct methods
.method constructor <init>(Laym;)V
    .locals 0

    .line 487
    iput-object p1, p0, Laym$17;->a:Laym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 490
    iget-object v0, p0, Laym$17;->a:Laym;

    invoke-static {v0}, Laym;->c(Laym;)Lanl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laym$17;->a:Laym;

    invoke-static {v0}, Laym;->c(Laym;)Lanl;

    move-result-object v0

    invoke-virtual {v0}, Lanl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Laym$17;->a:Laym;

    invoke-static {v0}, Laym;->c(Laym;)Lanl;

    move-result-object v0

    iget-object v1, p0, Laym$17;->a:Laym;

    invoke-static {v1}, Laym;->k(Laym;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanl;->a(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
