.class final Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$Holder;
.super Ljava/lang/Object;
.source "SecureTokenRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$1;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
