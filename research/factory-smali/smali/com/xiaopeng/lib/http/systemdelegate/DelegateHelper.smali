.class public Lcom/xiaopeng/lib/http/systemdelegate/DelegateHelper;
.super Ljava/lang/Object;
.source "DelegateHelper.java"


# static fields
.field private static final CALLING_DATA:Ljava/lang/String; = "data"

.field private static final CALLING_RESULT:Ljava/lang/String; = "result"

.field private static final CONTENT_PATH_IRDETO_TOKEN_AC:Ljava/lang/String; = "buildTokenDataAC"

.field private static final CONTENT_PATH_IRDETO_TOKEN_ALL:Ljava/lang/String; = "buildTokenDataAll"

.field private static final DELEGATE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "content://com.xiaopeng.system.delegate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/systemdelegate/DelegateHelper;->DELEGATE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callBuildTokenDataThroughSystemDelegate(Landroid/content/Context;[Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "data"    # [B

    .line 19
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 20
    return-object v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 26
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/xiaopeng/lib/http/IrdetoUtils;->TOKEN_ALL:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    const-string v2, "buildTokenDataAll"

    .local v2, "method":Ljava/lang/String;
    goto :goto_0

    .line 29
    .end local v2    # "method":Ljava/lang/String;
    :cond_1
    const-string v2, "buildTokenDataAC"

    .line 32
    .restart local v2    # "method":Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "data"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 36
    sget-object v4, Lcom/xiaopeng/lib/http/systemdelegate/DelegateHelper;->DELEGATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 37
    if-nez v3, :cond_2

    .line 38
    return-object v0

    .line 40
    :cond_2
    const-string v0, "result"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
