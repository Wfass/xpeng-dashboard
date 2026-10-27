.class Lcom/amap/api/services/a/am$1;
.super Ljava/lang/Thread;
.source "DistrictSearchCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/am;->searchDistrictAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/am;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/am;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/amap/api/services/a/am$1;->a:Lcom/amap/api/services/a/am;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 155
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/amap/api/services/district/DistrictResult;

    invoke-direct {v1}, Lcom/amap/api/services/district/DistrictResult;-><init>()V

    .line 157
    iget-object v2, p0, Lcom/amap/api/services/a/am$1;->a:Lcom/amap/api/services/a/am;

    invoke-static {v2}, Lcom/amap/api/services/a/am;->a(Lcom/amap/api/services/a/am;)Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/district/DistrictResult;->setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V

    .line 159
    const/4 v2, 0x4

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/services/a/am$1;->a:Lcom/amap/api/services/a/am;

    invoke-static {v3}, Lcom/amap/api/services/a/am;->b(Lcom/amap/api/services/a/am;)Lcom/amap/api/services/district/DistrictResult;

    move-result-object v3
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    if-eqz v3, :cond_0

    .line 161
    :try_start_1
    new-instance v1, Lcom/amap/api/services/core/AMapException;

    invoke-direct {v1}, Lcom/amap/api/services/core/AMapException;-><init>()V

    invoke-virtual {v3, v1}, Lcom/amap/api/services/district/DistrictResult;->setAMapException(Lcom/amap/api/services/core/AMapException;)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    goto :goto_1

    .line 163
    :catch_1
    move-exception v1

    goto :goto_2

    .line 169
    :cond_0
    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 170
    iget-object v1, p0, Lcom/amap/api/services/a/am$1;->a:Lcom/amap/api/services/a/am;

    invoke-static {v1}, Lcom/amap/api/services/a/am;->c(Lcom/amap/api/services/a/am;)Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 172
    const-string v2, "result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 174
    iget-object v1, p0, Lcom/amap/api/services/a/am$1;->a:Lcom/amap/api/services/a/am;

    invoke-static {v1}, Lcom/amap/api/services/a/am;->d(Lcom/amap/api/services/a/am;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_3

    .line 169
    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_4

    .line 165
    :catch_2
    move-exception v3

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    .line 166
    :goto_1
    :try_start_2
    const-string v4, "DistrictSearch"

    const-string v5, "searchDistrictAnsyThrowable"

    invoke-static {v1, v4, v5}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 170
    iget-object v1, p0, Lcom/amap/api/services/a/am$1;->a:Lcom/amap/api/services/a/am;

    invoke-static {v1}, Lcom/amap/api/services/a/am;->c(Lcom/amap/api/services/a/am;)Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 172
    const-string v2, "result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 174
    iget-object v1, p0, Lcom/amap/api/services/a/am$1;->a:Lcom/amap/api/services/a/am;

    invoke-static {v1}, Lcom/amap/api/services/a/am;->d(Lcom/amap/api/services/a/am;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_3

    .line 163
    :catch_3
    move-exception v3

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    .line 164
    :goto_2
    :try_start_3
    invoke-virtual {v3, v1}, Lcom/amap/api/services/district/DistrictResult;->setAMapException(Lcom/amap/api/services/core/AMapException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 170
    iget-object v1, p0, Lcom/amap/api/services/a/am$1;->a:Lcom/amap/api/services/a/am;

    invoke-static {v1}, Lcom/amap/api/services/a/am;->c(Lcom/amap/api/services/a/am;)Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 172
    const-string v2, "result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 174
    iget-object v1, p0, Lcom/amap/api/services/a/am$1;->a:Lcom/amap/api/services/a/am;

    invoke-static {v1}, Lcom/amap/api/services/a/am;->d(Lcom/amap/api/services/a/am;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 175
    :goto_3
    iget-object v1, p0, Lcom/amap/api/services/a/am$1;->a:Lcom/amap/api/services/a/am;

    invoke-static {v1}, Lcom/amap/api/services/a/am;->d(Lcom/amap/api/services/a/am;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    :cond_1
    nop

    .line 178
    return-void

    .line 169
    :catchall_1
    move-exception v1

    :goto_4
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 170
    iget-object v2, p0, Lcom/amap/api/services/a/am$1;->a:Lcom/amap/api/services/a/am;

    invoke-static {v2}, Lcom/amap/api/services/a/am;->c(Lcom/amap/api/services/a/am;)Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 172
    const-string v4, "result"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 173
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 174
    iget-object v2, p0, Lcom/amap/api/services/a/am$1;->a:Lcom/amap/api/services/a/am;

    invoke-static {v2}, Lcom/amap/api/services/a/am;->d(Lcom/amap/api/services/a/am;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 175
    iget-object v2, p0, Lcom/amap/api/services/a/am$1;->a:Lcom/amap/api/services/a/am;

    invoke-static {v2}, Lcom/amap/api/services/a/am;->d(Lcom/amap/api/services/a/am;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    :cond_2
    throw v1
.end method
