.class Lcom/xiaopeng/musicradio/service/NetRadioMineService$3;
.super Ljava/lang/Object;
.source "NetRadioMineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/NetRadioMineService;->setCollectedNetRadio(Ljava/lang/Object;Z)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Z

.field final synthetic c:Landroidx/lifecycle/r;

.field final synthetic d:Lcom/xiaopeng/musicradio/service/NetRadioMineService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/NetRadioMineService;Ljava/lang/Object;ZLandroidx/lifecycle/r;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$3;->d:Lcom/xiaopeng/musicradio/service/NetRadioMineService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$3;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$3;->b:Z

    iput-object p4, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$3;->c:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$3;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    if-eqz v0, :cond_1

    .line 79
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$3;->b:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Layv;->a()Layv;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$3;->a:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v0, v1}, Layv;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {}, Layv;->a()Layv;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$3;->a:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v0, v1}, Layv;->c(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$3;->c:Landroidx/lifecycle/r;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/NetRadioMineService$3;->c:Landroidx/lifecycle/r;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
