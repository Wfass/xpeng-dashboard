.class Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$1;
.super Ljava/lang/Object;
.source "StoreProviderManagerWarpper.java"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->queryOperationApps_new([Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appGroupCallback:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$1;->val$appGroupCallback:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryFinish(Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    .locals 3
    .param p1, "resp"    # Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;

    .line 573
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    .line 579
    .local v0, "respObj":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$1;->val$appGroupCallback:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->access$200(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;->onCallback(Landroid/util/SparseArray;)V

    .end local v0    # "respObj":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    goto :goto_1

    .line 575
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$1;->val$appGroupCallback:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;->onCallback(Landroid/util/SparseArray;)V

    .line 581
    :goto_1
    return-void
.end method
