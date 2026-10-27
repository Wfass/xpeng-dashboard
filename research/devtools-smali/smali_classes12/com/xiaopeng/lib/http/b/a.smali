.class public Lcom/xiaopeng/lib/http/b/a;
.super Ljava/lang/Object;
.source "DelegateHelper.java"


# static fields
.field private static final Vh:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "content://com.xiaopeng.system.delegate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/b/a;->Vh:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    .line 19
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 20
    return-object v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 26
    sget-object v1, Lcom/xiaopeng/lib/http/d;->UL:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    const-string p1, "buildTokenDataAll"

    goto :goto_0

    .line 29
    :cond_1
    const-string p1, "buildTokenDataAC"

    .line 32
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 36
    sget-object p2, Lcom/xiaopeng/lib/http/b/a;->Vh:Landroid/net/Uri;

    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 37
    if-nez p0, :cond_2

    .line 38
    return-object v0

    .line 40
    :cond_2
    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
