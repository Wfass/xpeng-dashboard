.class Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;
.super Lcom/xiaopeng/screen/ScreenTaskListener;
.source "ScreenManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    .line 254
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    invoke-direct {p0}, Lcom/xiaopeng/screen/ScreenTaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "screenId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    const-string v0, "ScreenManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityChanged screenId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &property:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/screen/ScreenTaskListener;->onActivityChanged(ILjava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->access$000(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 279
    .local v0, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getDisplayId()I

    move-result v1

    .line 281
    .local v1, "lastScreenId":I
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v2

    .line 282
    .local v2, "lastList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->access$400(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->setDisplayId(I)V

    .line 283
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->access$400(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->setTopActivityInfo(Ljava/util/List;)V

    .line 285
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    invoke-virtual {v3, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getActivityInfoList(I)Ljava/util/List;

    move-result-object v3

    .line 286
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->setDisplayId(I)V

    .line 287
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->setTopActivityInfo(Ljava/util/List;)V

    .line 288
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    invoke-static {v4, v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->access$500(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V

    .line 290
    .end local v1    # "lastScreenId":I
    .end local v2    # "lastList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->access$200(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;)V

    .line 291
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->access$300(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;)V

    .line 292
    return-void
.end method

.method public onEventChanged(IILjava/lang/String;)V
    .locals 3
    .param p1, "screenId"    # I
    .param p2, "event"    # I
    .param p3, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    const-string v0, "ScreenManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventChanged screenId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/screen/ScreenTaskListener;->onEventChanged(IILjava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getActivityInfoList(I)Ljava/util/List;

    move-result-object v0

    .line 262
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->access$000(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 263
    .local v1, "changeInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->setDisplayId(I)V

    .line 265
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->setTopActivityInfo(Ljava/util/List;)V

    .line 266
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    invoke-static {v2, v1, p2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->access$100(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;I)V

    .line 268
    :cond_0
    const/16 v2, 0x403

    if-ne p2, v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->access$200(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;)V

    .line 270
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->access$300(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;)V

    .line 272
    :cond_1
    return-void
.end method
