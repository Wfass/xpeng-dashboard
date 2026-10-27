.class public final enum Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;
.super Ljava/lang/Enum;
.source "IAppResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdatePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

.field public static final enum ASYNC:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

.field public static final enum LOCAL:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

.field public static final enum SYNC:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;


# instance fields
.field final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 146
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;->LOCAL:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    .line 150
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    const-string v1, "SYNC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;->SYNC:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    .line 154
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    const-string v1, "ASYNC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;->ASYNC:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    .line 142
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;->LOCAL:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;->SYNC:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;->ASYNC:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput p3, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;->mId:I

    .line 164
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;
    .locals 1

    .line 142
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;
    .locals 1

    .line 142
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;

    return-object v0
.end method


# virtual methods
.method public id()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;->mId:I

    return v0
.end method
