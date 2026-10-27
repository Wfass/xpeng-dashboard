.class public final synthetic Lcom/xiaopeng/xvs/xid/sync/-$$Lambda$SyncProviderWrapper$PfE0iyn_-P8ZOazORSbwutshezk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/-$$Lambda$SyncProviderWrapper$PfE0iyn_-P8ZOazORSbwutshezk;->f$0:Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/-$$Lambda$SyncProviderWrapper$PfE0iyn_-P8ZOazORSbwutshezk;->f$0:Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;

    invoke-static {v0}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->lambda$setSyncChangedListener$0(Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;)V

    return-void
.end method
