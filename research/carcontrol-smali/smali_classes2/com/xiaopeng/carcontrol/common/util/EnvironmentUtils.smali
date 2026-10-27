.class public Lcom/xiaopeng/carcontrol/common/util/EnvironmentUtils;
.super Ljava/lang/Object;
.source "EnvironmentUtils.java"


# static fields
.field public static final SECRET_DEPLOY:Ljava/lang/String; = "uJ91amJeLtZeKs4C"

.field public static final SECRET_PUB:Ljava/lang/String; = "JxXtZ6XLgIsRng35"

.field public static final SECRET_TEST:Ljava/lang/String; = "uJ91amJeLtZeKs4C"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppSecret()Ljava/lang/String;
    .locals 2

    .line 11
    sget-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    const-string v1, "https://xmart.xiaopeng.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    const-string v1, "https://xmart-eu.xiaopeng.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    const-string v1, "https://xmart.deploy-test.xiaopeng.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "uJ91amJeLtZeKs4C"

    if-eqz v0, :cond_1

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const-string v0, "JxXtZ6XLgIsRng35"

    return-object v0
.end method
