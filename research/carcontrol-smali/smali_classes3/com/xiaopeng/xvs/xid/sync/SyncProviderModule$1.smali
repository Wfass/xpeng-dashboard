.class Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule$1;
.super Landroid/database/ContentObserver;
.source "SyncProviderModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;->init(Lcom/xiaopeng/xvs/xid/base/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

.field final synthetic val$callback:Lcom/xiaopeng/xvs/xid/base/ICallback;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;Landroid/os/Handler;Lcom/xiaopeng/xvs/xid/base/ICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "x0",
            "val$callback"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule$1;->this$0:Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule;

    iput-object p3, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule$1;->val$callback:Lcom/xiaopeng/xvs/xid/base/ICallback;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selfChange",
            "uri"
        }
    .end annotation

    const-string v0, "SyncProviderModule"

    .line 43
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 44
    sget-object v2, Lcom/xiaopeng/xvs/xid/sync/api/SyncType;->ACCOUNT_CHANGED:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

    .line 46
    :try_start_0
    invoke-static {v1}, Lcom/xiaopeng/xvs/xid/sync/api/SyncType;->valueOf(Ljava/lang/String;)Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChange: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange: selfChange = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "], uri = ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "], segment = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "], type = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderModule$1;->val$callback:Lcom/xiaopeng/xvs/xid/base/ICallback;

    invoke-interface {p1, v2}, Lcom/xiaopeng/xvs/xid/base/ICallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
