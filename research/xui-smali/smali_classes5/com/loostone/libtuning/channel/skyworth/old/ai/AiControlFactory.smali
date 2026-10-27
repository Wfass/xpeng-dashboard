.class public Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mAiControl:Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createAiControl(Landroid/content/Context;I)V
    .locals 1

    const-class p1, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;

    monitor-enter p1

    .line 1
    :try_start_0
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/impl/CommonAiControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->mAiControl:Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public static getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;
    .locals 1

    .line 1
    sget-object v0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->mAiControl:Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    return-object v0
.end method
