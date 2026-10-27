.class public final synthetic Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$3pwWVESGWOu_MHrYMeW1AilfQF4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$3pwWVESGWOu_MHrYMeW1AilfQF4;->f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    iput p2, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$3pwWVESGWOu_MHrYMeW1AilfQF4;->f$1:I

    iput-boolean p3, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$3pwWVESGWOu_MHrYMeW1AilfQF4;->f$2:Z

    iput-object p4, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$3pwWVESGWOu_MHrYMeW1AilfQF4;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$3pwWVESGWOu_MHrYMeW1AilfQF4;->f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$3pwWVESGWOu_MHrYMeW1AilfQF4;->f$1:I

    iget-boolean v2, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$3pwWVESGWOu_MHrYMeW1AilfQF4;->f$2:Z

    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$3pwWVESGWOu_MHrYMeW1AilfQF4;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->lambda$getAssembleInfoList$2(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;IZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
