.class public final enum Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;
.super Ljava/lang/Enum;
.source "IAppResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

.field public static final enum ERROR:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

.field public static final enum NOT_AUTH:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

.field public static final enum NOT_AVAILABLE:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

.field public static final enum NOT_REGISTER:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

.field public static final enum OK:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;


# instance fields
.field final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 171
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    const-string v1, "NOT_REGISTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;->NOT_REGISTER:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    .line 175
    new-instance v1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    const-string v3, "NOT_AUTH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;->NOT_AUTH:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    .line 179
    new-instance v3, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    const-string v5, "NOT_AVAILABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;->NOT_AVAILABLE:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    .line 183
    new-instance v5, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    const-string v7, "OK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;->OK:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    .line 187
    new-instance v7, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;->ERROR:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 167
    sput-object v9, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput p3, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 167
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;
    .locals 1

    .line 167
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;

    return-object v0
.end method


# virtual methods
.method public id()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;->mId:I

    return v0
.end method
