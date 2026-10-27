.class public Lcom/alibaba/sdk/android/man/MANPageHitBuilder;
.super Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public build()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-super {p0}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setDurationOnPage(J)Lcom/alibaba/sdk/android/man/MANPageHitBuilder;
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setDurationOnPage(J)Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;

    .line 46
    const-string p1, "2"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitPageEvent(Ljava/lang/String;)V

    .line 47
    return-object p0
.end method

.method public bridge synthetic setDurationOnPage(J)Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/man/MANPageHitBuilder;->setDurationOnPage(J)Lcom/alibaba/sdk/android/man/MANPageHitBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setProperties(Ljava/util/Map;)Lcom/alibaba/sdk/android/man/MANPageHitBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/sdk/android/man/MANPageHitBuilder;"
        }
    .end annotation

    .line 68
    invoke-super {p0, p1}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 69
    const-string p1, "2"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitPageEvent(Ljava/lang/String;)V

    .line 70
    return-object p0
.end method

.method public bridge synthetic setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/man/MANPageHitBuilder;->setProperties(Ljava/util/Map;)Lcom/alibaba/sdk/android/man/MANPageHitBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/man/MANPageHitBuilder;
    .locals 0

    .line 57
    invoke-super {p0, p1, p2}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 58
    const-string p1, "2"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitPageEvent(Ljava/lang/String;)V

    .line 59
    return-object p0
.end method

.method public bridge synthetic setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/man/MANPageHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/man/MANPageHitBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setReferPage(Ljava/lang/String;)Lcom/alibaba/sdk/android/man/MANPageHitBuilder;
    .locals 1

    .line 32
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/ToolKit;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-super {p0, p1}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setReferPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;

    .line 34
    const-string p1, "2"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitPageEvent(Ljava/lang/String;)V

    .line 36
    :cond_0
    return-object p0
.end method

.method public bridge synthetic setReferPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/man/MANPageHitBuilder;->setReferPage(Ljava/lang/String;)Lcom/alibaba/sdk/android/man/MANPageHitBuilder;

    move-result-object p1

    return-object p1
.end method
