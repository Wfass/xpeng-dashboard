.class Landroid/support/rastermill/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"

# interfaces
.implements Landroid/support/rastermill/data/HttpUrlFetcher$HttpUrlConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/data/HttpUrlFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultHttpUrlConnectionFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/rastermill/data/HttpUrlFetcher$1;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Landroid/support/rastermill/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 137
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method
