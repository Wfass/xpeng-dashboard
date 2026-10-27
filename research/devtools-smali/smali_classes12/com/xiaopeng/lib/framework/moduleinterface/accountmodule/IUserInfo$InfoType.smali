.class public final enum Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;
.super Ljava/lang/Enum;
.source "IUserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

.field public static final enum CHANGED:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

.field public static final enum UPDATE:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    const-string v1, "CHANGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->CHANGED:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    .line 38
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    const-string v1, "UPDATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->UPDATE:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->CHANGED:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->UPDATE:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;
    .locals 1

    .line 30
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;
    .locals 1

    .line 30
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    return-object v0
.end method
