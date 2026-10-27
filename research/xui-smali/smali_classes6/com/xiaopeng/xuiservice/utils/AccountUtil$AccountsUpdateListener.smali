.class Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountsUpdateListener;
.super Ljava/lang/Object;
.source "AccountUtil.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/AccountUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountsUpdateListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/utils/AccountUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/utils/AccountUtil$1;

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountsUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 3
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .line 59
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 61
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;

    .line 62
    .local v2, "l":Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 63
    .end local v2    # "l":Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;
    goto :goto_0

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    :cond_1
    const-string v0, "AccountUtil"

    const-string v1, "onAccountsUpdated, but no listeners"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_1
    return-void
.end method
