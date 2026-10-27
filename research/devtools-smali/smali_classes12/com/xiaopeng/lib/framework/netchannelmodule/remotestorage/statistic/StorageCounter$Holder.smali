.class final Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$Holder;
.super Ljava/lang/Object;
.source "StorageCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 267
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$1;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;
    .locals 1

    .line 266
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    return-object v0
.end method
