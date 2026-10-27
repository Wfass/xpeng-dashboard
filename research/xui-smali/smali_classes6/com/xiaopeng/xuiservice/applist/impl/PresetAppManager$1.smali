.class Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$1;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "PresetAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 70
    const-string v0, "com.xiaopeng.applist"

    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->access$000()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method
