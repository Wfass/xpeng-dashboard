.class Lorg/chromium/net/ProxyChangeListener$b;
.super Ljava/lang/Object;
.source "ProxyChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/ProxyChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static final e:Lorg/chromium/net/ProxyChangeListener$b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 91
    new-instance v0, Lorg/chromium/net/ProxyChangeListener$b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3, v1, v3, v2}, Lorg/chromium/net/ProxyChangeListener$b;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/net/ProxyChangeListener$b;->e:Lorg/chromium/net/ProxyChangeListener$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/chromium/net/ProxyChangeListener$b;->a:Ljava/lang/String;

    .line 70
    iput p2, p0, Lorg/chromium/net/ProxyChangeListener$b;->b:I

    .line 71
    iput-object p3, p0, Lorg/chromium/net/ProxyChangeListener$b;->c:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lorg/chromium/net/ProxyChangeListener$b;->d:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Landroid/net/ProxyInfo;)Lorg/chromium/net/ProxyChangeListener$b;
    .locals 0

    .line 67
    invoke-static {p0}, Lorg/chromium/net/ProxyChangeListener$b;->b(Landroid/net/ProxyInfo;)Lorg/chromium/net/ProxyChangeListener$b;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/net/ProxyInfo;)Lorg/chromium/net/ProxyChangeListener$b;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    .line 81
    new-instance v2, Lorg/chromium/net/ProxyChangeListener$b;

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    .line 82
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, v4, v0, p0}, Lorg/chromium/net/ProxyChangeListener$b;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method
