.class public abstract Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;
.super Landroidx/room/RoomDatabase;
.source "OperationKeyValueDatabase.java"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    }
    exportSchema = false
    version = 0x1
.end annotation


# static fields
.field private static final SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "xpKeyValue"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract operationKeyValueDao()Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;
.end method
