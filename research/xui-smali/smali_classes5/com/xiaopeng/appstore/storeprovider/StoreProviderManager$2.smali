.class Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$2;
.super Ljava/lang/Object;
.source "StoreProviderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->queryAppGroupsAsync(Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

.field final synthetic val$appGroupTypes:[I

.field final synthetic val$listener:Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;[I)V
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
            "val$appGroupTypes"
        }
    .end annotation

    .line 500
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$2;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$2;->val$listener:Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;

    iput-object p3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$2;->val$appGroupTypes:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$2;->val$listener:Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$2;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$2;->val$appGroupTypes:[I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->queryAppGroups([I)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;->onRequestFinish(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;)V

    .line 504
    return-void
.end method
