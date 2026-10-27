.class Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/utils/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadFactoryBuilder"
.end annotation


# static fields
.field private static final DAEMON_VALUE:Z = false

.field private static final NAME:Ljava/lang/String; = "newFixedThreadPool"


# instance fields
.field private mDaemon:Z

.field private mName:Ljava/lang/String;

.field private mNameFormat:Ljava/lang/String;

.field private mThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    const-string v0, "newFixedThreadPool"

    iput-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->mName:Ljava/lang/String;

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->mDaemon:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/utils/ThreadUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/utils/ThreadUtils$1;

    .line 520
    invoke-direct {p0}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    .line 520
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->mThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    .line 520
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->mNameFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    .line 520
    iget-boolean v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->mDaemon:Z

    return v0
.end method


# virtual methods
.method build()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 562
    new-instance v0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder$1;-><init>(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameFormat()Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->mNameFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->mThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public ismDaemon()Z
    .locals 1

    .line 552
    iget-boolean v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->mDaemon:Z

    return v0
.end method

.method setDaemon(Z)Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;
    .locals 0
    .param p1, "mDaemon"    # Z

    .line 556
    iput-boolean p1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->mDaemon:Z

    .line 557
    return-object p0
.end method

.method setNameFormat(Ljava/lang/String;)Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;
    .locals 0
    .param p1, "mNameFormat"    # Ljava/lang/String;

    .line 542
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->mNameFormat:Ljava/lang/String;

    .line 543
    return-object p0
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;
    .locals 0
    .param p1, "mThreadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 533
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->mThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 534
    return-object p0
.end method
