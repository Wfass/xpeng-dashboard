.class final Lcom/acrcloud/rec/utils/ACRCloudException$1;
.super Ljava/util/HashMap;
.source "ACRCloudException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acrcloud/rec/utils/ACRCloudException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {p0, v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudException$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const/16 v0, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "No Result"

    invoke-virtual {p0, v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudException$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const/16 v0, 0x7d6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Engine type error"

    invoke-virtual {p0, v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudException$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const/16 v0, 0x7d2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "JSON error"

    invoke-virtual {p0, v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudException$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const/16 v0, 0xbb8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "HTTP error"

    invoke-virtual {p0, v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudException$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const/16 v0, 0x7d5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "HTTP timeout error"

    invoke-virtual {p0, v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudException$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const/16 v0, 0x7d4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Create none fingerprint: may be mute audio"

    invoke-virtual {p0, v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudException$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const/16 v0, 0x7d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Record error: may be no recording permission"

    invoke-virtual {p0, v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudException$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const/16 v0, 0x7d1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Init error"

    invoke-virtual {p0, v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudException$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const/16 v0, 0x7da

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UnKnow error"

    invoke-virtual {p0, v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudException$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const/16 v0, 0x7d3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "No init error"

    invoke-virtual {p0, v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudException$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const/16 v0, 0x7d8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Resample audio error"

    invoke-virtual {p0, v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudException$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const/16 v0, 0xfa0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Parameter error"

    invoke-virtual {p0, v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudException$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
