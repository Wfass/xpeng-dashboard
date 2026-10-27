.class Lcom/xiaopeng/musicradio/service/ProgramMineService$4;
.super Ljava/lang/Object;
.source "ProgramMineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/ProgramMineService;->removeHistoryProgram(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroidx/lifecycle/r;

.field final synthetic c:Lcom/xiaopeng/musicradio/service/ProgramMineService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/ProgramMineService;Ljava/lang/Object;Landroidx/lifecycle/r;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$4;->c:Lcom/xiaopeng/musicradio/service/ProgramMineService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$4;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$4;->b:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$4;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-eqz v1, :cond_0

    .line 125
    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 126
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lbmn;->a(J)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$4;->b:Landroidx/lifecycle/r;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$4;->b:Landroidx/lifecycle/r;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
