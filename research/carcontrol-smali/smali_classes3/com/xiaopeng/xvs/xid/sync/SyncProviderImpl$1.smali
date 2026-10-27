.class Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "SyncProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->getHabitList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl$1;->this$0:Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
