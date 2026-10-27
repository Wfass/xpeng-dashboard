.class public Lazq;
.super Lbah;
.source "KugouLoginUidCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lazq$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lbah;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lazq$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lazq;-><init>()V

    return-void
.end method

.method public static a()Lazq;
    .locals 1

    .line 20
    sget-object v0, Lazq$a;->a:Lazq;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "kugou_login_uid_cache"

    return-object v0
.end method
