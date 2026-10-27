.class public Lbek;
.super Lbdw;
.source "KugouManagerModel.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbek$a;
    }
.end annotation


# instance fields
.field a:Lapx;

.field private b:J

.field private c:Landroid/accounts/AccountManager;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 60
    invoke-direct {p0}, Lbdw;-><init>()V

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lbek;->b:J

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lbek;->a:Lapx;

    .line 61
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lbek;->c:Landroid/accounts/AccountManager;

    .line 62
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 63
    iget-object v1, p0, Lbek;->c:Landroid/accounts/AccountManager;

    const/4 v2, 0x1

    const-string v3, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lbek;->k()J

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KugouManagerModel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lbek;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KugouManagerModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lbek$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lbek;-><init>()V

    return-void
.end method

.method public static a()Lbek;
    .locals 1

    .line 57
    sget-object v0, Lbek$a;->a:Lbek;

    return-object v0
.end method

.method static synthetic a(Lbek;)V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lbek;->b()V

    return-void
.end method


# virtual methods
.method protected c()Lbsh;
    .locals 2

    .line 99
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsf;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh;

    return-object v0
.end method

.method protected d()Lbef;
    .locals 1

    .line 104
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->e()Lbej;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "kugou_play_list"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public k()J
    .locals 2

    .line 70
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lapy;->a(Landroid/content/Context;)Lapx;

    move-result-object v0

    iput-object v0, p0, Lbek;->a:Lapx;

    .line 71
    iget-object v0, p0, Lbek;->a:Lapx;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lapx;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lbek;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 74
    iput-wide v0, p0, Lbek;->b:J

    .line 76
    :goto_0
    iget-wide v0, p0, Lbek;->b:J

    return-wide v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lbek;->k()J

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAccountsUpdated: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lbek;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KugouManagerModel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bh;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bh;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public receiveLogout(Lasj$i;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "KugouManagerModel"

    const-string v0, "receiveLogout: "

    .line 81
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lbek;->g()V

    .line 83
    new-instance p1, Lasj$n;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lasj$n;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public receiveMusicBinded(Lasj$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "KugouManagerModel"

    const-string v0, "receiveMusicBinded: "

    .line 88
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance p1, Lbek$1;

    invoke-direct {p1, p0}, Lbek$1;-><init>(Lbek;)V

    invoke-static {p1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
