.class public abstract Lbdl;
.super Ljava/lang/Object;
.source "AbsReissueModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdl$a;,
        Lbdl$b;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Thread;

.field protected b:Z

.field protected c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lbdl$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbdl;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbdl$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbdl$b;-><init>(Lbdl;Lbdl$1;)V

    const-string v2, "ReissueModel"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lbdl;->a:Ljava/lang/Thread;

    .line 40
    iget-object v0, p0, Lbdl;->a:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 41
    iget-object v0, p0, Lbdl;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 42
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public abstract a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lbdl$a;ILjava/lang/String;)V
.end method

.method public a(Ljava/lang/String;Lbdl$a;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lbdl;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract b()V
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 61
    invoke-virtual {p0}, Lbdl;->b()V

    return-void
.end method

.method public onPowerStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 54
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    invoke-static {}, Lare;->d()Lare;

    move-result-object p1

    invoke-virtual {p1}, Lare;->b()V

    :cond_0
    return-void
.end method
