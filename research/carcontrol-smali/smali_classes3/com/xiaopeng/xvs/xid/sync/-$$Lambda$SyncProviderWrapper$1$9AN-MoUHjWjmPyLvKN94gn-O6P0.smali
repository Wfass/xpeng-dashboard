.class public final synthetic Lcom/xiaopeng/xvs/xid/sync/-$$Lambda$SyncProviderWrapper$1$9AN-MoUHjWjmPyLvKN94gn-O6P0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;

.field public final synthetic f$1:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;Lcom/xiaopeng/xvs/xid/sync/api/SyncType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/-$$Lambda$SyncProviderWrapper$1$9AN-MoUHjWjmPyLvKN94gn-O6P0;->f$0:Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;

    iput-object p2, p0, Lcom/xiaopeng/xvs/xid/sync/-$$Lambda$SyncProviderWrapper$1$9AN-MoUHjWjmPyLvKN94gn-O6P0;->f$1:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/-$$Lambda$SyncProviderWrapper$1$9AN-MoUHjWjmPyLvKN94gn-O6P0;->f$0:Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;

    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/sync/-$$Lambda$SyncProviderWrapper$1$9AN-MoUHjWjmPyLvKN94gn-O6P0;->f$1:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

    invoke-static {v0, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper$1;->lambda$onSuccess$0(Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;Lcom/xiaopeng/xvs/xid/sync/api/SyncType;)V

    return-void
.end method
