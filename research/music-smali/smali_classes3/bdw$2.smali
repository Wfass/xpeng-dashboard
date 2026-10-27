.class Lbdw$2;
.super Ljava/lang/Object;
.source "QqManagerModelBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdw;->a()V
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

    .line 97
    iput-object p1, p0, Lbdw$2;->a:Lbdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    iget-object v1, p0, Lbdw$2;->a:Lbdw;

    invoke-virtual {v1}, Lbdw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Larg;->b(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lbdw$2;->a:Lbdw;

    invoke-virtual {v0}, Lbdw;->f()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    invoke-virtual {v1, v0}, Larg;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
