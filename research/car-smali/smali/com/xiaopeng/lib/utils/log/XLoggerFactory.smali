.class public Lcom/xiaopeng/lib/utils/log/XLoggerFactory;
.super Ljava/lang/Object;
.source "XLoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;
    }
.end annotation


# static fields
.field private static final PACKAGE_WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-string v0, "com.xiaopeng.data.uploader"

    const-string v1, "com.xiaopeng.device.communication"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory;->PACKAGE_WHITE_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkWhiteList(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/lib/utils/log/XLoggerFactory;->PACKAGE_WHITE_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    return-void

    .line 36
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u4e0d\u597d\u610f\u601d\uff0c\u4f60\u7684\u5305\u540d\u6ca1\u6709\u767b\u8bb0\uff0c\u8fd8\u4e0d\u80fd\u4f7f\u7528xlog\uff0c\u8bf7\u8054\u7cfbdengzr@xiaopeng.com"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createXLoggerDefault(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/log/XLogger;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/log/XLoggerFactory;->checkWhiteList(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib/utils/log/XLoggerFactory$1;)V

    invoke-virtual {v0}, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->build()Lcom/xiaopeng/lib/utils/log/XLogger;

    move-result-object v0

    return-object v0
.end method
