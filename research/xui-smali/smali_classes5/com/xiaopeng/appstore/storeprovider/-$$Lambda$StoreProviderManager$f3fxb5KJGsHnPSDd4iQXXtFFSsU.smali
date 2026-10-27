.class public final synthetic Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$f3fxb5KJGsHnPSDd4iQXXtFFSsU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

.field private final synthetic f$1:[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$f3fxb5KJGsHnPSDd4iQXXtFFSsU;->f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$f3fxb5KJGsHnPSDd4iQXXtFFSsU;->f$1:[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$f3fxb5KJGsHnPSDd4iQXXtFFSsU;->f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$f3fxb5KJGsHnPSDd4iQXXtFFSsU;->f$1:[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;

    invoke-static {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->lambda$queryOperationApps$4(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    move-result-object v0

    return-object v0
.end method
