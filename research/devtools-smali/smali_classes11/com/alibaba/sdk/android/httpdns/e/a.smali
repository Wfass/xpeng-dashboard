.class public Lcom/alibaba/sdk/android/httpdns/e/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/e/a$a;
    }
.end annotation


# instance fields
.field private q:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xc

    new-array v2, v1, [C

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a;->q:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SessionTrackMgr"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/httpdns/e/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/e/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/httpdns/e/a;
    .locals 1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/e/a$a;->b()Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/a;->a()Lcom/alibaba/sdk/android/httpdns/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/c/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/a;->a()Lcom/alibaba/sdk/android/httpdns/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/c/a;->getNetworkType()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    return-object v0

    :pswitch_0
    const-string v0, "4g"

    return-object v0

    :pswitch_1
    const-string v0, "3g"

    return-object v0

    :pswitch_2
    const-string v0, "2g"

    return-object v0

    :pswitch_3
    const-string v0, "wifi"

    return-object v0

    :cond_0
    :pswitch_4
    const-string v0, "unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
