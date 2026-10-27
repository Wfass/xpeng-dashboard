.class public Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/appstore/storeprovider/Configuration;
    .locals 1

    .line 43
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/Configuration;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/Configuration;-><init>(Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;)V

    return-object v0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 39
    return-object p0
.end method
