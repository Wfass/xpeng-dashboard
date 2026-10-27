.class public final enum Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;
.super Ljava/lang/Enum;
.source "SyncStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

.field public static final enum ADD:Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

.field public static final enum CONFLICT:Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

.field public static final enum DELETE:Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

.field public static final enum SYNC:Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

.field public static final enum UPDATE:Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;


# instance fields
.field private final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 6
    new-instance v0, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    const-string v1, "SYNC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;->SYNC:Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    .line 8
    new-instance v1, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    const-string v3, "ADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;->ADD:Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    .line 10
    new-instance v3, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    const-string v5, "UPDATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;->UPDATE:Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    .line 12
    new-instance v5, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;->DELETE:Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    .line 14
    new-instance v7, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    const-string v9, "CONFLICT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;->CONFLICT:Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 4
    sput-object v9, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;->$VALUES:[Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

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
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;->status:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 4
    const-class v0, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;
    .locals 1

    .line 4
    sget-object v0, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;->$VALUES:[Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    invoke-virtual {v0}, [Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncStatus;->status:I

    return v0
.end method
