.class final Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$Holder;
.super Ljava/lang/Object;
.source "LogFileCleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$1;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;
    .locals 1

    .line 82
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;

    return-object v0
.end method
