.class public final enum Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;
.super Ljava/lang/Enum;
.source "IUserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

.field public static final enum DRIVER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

.field public static final enum OWNER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

.field public static final enum TEMP:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

.field public static final enum TENANT:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

.field public static final enum USER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    const-string v1, "TEMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->TEMP:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    .line 18
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    const-string v1, "OWNER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->OWNER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    .line 20
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    const-string v1, "USER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->USER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    .line 22
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    const-string v1, "TENANT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->TENANT:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    .line 24
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    const-string v1, "DRIVER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->DRIVER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->TEMP:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->OWNER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->USER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->TENANT:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->DRIVER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 14
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;
    .locals 1

    .line 14
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    return-object v0
.end method
