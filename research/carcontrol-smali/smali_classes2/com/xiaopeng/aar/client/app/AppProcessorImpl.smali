.class Lcom/xiaopeng/aar/client/app/AppProcessorImpl;
.super Ljava/lang/Object;
.source "AppProcessorImpl.java"

# interfaces
.implements Lcom/xiaopeng/aar/client/app/AppProcessor;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppPro"

.field private static final mDefaultString:Ljava/lang/String; = ""


# instance fields
.field private final mHandlerThreadHelper:Lcom/xiaopeng/aar/utils/HandlerThreadHelper;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

    invoke-direct {v0, p1}, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/aar/client/app/AppProcessorImpl;->mHandlerThreadHelper:Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

    return-void
.end method

.method static synthetic lambda$onReceived$0(Lcom/xiaopeng/aar/client/ApiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6

    .line 42
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    move-object v4, p4

    if-nez p5, :cond_1

    const/4 p4, 0x0

    :goto_0
    move-object v5, p4

    goto :goto_1

    .line 43
    :cond_1
    new-instance p4, Lcom/xiaopeng/aar/client/ByteWrapper;

    invoke-direct {p4, p5}, Lcom/xiaopeng/aar/client/ByteWrapper;-><init>([B)V

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/aar/client/ApiListener;->onReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/aar/client/ByteWrapper;)V

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceived exception="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppPro"

    invoke-static {p1, p0}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic lambda$onServerStatus$1(Lcom/xiaopeng/aar/client/ApiListener;Ljava/lang/String;I)V
    .locals 0

    .line 58
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/xiaopeng/aar/client/ApiListener;->onServerStatus(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServerStatus exception="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppPro"

    invoke-static {p1, p0}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7

    .line 34
    invoke-static {}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->get()Lcom/xiaopeng/aar/client/ipc/IpcManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->getIpc()Lcom/xiaopeng/aar/client/ipc/Ipc;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/aar/client/ipc/Ipc;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public onReceived(Lcom/xiaopeng/aar/client/ApiListener;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7

    .line 40
    iget-object p2, p0, Lcom/xiaopeng/aar/client/app/AppProcessorImpl;->mHandlerThreadHelper:Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

    new-instance p3, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;-><init>(Lcom/xiaopeng/aar/client/ApiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p2, p3}, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServerStatus(Lcom/xiaopeng/aar/client/ApiListener;Ljava/lang/String;I)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/aar/client/app/AppProcessorImpl;->mHandlerThreadHelper:Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

    new-instance v1, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$rU0C_QEVLeq2J49CvxlarXY72Vw;

    invoke-direct {v1, p1, p2, p3}, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$rU0C_QEVLeq2J49CvxlarXY72Vw;-><init>(Lcom/xiaopeng/aar/client/ApiListener;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method
