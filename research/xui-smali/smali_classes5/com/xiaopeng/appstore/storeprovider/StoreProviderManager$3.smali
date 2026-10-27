.class Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$3;
.super Ljava/lang/Object;
.source "StoreProviderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->queryOperationAppsAsync(Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

.field final synthetic val$listener:Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;

.field final synthetic val$requests:[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;


# direct methods
.method constructor <init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener",
            "val$requests"
        }
    .end annotation

    .line 537
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$3;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$3;->val$listener:Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;

    iput-object p3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$3;->val$requests:[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 540
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$3;->val$listener:Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$3;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$3;->val$requests:[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->queryOperationApps([Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;->onRequestFinish(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;)V

    .line 541
    return-void
.end method
