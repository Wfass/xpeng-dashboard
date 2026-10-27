.class final Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$Holder;
.super Ljava/lang/Object;
.source "TokenRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$1;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
