.class public final enum Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;
.super Ljava/lang/Enum;
.source "IRemoteStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CATEGORY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;

.field public static final enum CAN:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;

.field public static final enum CDU:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;

    const/4 v1, 0x0

    const-string v2, "CDU"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;->CDU:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;

    .line 26
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;

    const/4 v2, 0x1

    const-string v3, "CAN"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;->CAN:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;

    sget-object v3, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;->CDU:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;

    aput-object v3, v0, v1

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;->CAN:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;
    .locals 1

    .line 18
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;

    return-object v0
.end method
