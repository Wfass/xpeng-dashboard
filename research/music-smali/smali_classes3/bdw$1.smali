.class Lbdw$1;
.super Ljava/lang/Object;
.source "QqManagerModelBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdw;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbdw;


# direct methods
.method constructor <init>(Lbdw;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lbdw$1;->a:Lbdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 81
    iget-object v0, p0, Lbdw$1;->a:Lbdw;

    invoke-virtual {v0}, Lbdw;->d()Lbef;

    move-result-object v0

    invoke-virtual {v0}, Lbef;->g()Z

    move-result v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataFetch:isMusicBinded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QqManagerModelBase"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lbdw$1;->a:Lbdw;

    invoke-static {v0}, Lbdw;->a(Lbdw;)V

    :cond_0
    return-void
.end method
