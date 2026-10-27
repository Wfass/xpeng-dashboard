.class Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper$1;
.super Ljava/lang/Object;
.source "SyncProviderWrapper.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/base/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/xvs/xid/base/ICallback<",
        "Lcom/xiaopeng/xvs/xid/sync/api/SyncType;",
        "Lcom/xiaopeng/xvs/xid/base/IException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper$1;->this$0:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;Lcom/xiaopeng/xvs/xid/sync/api/SyncType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "listener",
            "type"
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getUid()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;->OnSyncChanged(JLcom/xiaopeng/xvs/xid/sync/api/SyncType;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/xiaopeng/xvs/xid/base/IException;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ex"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ex"
        }
    .end annotation

    .line 38
    check-cast p1, Lcom/xiaopeng/xvs/xid/base/IException;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper$1;->onFail(Lcom/xiaopeng/xvs/xid/base/IException;)V

    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/xvs/xid/sync/api/SyncType;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: end type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncProviderWrapper"

    invoke-static {v1, v0}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper$1;->this$0:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    invoke-static {v0}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->access$000(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper$1;->this$0:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    invoke-static {v0}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->access$000(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;

    .line 45
    iget-object v2, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper$1;->this$0:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    invoke-static {v2}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->access$100(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xvs/xid/sync/-$$Lambda$SyncProviderWrapper$1$9AN-MoUHjWjmPyLvKN94gn-O6P0;

    invoke-direct {v3, v1, p1}, Lcom/xiaopeng/xvs/xid/sync/-$$Lambda$SyncProviderWrapper$1$9AN-MoUHjWjmPyLvKN94gn-O6P0;-><init>(Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;Lcom/xiaopeng/xvs/xid/sync/api/SyncType;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "type"
        }
    .end annotation

    .line 38
    check-cast p1, Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper$1;->onSuccess(Lcom/xiaopeng/xvs/xid/sync/api/SyncType;)V

    return-void
.end method
