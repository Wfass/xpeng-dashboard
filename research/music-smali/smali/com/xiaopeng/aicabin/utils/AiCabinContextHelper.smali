.class public Lcom/xiaopeng/aicabin/utils/AiCabinContextHelper;
.super Ljava/lang/Object;
.source "AiCabinContextHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 1

    const-string v0, "com.xiaopeng.aicabinservice"

    .line 1
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/aicabin/utils/AiCabinContextHelper;->getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private static getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 1

    const/4 v0, 0x2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0
.end method
