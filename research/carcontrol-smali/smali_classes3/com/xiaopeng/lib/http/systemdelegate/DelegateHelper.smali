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

    const-string v0, "content://com.xiaopeng.system.delegate"

    .line 11
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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "ids",
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 26
    sget-object v1, Lcom/xiaopeng/lib/http/IrdetoUtils;->TOKEN_ALL:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "buildTokenDataAll"

    goto :goto_0

    :cond_1
    const-string p1, "buildTokenDataAC"

    .line 32
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 33
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 36
    sget-object p2, Lcom/xiaopeng/lib/http/systemdelegate/DelegateHelper;->DELEGATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const-string p1, "result"

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
