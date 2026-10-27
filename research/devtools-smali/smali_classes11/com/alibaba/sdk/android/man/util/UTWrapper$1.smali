.class final Lcom/alibaba/sdk/android/man/util/UTWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/man/util/UTWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/beacon/Beacon$Config;",
            ">;)V"
        }
    .end annotation

    .line 93
    const-string v0, "UTWrapper"

    const-string v1, "beacon onUpdate"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/man/util/MANLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->access$000()Lcom/alibaba/sdk/android/beacon/Beacon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->access$000()Lcom/alibaba/sdk/android/beacon/Beacon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/beacon/Beacon;->stop()V

    .line 99
    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/beacon/Beacon$Config;

    .line 101
    const-string v1, "___man_service___"

    iget-object v2, v0, Lcom/alibaba/sdk/android/beacon/Beacon$Config;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/alibaba/sdk/android/beacon/Beacon$Config;->value:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v0, "disabled"

    const-string v2, "ut"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-string v0, "UTWrapper"

    const-string v1, "disable ut"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/man/util/MANLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->access$102(Z)Z

    goto :goto_1

    .line 107
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->access$102(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_2
    :goto_1
    goto :goto_0

    .line 114
    :cond_3
    goto :goto_2

    .line 112
    :catch_0
    move-exception p1

    .line 113
    const-string v0, "UTWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_2
    return-void
.end method
