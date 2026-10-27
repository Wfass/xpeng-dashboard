.class Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;
.super Ljava/lang/Object;
.source "XAppBIHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;->topAppChanged(ILcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

.field final synthetic val$screenId:I

.field final synthetic val$topInfo:Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;ILcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->val$screenId:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->val$topInfo:Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;->access$000(Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->val$screenId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 31
    .local v0, "lastList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 33
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;->access$000(Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->val$screenId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;->access$100(Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->val$screenId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 37
    .local v1, "lastMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v1, :cond_1

    .line 38
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 39
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;->access$100(Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->val$screenId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->val$topInfo:Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v2

    .line 43
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v3, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 45
    .local v5, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 46
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_2
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v5    # "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    goto :goto_0

    .line 51
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 52
    .local v5, "old":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 54
    .local v6, "startTime":J
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, "appName":Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->val$screenId:I

    .line 55
    invoke-static {v8, v5, v9, v10, v11}, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil;->sendSharedAppUseDataLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    .end local v5    # "old":Ljava/lang/String;
    .end local v6    # "startTime":J
    .end local v8    # "appName":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 60
    :cond_5
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;->access$000(Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler$1;->val$screenId:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    return-void
.end method
