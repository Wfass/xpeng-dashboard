.class Lcom/xiaopeng/musicradio/service/NetRadioMineService$4;
.super Ljava/lang/Object;
.source "NetRadioMineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/NetRadioMineService;->removeHistoryNetRadio(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroidx/lifecycle/r;

.field final synthetic c:Lcom/xiaopeng/musicradio/service/NetRadioMineService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/NetRadioMineService;Ljava/lang/Object;Landroidx/lifecycle/r;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$4;->c:Lcom/xiaopeng/musicradio/service/NetRadioMineService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$4;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$4;->b:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$4;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lbcy;->a()Lbcy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$4;->a:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v0, v1}, Lbcy;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$4;->b:Landroidx/lifecycle/r;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$4;->b:Landroidx/lifecycle/r;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
