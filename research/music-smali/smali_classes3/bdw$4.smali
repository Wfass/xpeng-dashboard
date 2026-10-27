.class Lbdw$4;
.super Ljava/lang/Object;
.source "QqManagerModelBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdw;->m()V
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

    .line 166
    iput-object p1, p0, Lbdw$4;->a:Lbdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 169
    iget-object v0, p0, Lbdw$4;->a:Lbdw;

    invoke-virtual {v0}, Lbdw;->d()Lbef;

    move-result-object v0

    invoke-virtual {v0}, Lbef;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lasj$n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lasj$n;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
