.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants;
.super Ljava/lang/Object;
.source "BizConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;
    }
.end annotation


# static fields
.field public static final APPID_CDU:Ljava/lang/String; = "xp_xmart_car"

.field public static final AUTHORIZATION_XPSIGN:Ljava/lang/String; = "xpSign"

.field public static final CAR_SECRET:Ljava/lang/String;

.field public static final CLIENT_ENCODING_NONE:Ljava/lang/String; = "None"

.field public static final CLIENT_TYPE_CDU:Ljava/lang/String; = "3"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field public static final ENCRYPTION_TYPE_IRDETO:I = 0x1

.field public static final ENCRYPTION_TYPE_NONE:I = 0x0

.field public static final HEADER_APP_ID:Ljava/lang/String; = "XP-Appid"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "XP-Authorization"

.field public static final HEADER_CLIENT:Ljava/lang/String; = "XP-Client"

.field public static final HEADER_CLIENT_ENCODING:Ljava/lang/String; = "XP-Client-Encoding"

.field public static final HEADER_CLIENT_TYPE:Ljava/lang/String; = "XP-Client-Type"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_ENCRYPTION_TYPE:Ljava/lang/String; = "XP-Encryption-Type"

.field public static final HEADER_NONCE:Ljava/lang/String; = "XP-Nonce"

.field public static final HEADER_PREFIX:Ljava/lang/String; = "XP-"

.field public static final HEADER_SIGNATURE:Ljava/lang/String; = "XP-Signature"

.field public static final HEADER_UID:Ljava/lang/String; = "XP-Uid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pi()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/lib/utils/a/b;->oZ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "dj5pyz4qpamfg9c1"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "ghepbrwmgcispjja"

    :goto_1
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants;->CAR_SECRET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
