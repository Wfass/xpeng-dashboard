.class public abstract Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;
.super Ljava/lang/Object;
.source "SystemUIManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$ServerListener;


# static fields
.field protected static final CODE_SUCCESS:I = 0x1


# instance fields
.field protected mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->get()Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->addServerListener(Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$ServerListener;)V

    .line 16
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->get()Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->getSystemUIService()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;->logTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " --"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract logTag()Ljava/lang/String;
.end method

.method public onServerConnected(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    return-void
.end method

.method public onServerDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    return-void
.end method
