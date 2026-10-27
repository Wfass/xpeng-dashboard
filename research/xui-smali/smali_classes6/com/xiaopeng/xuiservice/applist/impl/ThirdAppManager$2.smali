.class Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$2;
.super Landroid/database/ContentObserver;
.source "ThirdAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 158
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$2;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 161
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 162
    const-string v0, "ThirdAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange,selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$2;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->access$300(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;ZLandroid/net/Uri;)V

    .line 164
    return-void
.end method
