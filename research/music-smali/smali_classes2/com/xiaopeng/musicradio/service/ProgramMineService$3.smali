.class Lcom/xiaopeng/musicradio/service/ProgramMineService$3;
.super Ljava/lang/Object;
.source "ProgramMineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/ProgramMineService;->setCollectedProgram(Ljava/lang/Object;Z)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Z

.field final synthetic c:Landroidx/lifecycle/r;

.field final synthetic d:Lcom/xiaopeng/musicradio/service/ProgramMineService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/ProgramMineService;Ljava/lang/Object;ZLandroidx/lifecycle/r;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$3;->d:Lcom/xiaopeng/musicradio/service/ProgramMineService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$3;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$3;->b:Z

    iput-object p4, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$3;->c:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$3;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 103
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$3;->b:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$3;->a:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;J)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lbmn;->b(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;Z)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$3;->a:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;J)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbmn;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$3;->c:Landroidx/lifecycle/r;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/ProgramMineService$3;->c:Landroidx/lifecycle/r;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
