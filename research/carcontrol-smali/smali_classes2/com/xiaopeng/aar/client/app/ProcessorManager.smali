.class public Lcom/xiaopeng/aar/client/app/ProcessorManager;
.super Ljava/lang/Object;
.source "ProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/client/app/ProcessorManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private final mApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/aar/client/app/AppProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aar/client/app/ProcessorManager;->mApps:Ljava/util/HashMap;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/aar/client/app/ProcessorManager;->loadProcessor()V

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mApps : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " , time : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Processor"

    invoke-static {v1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/client/app/ProcessorManager$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/aar/client/app/ProcessorManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/aar/client/app/ProcessorManager;
    .locals 1

    .line 27
    invoke-static {}, Lcom/xiaopeng/aar/client/app/ProcessorManager$SingletonHolder;->access$100()Lcom/xiaopeng/aar/client/app/ProcessorManager;

    move-result-object v0

    return-object v0
.end method

.method private loadProcessor()V
    .locals 4

    .line 38
    invoke-static {}, Lcom/xiaopeng/aar/Apps;->getApps()Ljava/util/Set;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/xiaopeng/aar/client/app/ProcessorManager;->mApps:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/xiaopeng/aar/client/app/ProcessorManager;->mApps:Ljava/util/HashMap;

    new-instance v3, Lcom/xiaopeng/aar/client/app/AppProcessorImpl;

    invoke-direct {v3, v1}, Lcom/xiaopeng/aar/client/app/AppProcessorImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getAppProcessor(Ljava/lang/String;)Lcom/xiaopeng/aar/client/app/AppProcessor;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/aar/client/app/ProcessorManager;->mApps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/aar/client/app/AppProcessor;

    return-object p1
.end method
