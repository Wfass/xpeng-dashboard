.class public final Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;
.super Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueTable;
.source "CarControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/provider/CarControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Quick"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LEFT_CHARGE_PORT:Ljava/lang/String; = "left_charge_port"

.field public static final LEFT_CHARGE_PORT_STATE:Ljava/lang/String; = "left_charge_port_state"

.field public static final MIRROR_FOLD:Ljava/lang/String; = "mirror_fold"

.field public static final MIRROR_FOLD_STATE:Ljava/lang/String; = "mirror_fold_state"

.field public static final OPEN_REAR_TRUNK:Ljava/lang/String; = "open_rear_trunk"

.field public static final RESET_CHARGE_PORT:Ljava/lang/String; = "reset_charge_port"

.field public static final RIGHT_CHARGE_PORT:Ljava/lang/String; = "right_charge_port"

.field public static final RIGHT_CHARGE_PORT_STATE:Ljava/lang/String; = "right_charge_port_state"

.field public static final TRAILER_HOOK_SW:Ljava/lang/String; = "trailer_hook_sw"

.field public static final TRAILER_MODE_SW:Ljava/lang/String; = "trailer_mode_sw"

.field private static final sNameValueCache:Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.xiaopeng.carcontrol/quick"

    .line 307
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->CONTENT_URI:Landroid/net/Uri;

    .line 309
    new-instance v1, Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;

    const-string v2, "GET_quick"

    const-string v3, "PUT_quick"

    invoke-direct {v1, v0, v2, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->sNameValueCache:Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueTable;-><init>()V

    return-void
.end method

.method public static getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cr",
            "name",
            "def"
        }
    .end annotation

    .line 358
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 360
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catch_0
    return p2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cr",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 345
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 347
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 349
    :catch_0
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value not found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cr",
            "name",
            "def"
        }
    .end annotation

    .line 336
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 338
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolver",
            "name"
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->sNameValueCache:Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 371
    sget-object v0, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cr",
            "name",
            "value"
        }
    .end annotation

    .line 367
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cr",
            "name",
            "value"
        }
    .end annotation

    .line 354
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolver",
            "name",
            "value"
        }
    .end annotation

    .line 332
    sget-object v0, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->sNameValueCache:Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
