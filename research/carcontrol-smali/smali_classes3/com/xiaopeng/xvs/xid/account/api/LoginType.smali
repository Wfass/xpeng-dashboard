.class public final enum Lcom/xiaopeng/xvs/xid/account/api/LoginType;
.super Ljava/lang/Enum;
.source "LoginType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/xvs/xid/account/api/LoginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/xvs/xid/account/api/LoginType;

.field public static final enum TYPE_LOGIN_CHECK:Lcom/xiaopeng/xvs/xid/account/api/LoginType;

.field public static final enum TYPE_LOGIN_FACE_ID:Lcom/xiaopeng/xvs/xid/account/api/LoginType;

.field public static final enum TYPE_LOGIN_QR_SCAN:Lcom/xiaopeng/xvs/xid/account/api/LoginType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcom/xiaopeng/xvs/xid/account/api/LoginType;

    const-string v1, "TYPE_LOGIN_QR_SCAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xvs/xid/account/api/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xvs/xid/account/api/LoginType;->TYPE_LOGIN_QR_SCAN:Lcom/xiaopeng/xvs/xid/account/api/LoginType;

    .line 7
    new-instance v1, Lcom/xiaopeng/xvs/xid/account/api/LoginType;

    const-string v3, "TYPE_LOGIN_FACE_ID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/xvs/xid/account/api/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/xvs/xid/account/api/LoginType;->TYPE_LOGIN_FACE_ID:Lcom/xiaopeng/xvs/xid/account/api/LoginType;

    .line 9
    new-instance v3, Lcom/xiaopeng/xvs/xid/account/api/LoginType;

    const-string v5, "TYPE_LOGIN_CHECK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/xvs/xid/account/api/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/xvs/xid/account/api/LoginType;->TYPE_LOGIN_CHECK:Lcom/xiaopeng/xvs/xid/account/api/LoginType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaopeng/xvs/xid/account/api/LoginType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/xiaopeng/xvs/xid/account/api/LoginType;->$VALUES:[Lcom/xiaopeng/xvs/xid/account/api/LoginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/xvs/xid/account/api/LoginType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lcom/xiaopeng/xvs/xid/account/api/LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/xvs/xid/account/api/LoginType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/xvs/xid/account/api/LoginType;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/xvs/xid/account/api/LoginType;->$VALUES:[Lcom/xiaopeng/xvs/xid/account/api/LoginType;

    invoke-virtual {v0}, [Lcom/xiaopeng/xvs/xid/account/api/LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xvs/xid/account/api/LoginType;

    return-object v0
.end method
