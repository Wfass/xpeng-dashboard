.class public Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil;
.super Ljava/lang/Object;
.source "XAppBiLogUtil.java"


# static fields
.field private static final APP_USE_DATA_ID:Ljava/lang/String; = "B003"

.field private static final APP_USE_DENIED_DATA_ID:Ljava/lang/String; = "B004"

.field private static final APP_USE_DENIED_PAGE_ID:Ljava/lang/String; = "P10317"

.field private static final APP_USE_PAGE_ID:Ljava/lang/String; = "P00002"

.field private static final MODULE_APP_USE:Ljava/lang/String; = "appstore"

.field private static final TAG:Ljava/lang/String; = "XAppBiLogUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendAppUseDataLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "startTime"    # Ljava/lang/String;
    .param p3, "endTime"    # Ljava/lang/String;

    .line 48
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil;->sendSharedAppUseDataLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public static sendAppUseDeniedDataLog(IILjava/lang/String;)V
    .locals 2
    .param p0, "source"    # I
    .param p1, "deniedType"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil$1;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 26
    return-void
.end method

.method public static sendAppUseDeniedDataLog(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "source"    # I
    .param p1, "deniedType"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 29
    const-string v0, "XAppBiLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAppUseDeniedDataLog appName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &deniedType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "appstore"

    const-string v1, "P10317"

    const-string v2, "B004"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLogFactory;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/biutil/BiLog;

    move-result-object v0

    .line 32
    .local v0, "bilog":Lcom/xiaopeng/biutil/BiLog;
    const-string v1, "source"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "result"

    invoke-virtual {v0, v1, p3}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->submit(Lcom/xiaopeng/biutil/BiLog;)V

    .line 37
    return-void
.end method

.method public static sendSharedAppUseDataLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "startTime"    # Ljava/lang/String;
    .param p3, "endTime"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .line 60
    const-string v0, "XAppBiLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAppUseDataLog appName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &endTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "appstore"

    const-string v1, "P00002"

    const-string v2, "B003"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLogFactory;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/biutil/BiLog;

    move-result-object v0

    .line 63
    .local v0, "bilog":Lcom/xiaopeng/biutil/BiLog;
    const-string v1, "start_time"

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "end_time"

    invoke-virtual {v0, v1, p3}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v1, -0x1

    if-le p4, v1, :cond_0

    .line 68
    const-string v1, "type"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->submit(Lcom/xiaopeng/biutil/BiLog;)V

    .line 71
    return-void
.end method
