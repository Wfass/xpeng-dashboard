.class public Lbam;
.super Lbah;
.source "NeteaseLoginUidCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbam$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lbah;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbam$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lbam;-><init>()V

    return-void
.end method

.method public static a()Lbam;
    .locals 1

    .line 20
    sget-object v0, Lbam$a;->a:Lbam;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "netease_login_uid_cache"

    return-object v0
.end method
