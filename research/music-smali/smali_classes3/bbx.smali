.class public Lbbx;
.super Ljava/lang/Object;
.source "IcmTransferModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbx$a;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lbbx;->a:Z

    .line 41
    invoke-virtual {p0}, Lbbx;->c()V

    return-void
.end method

.method synthetic constructor <init>(Lbbx$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lbbx;-><init>()V

    return-void
.end method

.method public static a()Lbbx;
    .locals 1

    .line 45
    sget-object v0, Lbbx$a;->a:Lbbx;

    return-object v0
.end method

.method private a(Z)V
    .locals 1

    .line 77
    new-instance v0, Lbbx$1;

    invoke-direct {v0, p0, p1}, Lbbx$1;-><init>(Lbbx;Z)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbbx;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lbbx;->a:Z

    return p0
.end method


# virtual methods
.method public b()V
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lbbx;->a:Z

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIcmConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IcmTransferModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result v0

    invoke-direct {p0, v0}, Lbbx;->a(Z)V

    return-void
.end method

.method public dealBtConnectState(Lasa$b;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 63
    iget-boolean v0, p0, Lbbx;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Lasa$b;->a()Z

    move-result p1

    .line 67
    invoke-direct {p0, p1}, Lbbx;->a(Z)V

    return-void
.end method

.method public onCarApiConnect(Lcom/xiaopeng/musicradio/event/common/a$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 58
    invoke-virtual {p0}, Lbbx;->c()V

    return-void
.end method
