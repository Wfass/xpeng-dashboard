.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/WhiteListHelper;
.super Ljava/lang/Object;
.source "WhiteListHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WhiteListHelper"

.field private static final WHITE_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "com.xiaopeng.xpdvr"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/WhiteListHelper;->WHITE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowRemoveThreshold(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .line 25
    const-string v0, "WhiteListHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowRemoveThreshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 28
    return v1

    .line 31
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/WhiteListHelper;->WHITE_LIST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 32
    .local v4, "pkgName":Ljava/lang/String;
    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 33
    const/4 v0, 0x1

    return v0

    .line 31
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    :cond_2
    return v1
.end method
